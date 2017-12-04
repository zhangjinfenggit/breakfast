package com.hmw.open.service.impl;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.math.RandomUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.pay.WeiXinPay;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.common.utils.BigDecimalUtil;
import com.hmw.open.common.utils.CompuUtils;
import com.hmw.open.common.utils.DateUtils;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.model.BfCommission;
import com.hmw.open.model.BfCommissionRule;
import com.hmw.open.model.BfCoupon;
import com.hmw.open.model.BfCouponProduce;
import com.hmw.open.model.BfOrder;
import com.hmw.open.model.BfOrderDetail;
import com.hmw.open.model.BfPackageProduct;
import com.hmw.open.model.BfShop;
import com.hmw.open.model.BfSingeProduct;
import com.hmw.open.model.BfUserWeixin;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.model.WechatTemplateMsg;
import com.hmw.open.model.vo.OrderDetailVo;
import com.hmw.open.model.vo.PackProductDetailVo;
import com.hmw.open.model.vo.SingleProductDetailVo;
import com.hmw.open.service.IBfCommissionRuleService;
import com.hmw.open.service.IBfCommissionService;
import com.hmw.open.service.IBfCouponProduceService;
import com.hmw.open.service.IBfCouponService;
import com.hmw.open.service.IBfOrderDetailService;
import com.hmw.open.service.IBfOrderService;
import com.hmw.open.service.IBfPackageProductService;
import com.hmw.open.service.IBfShopService;
import com.hmw.open.service.IBfSingeProductService;
import com.hmw.open.service.IBfUserWeixinService;
import com.hmw.open.service.WeixinPublicService;
import com.hmw.open.web.weixin.request.ordercontroller.PackProduct;
import com.hmw.open.web.weixin.request.ordercontroller.SaveOrderRequest;
import com.hmw.open.web.weixin.request.ordercontroller.SingleProduct;

/**
 * 
 * @author zhulei
 * @time 2017-10-07
 */
@Service
public class WeiXinOrderServiceImpl {

	private final static Logger logger = Logger.getLogger(WeiXinOrderServiceImpl.class);
	
	@Autowired
	IBfCouponProduceService bfCouponProduceService;
	
	@Autowired
	IBfUserWeixinService bfUserWeixinService;
	
	@Autowired
	IBfCouponService bfCouponService;
	
	@Autowired
	IBfShopService bfShopService;
	
	@Autowired
	IBfPackageProductService bfPackageProductService;
	
	@Autowired
	IBfSingeProductService bfSingleProductService;
	
	@Autowired
	IBfOrderService bfOrderService;
	
	@Autowired
	IBfCommissionService commissionService;
	
	@Autowired
	IBfCommissionRuleService commissionRuleService;
	
	@Autowired
	IBfOrderDetailService bfOrderDetailService;
	
	@Autowired  
    private WeixinPublicService WeixinPublicService; 
	
	@Autowired  
    private IBfUserWeixinService userWeixinService;
	
	@Autowired
	private WeiXinCouponServiceImpl couponService;
	
	@Value("#{configProperties['wechat.pay.isOpenTest.totalMoney']}")
	private String isOpenTest;
	
