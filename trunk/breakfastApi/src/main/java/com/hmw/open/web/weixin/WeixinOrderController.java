package com.hmw.open.web.weixin;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.model.BfOrder;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.IBfOrderService;
import com.hmw.open.service.IOpCouponService;
import com.hmw.open.service.impl.CacheServiceImpl;
import com.hmw.open.service.impl.WeiXinOrderServiceImpl;
import com.hmw.open.web.weixin.request.ordercontroller.SaveOrderRequest;
import com.hmw.open.web.weixin.request.shopcontroller.OrderDetailRequest;
import com.hmw.open.web.weixin.response.shopcontroller.QueryHistoryOrder;

/**
 * 
 * @author zhulei
 * @time 2017-10-06 22点06
 */
@Controller
@RequestMapping("/weixin")
public class WeixinOrderController {

	private final static Logger logger = Logger.getLogger(WeixinOrderController.class);
	
	@Autowired
	private IBfOrderService bfOrderService;
	
	@Autowired
	private WeiXinOrderServiceImpl orderService;
	
	@Autowired
	private IOpCouponService opCouponService;
	
	@Resource
	private CacheServiceImpl cacheService;
	
	
	
	
	/**
	 * 根据订单号查询订单详情信息
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/queryOrderDetail" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult queryOrderDetail(HttpServletRequest request, @RequestBody OrderDetailRequest form) {
		try {
			if (null == form || StringUtil.isEmpty(form.getOrderNo())) {
				logger.error("根据订单号查询订单详情信息, 入参错误 ，参数为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
			}
			//根据订单号查询订单详情信息
			BaseResult baseResult = BaseResult.success();
			BfOrder order = new BfOrder();
			Wrapper<BfOrder> wrapper = new EntityWrapper<BfOrder>();
			wrapper.eq("order_no", form.getOrderNo());
//			wrapper.eq("order_status", Constant.ORDER_STATUS_2);
//			wrapper.orderBy("order_time", false); //下单时间倒序
			order = bfOrderService.selectOne(wrapper);
			if(order==null){
				logger.error("根据订单号查询订单详情信息为空！");
				return baseResult.fail("根据订单号查询订单详情信息为空！");
			}
			
			String orderDetail = order.getOrderDetail();
			baseResult.setData(order);
			return baseResult;
		} catch (Exception e) {
			logger.error("根据订单号查询订单详情信息 queryOrderDetail:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	
	/**
	 * 获取用户历史订单信息
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/queryOrderHistory" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult queryOrderHistory(HttpServletRequest request) {
		try {
			//获取用户历史订单信息业务逻辑
			BaseResult baseResult = BaseResult.success();
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			List<BfOrder> orders = new ArrayList<>();
			Wrapper<BfOrder> wrapper = new EntityWrapper<BfOrder>();
			wrapper.eq("user_id", userVo.getUserId());
			//wrapper.eq("order_status", Constant.ORDER_STATUS_2);
			wrapper.orderBy("order_time", false); //下单时间倒序
			orders = bfOrderService.selectList(wrapper);
	 		List<QueryHistoryOrder> historyOrders = new ArrayList<>();
			for (BfOrder bfOrder : orders) {
				QueryHistoryOrder queryHistoryOrder = new QueryHistoryOrder();
				queryHistoryOrder.setOrderStatus(bfOrder.getOrderStatus());
				queryHistoryOrder.setShopName(bfOrder.getShopName());
				queryHistoryOrder.setOrderNo(bfOrder.getOrderNo());
				queryHistoryOrder.setTotalMoney(bfOrder.getOrderMoney());
				queryHistoryOrder.setOrderDetail(bfOrder.getOrderDetail());
				queryHistoryOrder.setOrderTime(bfOrder.getOrderTime());
				historyOrders.add(queryHistoryOrder);
			}
			baseResult.setData(historyOrders);
			return baseResult;
		} catch (Exception e) {
			logger.error("获取用户历史订单信息 queryOrderHistory:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	
	/**
	 * 下单
	 * @param request
	 * @param form
	 * @return
	 */
	/*@RequestMapping(value = { "/saveOrder" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult saveOrder(HttpServletRequest request, @RequestBody SaveOrderRequest form) {
		try {
			
			BaseResult baseResult = BaseResult.success();
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			//获取用户订单信息业务逻辑
			baseResult=orderService.saveOrder(form, userVo);
			
			
			return baseResult;
		} catch (Exception e) {
			logger.error("获取用户历史订单信息 queryOrderHistory:", e);
			return BaseResult.exception(e.getMessage());
		}
	}*/
	
	
	
