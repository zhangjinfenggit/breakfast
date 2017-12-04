package com.hmw.open.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.hmw.open.common.constants.BusinessRecordErrorCode;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.common.utils.DateUtils;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.mapper.BfOrderDetailMapper;
import com.hmw.open.mapper.BfOrderMapper;
import com.hmw.open.mapper.BfRefundRecordMapper;
import com.hmw.open.mapper.BfShopMapper;
import com.hmw.open.model.BfBusinessRecordDayVo;
import com.hmw.open.model.BfOrderVo;
import com.hmw.open.model.BfOrderVos;
import com.hmw.open.model.BfOrdersVo;
import com.hmw.open.model.BfRefundRecordVo;
import com.hmw.open.model.BfShop;
import com.hmw.open.model.HistroySumRecordVo;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.web.app.request.bussinesscontroller.BusinessRecordDetailRequest;
import com.hmw.open.web.app.request.bussinesscontroller.OrderListRequest;

@Service
public class AppBusinessRecordServiceImpl {

	private final static Logger logger = Logger.getLogger(AppBusinessRecordServiceImpl.class);

	@Resource
	RedisTemplate<String, String> redisTemplate;

	@Autowired
	BfOrderDetailMapper bfOrderDetailMapper;
	
	@Autowired
	BfRefundRecordMapper bfRefundRecordMapper; 
	
	@Autowired
	BfOrderMapper bfOrderMapper;

	@Autowired
	BfShopMapper bfShopMapper;

	@Autowired
	CacheServiceImpl cacheService;

	/**
	 * 通过token获取商家的信息，然后通过传入当天的时间来获取今日的流水
	 * @param businessRecord
	 * @return
	 */
	public BaseResult merchantSelectRefundRecord(UserBaseInfoVo userVo) throws Exception {
		BaseResult baseResult = null;
		Map<String, Object> map = new HashMap<>();

		String phone = userVo.getPhone();

		BfShop selectShop = new BfShop();
		selectShop.setPhone(phone);
		// 查询商店
		BfShop shop = bfShopMapper.selectOne(selectShop);

		if (null == shop) {
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetCode, ErrorCode.NullPointerExceptionRetInfo);
		}