	@Value("#{configProperties['wechat.pay.isOpenTest.orderMoney']}")
	private String testOrderMoney;
	
	
	/**
	 * 用户下单操作
	 */
	@Transactional
	public BaseResult saveOrder(SaveOrderRequest form,UserBaseInfoVo userVo) throws Exception{
		logger.debug("参数：" + JSON.toJSONString(form), null);
		
		BaseResult baseResult = BaseResult.success();
		Boolean havePack=true;
		Boolean haveSingle=true;
		
		
		if (null == form ||form.getShopId()==null||form.getTotalMoney()==null) {
			logger.error("存在空参数" );
			return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
		}
		if(form.getTotalMoney().floatValue()<=0){
			logger.error("总金额小于0" );
			return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
		}
		

		BfShop shop = bfShopService.selectById(form.getShopId());
		if(shop == null){
			logger.error("找不到shop" );
			return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
		}
		

		if(form.getPackProductList() ==null ){
			havePack=false;
		}
		else if(form.getPackProductList().isEmpty())
		{
			havePack=false;
		}
		if(form.getSingleProductList() == null ){
			haveSingle=false;
		}
		else if(form.getSingleProductList().isEmpty()){
			haveSingle=false;
		}
		
		
		if( !(havePack||haveSingle) ){
			logger.error("没有任何产品" );
			return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
		}
		
		
		OrderDetailVo orderDetailVo = new OrderDetailVo();
		
		BigDecimal  totalMoney=new BigDecimal(0);
		
		
		//验证套餐id ，单价是否一致
		if(havePack){
			for(PackProduct formPackProduct:form.getPackProductList()){
				BfPackageProduct packProduct = bfPackageProductService.selectById(formPackProduct.getId());
				if(packProduct == null){
					logger.error("找不到套餐:"+formPackProduct.getId() );
					return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
				}
				if(packProduct.getPackageMoney().floatValue() <=0 || 
						packProduct.getPackageMoney().floatValue() != formPackProduct.getPackageMoney().floatValue() ){
					logger.error("套餐价格不对:"+formPackProduct.getId() );
					return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
				}
				
				float subSum = formPackProduct.getPackageMoney().floatValue()*formPackProduct.getAmount();
				totalMoney=totalMoney.add(new BigDecimal(subSum));
				
				PackProductDetailVo packProductDetailVo = new PackProductDetailVo();
				packProductDetailVo.setName(packProduct.getPackageName());
				packProductDetailVo.setAmount(formPackProduct.getAmount().intValue());
				packProductDetailVo.setPackageMoney(packProduct.getPackageMoney());
				orderDetailVo.getPackProductList().add(packProductDetailVo);
				String ids=packProduct.getSingleId();
				if(StringUtils.isBlank(ids))
				{
					continue;
				}
				List<String> idList=Arrays.asList(ids.split(","));
				for(String id:idList){
					BfSingeProduct single = bfSingleProductService.selectById(id);
					SingleProductDetailVo singleProductDetailVo = new SingleProductDetailVo();
					singleProductDetailVo.setName(single.getSingleName());
					singleProductDetailVo.setAmount(single.getSingleAmount());
					singleProductDetailVo.setSingleMoney(single.getSingleMoney());
					packProductDetailVo.getSingleProductList().add(singleProductDetailVo);
					
				}
			}
		}
		
		//验证单品id ，单价是否一致
		if(haveSingle){
			for( SingleProduct formSingleProduct:form.getSingleProductList()){
				 BfSingeProduct singeProduct = bfSingleProductService.selectById(formSingleProduct.getId());
				if(singeProduct == null){
					logger.error("找不到单品:"+formSingleProduct.getId() );
					return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
				}
				if(singeProduct.getSingleMoney().floatValue() <=0 || 
						singeProduct.getSingleMoney().floatValue() != formSingleProduct.getSingleMoney().floatValue() ){
					logger.error("单品价格不对:"+formSingleProduct.getId() );
					return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
				}
				
				float subSum = formSingleProduct.getSingleMoney().floatValue()*formSingleProduct.getAmount();
				totalMoney=totalMoney.add(new BigDecimal(subSum));
				
				SingleProductDetailVo singleProductDetailVo = new SingleProductDetailVo();
				singleProductDetailVo.setName(singeProduct.getSingleName());
				singleProductDetailVo.setAmount(formSingleProduct.getAmount().intValue());
				singleProductDetailVo.setSingleMoney(singeProduct.getSingleMoney());
				orderDetailVo.getSingleProductList().add(singleProductDetailVo);
			}
		}
		
		//验证单子上的总金额 = 每个产品的金额*数量 的总和是否一致
		if(totalMoney.floatValue() != form.getTotalMoney().floatValue()){
			logger.error("单子的金额错误" +"，用户手机号："+userVo.getPhone()+"，用户id:"+userVo.getUserId());
			return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
		}
		
		
		
		//todo
		//插入单子详情表，拼写单子详情字段和id列表
		//先插入套餐订单详情表中
		if(havePack){
			for(PackProduct formPackProduct:form.getPackProductList()){
				BfPackageProduct packProduct = bfPackageProductService.selectById(formPackProduct.getId());
				if(packProduct == null){
					logger.error("找不到套餐:"+formPackProduct.getId()+"，用户手机号："+userVo.getPhone()+"，用户id:"+userVo.getUserId() );
					return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
				}
				BfOrderDetail orderDetail = new BfOrderDetail();
				orderDetail.setProductId(formPackProduct.getId());
				orderDetail.setProdcutName(packProduct.getName());
				orderDetail.setType(Constant.ORDER_TYPE_2);
				orderDetail.setAmount(formPackProduct.getAmount().intValue());
				orderDetail.setCreateTime(new Date());
				bfOrderDetailService.insert(orderDetail);
			}
		}
		//插入单品信息在订单详情表中
		if(haveSingle){
			for( SingleProduct formSingleProduct:form.getSingleProductList()){
				 BfSingeProduct singeProduct = bfSingleProductService.selectById(formSingleProduct.getId());
				if(singeProduct == null){
					logger.error("找不到单品:"+formSingleProduct.getId()+"，用户手机号："+userVo.getPhone()+"，用户id:"+userVo.getUserId() );
					return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
				}
				BfOrderDetail orderDetail = new BfOrderDetail();
				orderDetail.setProductId(formSingleProduct.getId());
				orderDetail.setProdcutName(singeProduct.getSingleName());
				orderDetail.setType(Constant.ORDER_TYPE_1);
				orderDetail.setAmount(formSingleProduct.getAmount().intValue());
				orderDetail.setCreateTime(new Date());
				bfOrderDetailService.insert(orderDetail);
			}
		}
		//下单入库
		baseResult = setOrderIn(form, userVo,shop,orderDetailVo);
		logger.error("*********本地库下单完成后是：********"+baseResult.getData());
		return baseResult;
	}

