package com.hmw.open.web.app;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.impl.AppBusinessRecordServiceImpl;
import com.hmw.open.service.impl.CacheServiceImpl;
import com.hmw.open.web.app.request.bussinesscontroller.BusinessRecordDetailRequest;
import com.hmw.open.web.app.request.bussinesscontroller.OrderListRequest;

/**
 * 查看流水
 * 
 * @author dell
 *
 */
@Controller
@RequestMapping("/app")
public class AppBusinessRecordController {

	private final static Logger logger = Logger.getLogger(AppBusinessRecordServiceImpl.class);

	@Autowired
	AppBusinessRecordServiceImpl appBusinessRecordService;

	@Resource
	private CacheServiceImpl cacheService;
	/**
	 * 查看今日流水
	 * @param request
	 * @return
	 */
	@RequestMapping(value = { "/getBusinessEveryRecord" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult merchantSelectRefundRecord(HttpServletRequest request) {
		try {
			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			// 获取今日流水
			return appBusinessRecordService.merchantSelectRefundRecord(userVo);
		} catch (Exception e) {
			logger.error("商家查看今日流水error", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/**
	 * 查看历史流水
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = { "/getTotalBusinessRecord" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult totalBusinessRecord(HttpServletRequest request) {
		try {
			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			return appBusinessRecordService.getTotalBusinessRecord(userVo);
		} catch (Exception e) {
			logger.error("商家查看历史流水error", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	/**
	 * 查看历史流水详情
	 */
	@RequestMapping(value = { "/getBusinessRecordDetail" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult getBusinessRecordDetail(HttpServletRequest request,
			@RequestBody BusinessRecordDetailRequest businessRecordDetailRequest) {
		try {
			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			if (null == businessRecordDetailRequest.getOrderTime()
					|| "".equals(businessRecordDetailRequest.getOrderTime())) {
				logger.error("商家获取历史流水详情页面，入参错误，参数为：" + JSON.toJSONString(businessRecordDetailRequest), null);
				return BaseResult.fail(ErrorCode.IsNullRetCode, ErrorCode.IsNullRetInfo);
			}
			// 查看历史详情
			return appBusinessRecordService.getBusinessRecordDetail(businessRecordDetailRequest, userVo);
		} catch (Exception e) {
			logger.error("商家查看历史流水详情error", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/**
	 * 获得订单信息
	 * @param request
	 * @param orderListRequest
	 * @return
	 */
	@RequestMapping(value = { "/orderList" }, method = { RequestMethod.POST }, consumes={"application/json;charset=utf-8"})
	public @ResponseBody BaseResult getOrderList(HttpServletRequest request,
			@RequestBody OrderListRequest orderListRequest) {
		try {
			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			if (null == orderListRequest.getOpType() || "".equals(orderListRequest.getOpType())) {
				logger.error("商家获得订单信息页面，入参错误，参数为：" + JSON.toJSONString(orderListRequest), null);
				return BaseResult.fail(ErrorCode.IsNullRetCode, ErrorCode.IsNullRetInfo);
			}
			// 查看订单页面
			return appBusinessRecordService.getOrderList(orderListRequest, userVo);
		} catch (Exception e) {
			logger.error("商家查看订单页面error", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	/**
	 * 查看退款申请列表
	 * @param request
	 * @return
	 */
	@RequestMapping(value = {"/getRefundRecord"}, method={RequestMethod.POST})
	public @ResponseBody BaseResult getRefundRecord(HttpServletRequest request){
		try{
			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			
			return appBusinessRecordService.getRefundRecord(userVo);
		}catch (Exception e){
			logger.error("商家查看退款申请失败", e);
			return BaseResult.exception(e.getMessage());
		}
	}

}