		// 商店Id
		Long shopId = shop.getId();
		// 获得当天的流水记录（逆序显示）
		List<BfOrderVo> orderList = bfOrderMapper.selectNowDayDetail(new EntityWrapper<Object>().eq("shop_id", shopId).ge("order_time", DateUtils.morning(new Date())).orderBy("id", false));
		// 表示当前订单为空
		if(null == orderList ){
			logger.error(BusinessRecordErrorCode.ORDER_ISEMPTY + "，当前订单为：" + JSON.toJSONString(orderList), null);
			return BaseResult.fail(ErrorCode.IsNullRetCode ,ErrorCode.IsNullRetInfo );
		}else{
			// 放入查询到的数据
			map.put("orderList", orderList);

			baseResult = BaseResult.success();
			// 返回查询的信息
			baseResult.setData(map);

			return baseResult;
		}

	}


	/**
	 * 查看历史流水（按日）
	 * 
	 * @param totalBusinessRecordRequest
	 * @return
	 * @throws Exception
	 */
	public BaseResult getTotalBusinessRecord(UserBaseInfoVo userVo) throws Exception {

		BaseResult baseResult = null;
		Map<String, Object> map = new HashMap<>();

		String phone = userVo.getPhone();

		BfShop selectShop = new BfShop();
		selectShop.setPhone(phone);

		BfShop shop = bfShopMapper.selectOne(selectShop);
		if (shop == null) {
			logger.error(ErrorCode.IsNullRetCode + "，当前商店为：" + JSON.toJSONString(shop), null);
			return BaseResult.fail( ErrorCode.NullPointerExceptionRetCode, ErrorCode.NullPointerExceptionRetInfo);
		}
		Long shopId = shop.getId();
		// 汇总
		BfBusinessRecordDayVo historysum = bfOrderMapper
				.getHistorySum(new EntityWrapper<Object>().eq("shop_id", shopId).le("order_time", DateUtils.morning(new Date())));

		// 历史流水(按照日进行分组，倒序)
		List<HistroySumRecordVo> histroySumRecordVos = bfOrderMapper
				.getHistorySumRecord(new EntityWrapper<Integer>().eq("shop_id", shopId).le("order_time", DateUtils.morning(new Date())));
		map.put("historySumIncome", historysum.getHistorySumIncome()); // 历史总收入
		map.put("historySumRefund", historysum.getHistorySumRefund()); // 历史退款
		map.put("historySumPartion", historysum.getHistorySumPartion()); // 平台分成
		map.put("total", historysum.getHistorySumIncome(). subtract(historysum.getHistorySumRefund().add(historysum.getHistorySumPartion()))); // 总收入
		map.put("histroySumRecord", histroySumRecordVos);// 详情

		baseResult = BaseResult.success();
		// 返回查询的信息
		baseResult.setData(map);
		return baseResult;
	}

	/**
	 * 查看历史详情（日）
	 * 
	 * @param businessRecordDetailRequest
	 * @return
	 * @throws Exception
	 */
	public BaseResult getBusinessRecordDetail(BusinessRecordDetailRequest businessRecordDetailRequest,
			UserBaseInfoVo userVo) throws Exception {
		BaseResult baseResult = null;
		Map<String, Object> map = new HashMap<>();

		String phone = null;
		phone = userVo.getPhone();

		BfShop selectShop = new BfShop();
		selectShop.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectShop);
		if (shop == null) {
			logger.error(ErrorCode.IsNullRetCode + "，当前商店为：" + JSON.toJSONString(shop), null);
			return BaseResult.fail( ErrorCode.NullPointerExceptionRetCode,ErrorCode.NullPointerExceptionRetInfo);
		}
		// 获得年月日
		String appointDay = businessRecordDetailRequest.getOrderTime().substring(0, 10);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(appointDay); // 转换成指定日期
		// 获得早上时间
		String morning = DateUtils.morning(date);
		// 获得晚上时间
		String night = DateUtils.night(date);

		// 历史流水（日）
		List<BfOrderVo> bfOrderVos = bfOrderMapper.getOrderDay(	new EntityWrapper<>().eq("shop_id", shop.getId()).ge("order_time", morning).le("order_time", night));
		
		// 
		BfOrderVos daySum = bfOrderMapper.getHistorySumDay(new EntityWrapper<Object>().eq("shop_id", shop.getId()).ge("order_time", morning).le("order_time", night));
		
		// 每天总收入
		map.put("sumIncome", daySum.getSumIncome());
		// 每天退款
		map.put("sumRefund", daySum.getSumRefund());
		// 每天平台分成
		map.put("sumPartion", daySum.getSumPartion());
		// 合计
		map.put("total", daySum.getSumIncome().subtract(daySum.getSumRefund().add(daySum.getSumPartion())));
		// 订单
		map.put("Order", bfOrderVos);

		baseResult = BaseResult.success();
		// 返回查询的信息
		baseResult.setData(map);
		return baseResult;
	}

	/**
	 * 查看订单列表
	 * 
	 * @param orderListRequest
	 * @param userVo
	 * @return
	 */
	public BaseResult getOrderList(OrderListRequest orderListRequest, UserBaseInfoVo userVo) throws Exception {
		BaseResult baseResult = null;
		Map<String, Object> map = new HashMap<>();

		String phone = userVo.getPhone();

		BfShop selectShop = new BfShop();
		selectShop.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectShop);
		if (shop == null) {
			logger.error(ErrorCode.IsNullRetCode + "，当前商店为：" + JSON.toJSONString(shop), null);
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetCode, ErrorCode.NullPointerExceptionRetInfo );
		}
		// 获得订单列表（通过商店id）
		List<BfOrdersVo> bfOrdersVos = bfOrderMapper.getOrderList( new EntityWrapper<>().eq("shop_id", shop.getId()).eq("order_status", orderListRequest.getOpType()).orderBy("id", false));

		map.put("Orders", bfOrdersVos);
		baseResult = BaseResult.success();
		// 返回查询的信息
		baseResult.setData(map);
		return baseResult;
	}
	
	/**
	 * 查看退款申请列表
	 * @param userVo
	 * @return
	 * @throws Exception
	 */
	public BaseResult getRefundRecord(UserBaseInfoVo userVo) throws Exception {
		BaseResult baseResult = null;
		Map<String, Object> map = new HashMap<>();

		String phone = userVo.getPhone();

		BfShop selectShop = new BfShop();
		selectShop.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectShop);
		if (shop == null) {
			logger.error(ErrorCode.IsNullRetCode + "，当前商店为：" + JSON.toJSONString(shop), null);
			return BaseResult.fail( ErrorCode.NullPointerExceptionRetCode, ErrorCode.NullPointerExceptionRetInfo);
		}
		
		// 获得当前商店中收到的退款订单
		List<BfRefundRecordVo> refundRecordList = bfRefundRecordMapper.getRefundRecord(new EntityWrapper<>().eq("ref.shop_id", shop.getId()));
		
		//以下的遍历因为协调不成功安卓端让加的，影响效率，优化可删除
		//1、没有拿到早餐，2、早餐质量问题，3、其他
		List<BfRefundRecordVo> list = new ArrayList<BfRefundRecordVo>();

		if(refundRecordList!=null){
			for (BfRefundRecordVo bfRefundRecordVo : refundRecordList) {
				if(bfRefundRecordVo.getType().equals("1")){
					bfRefundRecordVo.setRefundRemark("没有拿到早餐	"+bfRefundRecordVo.getRefundRemark());
				}else if(bfRefundRecordVo.getType().equals("2")){
					bfRefundRecordVo.setRefundRemark("早餐质量问题	"+bfRefundRecordVo.getRefundRemark());
				}else if(bfRefundRecordVo.getType().equals("3")){
					bfRefundRecordVo.setRefundRemark("其他	"+bfRefundRecordVo.getRefundRemark());
				}
				list.add(bfRefundRecordVo);
			}
		}
		map.put("refundRecordList", list);
		baseResult = BaseResult.success();
		// 返回查询的信息
		baseResult.setData(map);
		return baseResult;
	}

}