    /**
     * 
     * 下单入库，置订单状态为待支付
     * @param form
     * @param userVo
     * @param shop
     * @param orderDetailVo
     * @return
     * @author zhouyuan18523
     * 
     * 
     */
	
	
	private BaseResult setOrderIn(SaveOrderRequest form, UserBaseInfoVo userVo, BfShop shop, OrderDetailVo orderDetailVo) {
		//TODO 下单订单号规则：精确到毫秒,待定
		BaseResult baseResult = BaseResult.success();
		String orderNo = "N"+DateUtils.getString40(new Date())+RandomUtils.nextInt(1000);
		BfOrder order = new BfOrder();
		order.setOrderNo(orderNo);
		order.setOrderTime(new Date());//下单时间
		order.setShopId(form.getShopId());
		order.setShopName(shop.getName());
		order.setTakeAddress(shop.getAddress());//店铺地址
		order.setUserId(userVo.getUserId());
		order.setPhone(userVo.getPhone());
		order.setOrderStatus(Constant.ORDER_STATUS_1);//待支付
		//查询优惠券，并把优惠券状态置为已使用		//todo 校验订单号的合法性质：数据库存在，未支付，是该用户的
		//校验优惠券的合法性：不能过期，不能已经用，金额要跟库一致，是该用户的，金额要为正，不能大于订单金额。
		baseResult = setCouponStatus(form, userVo, baseResult, orderNo, order);
		if(!(ErrorCode.SuccessRetCode).equals(baseResult.getRetCode())){
			return baseResult;
		}
		order.setOrderDetail(JSON.toJSONString(orderDetailVo));
		if("1".equals(isOpenTest)){
			order.setOrderMoney(new BigDecimal(testOrderMoney));
		}
		bfOrderService.insert(order);
		logger.error("*********本地库下单完成订单号是：********"+orderNo);
		return baseResult.success(orderNo);
	}
	
	
    /**
     * 查询优惠券，并把优惠券状态置为已使用		
     * 校验优惠券的合法性：不能过期，不能已经用，金额要跟库一致，是该用户的，金额要为正，不能大于订单金额。
     * @param form
     * @param userVo
     * @param baseResult
     * @param orderNo
     * @param order
     * @return
     * 
     * @author zhouyuan18523
     */
	