	/**
	 * 支付
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/pay" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult pay(HttpServletRequest request,HttpServletResponse response,@RequestBody SaveOrderRequest form) {
		try {
			BaseResult baseResult = BaseResult.success();
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			if (null == userVo ) {
				logger.error("用户不存在" );
				return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
			}
			logger.info("*****支付下单时参数是******套餐列表："+form.getPackProductList()+"单品列表："+form.getSingleProductList()+"商铺id:"+form.getShopId()+"总金额："+form.getTotalMoney());
			//先下单
			baseResult=orderService.saveOrder(form, userVo);
			String orderno = "";
			if("000000".equals(baseResult.getRetCode())){
				orderno = (String) baseResult.getData();
				if(StringUtils.isBlank(orderno)){
					logger.error("下单入库失败,获取不到订单号");
					return BaseResult.fail("下单入库失败,获取不到订单号");
				}
				logger.info("*****支付下单时参数订单号是******"+orderno);
			}else{
				logger.error("下单异常获取不到订单号");
				return BaseResult.fail("下单入库失败");
			}
			logger.info("*****支付时参数是******"+form.getCouponId()+",优惠券金额："+form.getCouponMoney()+"，订单号："+orderno);
			//获取用户订单信息业务逻辑
			baseResult=orderService.pay(form, userVo,orderno);
			
			// 支付成功，如果使用了op系统发放优惠券，调用op系统通知此优惠券已使用  lenjey add 2017-11-23
			if(baseResult != null && ErrorCode.SuccessRetCode.equals(baseResult.getRetCode())){
				if(form.getCouponId() !=null){
					opCouponService.useCouponCallback(form.getCouponId(), userVo);
				}
				
			}
			return baseResult;
		} catch (Exception e) {
			logger.error("下单时异常:", e);
			return BaseResult.fail("下单失败");
		}
	}
	
	/**
	 * 支付状态通知
	 * @param request
	 * @param form
	 * @return
	 * @throws Exception 
	 * @throws Exception 
	 */
	@RequestMapping(value = { "/noticePayStatus" }, method = { RequestMethod.POST })
	public void noticePayStatus(HttpServletRequest request,HttpServletResponse response) throws Exception{
		logger.error("开始调用支付状态通知接口");
		try {
			
			logger.info("*****支付状态通知时参数是******订单号是："+request.getParameter("outer_trade_no"));
			BaseResult baseResult = orderService.setOrderStatus(request);
			if(!(ErrorCode.SuccessRetCode).equals(baseResult.getRetCode())){
				logger.error(baseResult.getRetMsg()+",支付状态通知失败错误码是："+baseResult.getRetCode()+",订单号是："+request.getParameter("outer_trade_no")+"畅捷订单号是："+request.getParameter("inner_trade_no"));
				response.getWriter().write("fail");
			}else{
				 response.getWriter().write("success");
			}
			logger.info("*****支付状态通知结束******");
			
		} catch (Exception e) {
			 logger.error("接受畅捷通知异常", e);
			 response.getWriter().write("fail");
		}
	}

	/**
	 * 退款状态通知
	 * @param request
	 * @param form
	 * @return
	 * @throws Exception 
	 * @throws Exception 
	 */
	@RequestMapping(value = { "/noticeRefundStatus" }, method = { RequestMethod.POST })
	public void noticeRefundStatus(HttpServletRequest request,HttpServletResponse response) throws Exception{
		logger.error("开始调用退款状态通知接口");
		try {
			
			logger.info("*****退款状态通知时参数是******订单号是："+request.getParameter("outer_trade_no")+"退款状态："+request.getParameter("trade_status"));
			Wrapper<BfOrder> wrapper = new EntityWrapper<BfOrder>();
			wrapper.eq("order_no", request.getParameter("outer_trade_no"));
			BfOrder order = bfOrderService.selectOne(wrapper);
			if(order!=null){
				if("S".equals(request.getParameter("trade_status")) || "P".equals(request.getParameter("trade_status"))){
					if("S".equals(request.getParameter("trade_status"))){
						order.setOrderStatus(Constant.ORDER_STATUS_7);
					}
				}else if("F".equals(request.getParameter("trade_status")) ){
					order.setOrderStatus(Constant.ORDER_STATUS_6);
					//order.setRefundDetail((String) reObject.get("RetMsg"));
				}
				bfOrderService.update(order, wrapper);
			    response.getWriter().write("success");
			}else{
				response.getWriter().write("fail");
			}
			
			
			logger.info("*****退款状态通知结束******");
			
		} catch (Exception e) {
			 logger.error("接受畅捷通知异常", e);
			 response.getWriter().write("fail");
		}
	}


 
}