	private BaseResult setCouponStatus(SaveOrderRequest form, UserBaseInfoVo userVo,
			BaseResult baseResult, String orderNo, BfOrder order) {
		logger.error("****setCouponStatus1***"+form.getCouponId());
		if(null==form.getCouponId()){
			logger.error("****setCouponStatus11***");
			order.setOrderMoney(form.getTotalMoney());
			return baseResult;
		}
		BfCoupon coupon = bfCouponService.selectById(form.getCouponId());
		logger.error("****setCouponStatus2***"+JSON.toJSONString(coupon));
		if (coupon != null ) {
			BigDecimal couponMoney = new BigDecimal(form.getCouponMoney());
			if(BigDecimalUtil.compareTo(coupon.getCouponMoney(), couponMoney)!= 0){
				logger.error("优惠券的金额错误;订单编号："+orderNo+"，用户手机号："+userVo.getPhone()+"，用户id:"+userVo.getUserId()+",优惠券id:"+form.getCouponId()+",表中优惠券金额："+coupon.getCouponMoney()+"前端传递优惠券金额"+couponMoney);
				return baseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
			}
			if((new SimpleDateFormat("yyyy-MM-dd" ).format(coupon.getOverdueTime())).compareTo(new SimpleDateFormat("yyyy-MM-dd" ).format(new Date())) < 0){
				logger.error("优惠券的金额错误;订单编号："+orderNo+"，用户手机号："+userVo.getPhone()+"，用户id:"+userVo.getUserId()+",优惠券id:"+form.getCouponId()+",表中优惠券日期"+new SimpleDateFormat("yyyy-MM-dd" ).format(coupon.getOverdueTime()));
				return baseResult.fail("该优惠券已过期不能使用");
		    }
			if(BigDecimalUtil.compareTo(couponMoney, form.getTotalMoney()) >= 0){
				logger.error("优惠券的金额错误;订单编号："+orderNo+"，用户手机号："+userVo.getPhone()+"，用户id:"+userVo.getUserId()+",优惠券id:"+form.getCouponId());
				return baseResult.fail("优惠券金额不能超过订单金额");
			}
			//更改优惠券状态为已使用
			coupon.setCouponStatus("2");
			coupon.setUpdateTime(new Date());
			bfCouponService.updateById(coupon);
			//更新优惠券任务表已使用数量数据
			if(!"5".equals(coupon.getType())){
				Long produceId = coupon.getCouponProduceId();
				if(null == produceId){
					logger.error("该优惠券属于非法数据,无法获取任务表中id;订单编号："+orderNo+"，用户手机号："+userVo.getPhone()+"，用户id:"+userVo.getUserId()+",优惠券id:"+form.getCouponId());
					return baseResult.fail("该优惠券属于非法数据无法使用");
				}
				BfCouponProduce couProduce = bfCouponProduceService.selectById(produceId);
				Integer userNumberInteger = couProduce.getUseNumber();
				if(null == userNumberInteger){
					couProduce.setUseNumber(0);
				}
				couProduce.setUseNumber(CompuUtils.sum(couProduce.getUseNumber(), 1));
				bfCouponProduceService.updateById(couProduce);
			}
			order.setOrderMoney(form.getTotalMoney());
			order.setCouponId(form.getCouponId());
			order.setCouponDeduction(couponMoney);
			order.setCouponDetail(coupon.getCouponMessage());
		}else{
			order.setOrderMoney(form.getTotalMoney());
		}
		return baseResult;
	}
	
	
	/**
	 * 调用畅捷预下单接口进行支付操作
	 * 封装接口必要数据，调用预下单接口
	 * 
	 * 
	 * @author zhouyuan18523
	 */
	@Transactional
	public BaseResult pay(SaveOrderRequest form,UserBaseInfoVo userVo,String orderno) throws Exception{
		logger.error("参数：" + JSON.toJSONString(form), null);
		BaseResult baseResult = BaseResult.success();
		if (null == userVo ) {
			logger.error("用户不存在" );
			return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
		}
		BigDecimal totalMoney = form.getTotalMoney();
		if(StringUtils.isNoneBlank(form.getCouponMoney())){
			BigDecimal couponMoney = new BigDecimal(form.getCouponMoney());
			totalMoney = totalMoney.subtract(couponMoney);
		}
		totalMoney=totalMoney.setScale(1, BigDecimal.ROUND_UP);
		WeiXinPay pay = new WeiXinPay();
		//根据userid查出openid
        Wrapper<BfUserWeixin> cacheWrapper = new EntityWrapper<BfUserWeixin>();
		cacheWrapper.eq("id", userVo.getUserId());
		BfUserWeixin user = userWeixinService.selectOne(cacheWrapper);
		String openid = user.getOpenid();
		if("1".equals(isOpenTest)){
			totalMoney = new BigDecimal(testOrderMoney);
		}
		String returnmsg = pay.orderPre(orderno, totalMoney.toString(), "早点"+orderno, "早点订单"+orderno,openid);
		JSONObject reObject = JSONObject.parseObject(returnmsg);
		if("SYSTEM_SUCCESS".equals(reObject.get("RetCode"))){
			baseResult.setData(reObject);
		}else{
			logger.info("畅捷预下单失败"+returnmsg);
			baseResult.fail("预下单失败");
		}
		logger.info("畅捷预下单返回参数：" + JSON.toJSONString(baseResult.getData()));
		return baseResult;
	}
	
	
	/**
	 * 畅捷支付回调之后处理订单表中订单状态
	 * 1、如果畅捷支付失败返回
	 * 2、查看通知金额与库中金额是否一致
	 * 3、计算平台抽成和盈亏
	 * 4、更新订单表数据
	 * 5、推送微信模板消息
	 * 6、支付成功后发送优惠券
	 * @param request
	 * @return
	 * @throws Exception
	 * @author zhouyuan18523
	 * 
	 */
	
	public BaseResult setOrderStatus(HttpServletRequest request) throws Exception{
		BaseResult baseResult = BaseResult.success();
		if(!"TRADE_SUCCESS".equals(request.getParameter("trade_status"))){
			return baseResult.fail("畅捷显示支付未成功");
		}
		Wrapper<BfOrder> wrapper = new EntityWrapper<BfOrder>();
		wrapper.eq("order_no", request.getParameter("outer_trade_no"));
		BfOrder order = bfOrderService.selectOne(wrapper);
		if(order!=null){
			BigDecimal orderMoney = order.getOrderMoney();
			if(null != order.getCouponDeduction()){
				orderMoney = BigDecimalUtil.sub(orderMoney, order.getCouponDeduction());
			}
			if(BigDecimalUtil.compareTo(orderMoney, new BigDecimal(request.getParameter("trade_amount"))) != 0){
				logger.info("**畅捷支付返回金额****"+request.getParameter("trade_amount")+",数据库中订单金额"+orderMoney);
			     return baseResult.fail("订单金额与库中金额不一致");	
			}
			order.setOrderStatus(Constant.ORDER_STATUS_2);
			//计算订单抽成和盈亏
			getProfitAndLoss(order);
			bfOrderService.update(order, wrapper);
			sendOrderSucMsg((order.getUserId()+""),request.getParameter("outer_trade_no"));
			//支付成功后发放优惠券
			couponService.recevieCoupon("2", order.getPhone());
		}else{
			return baseResult.fail("订单不存在");
		}
		return baseResult;
	}
	
	
    /**
     * 计算订单抽成和盈亏
     * 订单抽成计算规则：
     *     根据订单金额查看抽成表是否存在该订单金额区间
     *        存在就取抽成金额
     *        不存在就取默认抽成金额
     * 盈亏=抽成金额-优惠券金额
     * @param order
     * @author zhouyuan18523
     * 
     */
	
	private void getProfitAndLoss(BfOrder order) {
		BigDecimal orderMoey = order.getOrderMoney();
		//查询抽成表找出该笔订单抽成金额
		Wrapper<BfCommission> wrapperCom = new EntityWrapper<BfCommission>();
		List<BfCommission> bfCommissions = commissionService.selectList(wrapperCom);
		BigDecimal platformPartion = new BigDecimal(0);//平台抽成
		BigDecimal platformProfit = new BigDecimal(0);//平台盈亏
		if(null!= bfCommissions && bfCommissions.size()>0){
			for(BfCommission bfc:bfCommissions){
				if(BigDecimalUtil.compareTo(orderMoey, bfc.getSectionLeft()) >= 0 && BigDecimalUtil.compareTo(orderMoey, bfc.getSectionRight()) == -1){
					logger.info("查询出抽成表中该笔订单的抽成金额是:"+bfc.getExtractMoney()+",订单号是："+order.getOrderNo());
					platformPartion = bfc.getExtractMoney();
					break;
				}
			}
		}
		//如果抽成表中未找出抽成金额，则抽成金额取默认抽成金额
		if(BigDecimalUtil.compareTo(platformPartion, new BigDecimal(0)) == 0){
			Wrapper<BfCommissionRule> wrapperComRule = new EntityWrapper<BfCommissionRule>();
			wrapperComRule.eq("rule_key", "extract_default");
			BfCommissionRule bfCommissionRule = commissionRuleService.selectOne(wrapperComRule);
			platformPartion = bfCommissionRule.getRuleValue();
			logger.info("查询出默认rule抽成表该笔订单的抽成金额是:"+bfCommissionRule.getRuleValue()+",订单号是："+order.getOrderNo());
		}
		//根据抽成金额计算平台盈亏金额
		BigDecimal couponMoney = order.getCouponDeduction();
		if(null != couponMoney){
			platformProfit = BigDecimalUtil.sub(platformPartion, couponMoney);
		}else{
			platformProfit = platformPartion;
		}
		//更新订单表中数据
		order.setPlatformPartion(platformPartion);//平台抽成
		order.setPlatformProfit(platformProfit);//平台盈亏
	}
	
	/**
	 * 封装订单成功数据，发送订单消息
	 * @param userVo
	 * @throws Exception
	 * @throws UnsupportedEncodingException
	 * @author zhouyuan18523
	 * 
	 */
	
	public void sendOrderSucMsg(String userId,String orderno) throws Exception{
		Wrapper<BfOrder> wrapper = new EntityWrapper<BfOrder>();
		wrapper.eq("order_no", orderno);
		BfOrder order = bfOrderService.selectOne(wrapper);
		String  ordetailString = order.getOrderDetail();
		String msgContent = getOrderContent(order, ordetailString);
		long shopId = order.getShopId();
		BfShop shop = bfShopService.selectById(shopId);
		String url = "m.mrwater1.com/breakfastApi/baiduMap.html?longitude="+shop.getLongitude()+"&latitude="+shop.getLatitude();
		
		//推送消息模板
		Map<String,String> map = new HashMap<String, String>();
		map.put("first", "您好！您已成功购买早餐。订单号是："+orderno);
		map.put("keyword1", order.getShopName());
		map.put("keyword3", msgContent);
		map.put("keyword4", order.getOrderMoney()+"元");
		map.put("keyword2", DateUtils.getString20(order.getOrderTime()));
		map.put("remark", "到达取餐点后|给店家看此消息即可领取早餐！\n如需帮助请致电：18830358180\n点击查看商家位置↓↓");
		sendTemplate(java.net.URLEncoder.encode(map.toString(),"UTF-8"),java.net.URLEncoder.encode("wechat.order.success.templateId2","UTF-8"),java.net.URLEncoder.encode(userId,"UTF-8"),url);
		logger.info("*******map:****"+new String(map.toString().getBytes(),"UTF-8"));
		
	}

	/**
	 * 获得订单中详细内容
	 * @param order
	 * @param ordetailString
	 * @return
	 */
	private String getOrderContent(BfOrder order, String ordetailString) {
		String msgContent = null;
		logger.info("*****支付时订单信息是******"+ordetailString);
		OrderDetailVo orderDetailVo = JSON.parseObject(order.getOrderDetail(),new TypeReference<OrderDetailVo>(){});
		List<PackProductDetailVo> packProductList = orderDetailVo.getPackProductList();
		List<SingleProductDetailVo> singleProductList = orderDetailVo.getSingleProductList();
		StringBuffer packBuffer = new StringBuffer();
		if(packProductList!=null && packProductList.size()>0){
			for(int i=0;i<packProductList.size();i++){
				PackProductDetailVo pack = packProductList.get(i);
				packBuffer.append(pack.getName()+"*"+pack.getAmount());
				if(i != (packProductList.size()-1)){
					packBuffer.append("|");
				}
			}
		}
		StringBuffer singBuffer = new StringBuffer();
		if(singleProductList!=null && singleProductList.size()>0){
			for(int i=0;i<singleProductList.size();i++){
				SingleProductDetailVo single = singleProductList.get(i);
				singBuffer.append(single.getName()+"*"+single.getAmount());
				if(i != (singleProductList.size()-1)){
					singBuffer.append("|");
				}
			}
		}
		
		if(packBuffer!=null && packBuffer.length()>0){
			msgContent = packBuffer.toString();
			if(singBuffer!=null && singBuffer.length()>0){
				msgContent = packBuffer.toString()+"|"+singBuffer.toString();
			}
		}else{
			msgContent =singBuffer.toString();
		}
		return msgContent;
	}
	
	/**
	 * 封装消息数据
	 * @param map
	 * @param TemplateName
	 * @param userid
	 * @throws Exception
	 */
	public void sendTemplate(String map,String TemplateName,String userid,String url) throws Exception{  
		logger.warn("***************订单成功消息推送开始******************入参：map:"+map+",模板名称是："+TemplateName+"，用户编号是："+userid);
        TreeMap<String,TreeMap<String,String>> params = new TreeMap<String,TreeMap<String,String>>(); 
        Map<String,String> hsMap = StringUtil.mapStringToMap(java.net.URLDecoder.decode(map,"UTF-8"));
        for (Map.Entry<String,String> entry : hsMap.entrySet()) {  
        	 params.put(entry.getKey().replaceAll(" ", ""),WechatTemplateMsg.item(entry.getValue(), "#000000"));  
        	 logger.warn("*******消息模板封装的参数是**key******"+entry.getKey()+"***value=***"+entry.getValue());
        }  
        //根据userid查出openid
        Wrapper<BfUserWeixin> cacheWrapper = new EntityWrapper<BfUserWeixin>();
		cacheWrapper.eq("id", userid);
		BfUserWeixin user = userWeixinService.selectOne(cacheWrapper);
		String openid = user.getOpenid();
		//根据具体模板参数组装  
        logger.info("*****"+map+"**Tempalte:***"+TemplateName+"**openid***"+openid);
        WeixinPublicService.sendTemplate2(params,TemplateName,openid,url);
        logger.warn("***************订单成功消息推送结束******************");
       
     } 

}
