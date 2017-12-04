package com.hmw.open.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.pay.WeiXinPay;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.common.result.MerchantsInfoErrorCode;
import com.hmw.open.common.utils.DateUtils;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.mapper.BfOrderMapper;
import com.hmw.open.mapper.BfPackageProductMapper;
import com.hmw.open.mapper.BfShopMapper;
import com.hmw.open.mapper.BfSingeProductMapper;
import com.hmw.open.mapper.BfUserWeixinMapper;
import com.hmw.open.model.BfOrder;
import com.hmw.open.model.BfPackageProduct;
import com.hmw.open.model.BfShop;
import com.hmw.open.model.BfSingeProduct;
import com.hmw.open.model.BfUserWeixin;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.model.WechatTemplateMsg;
import com.hmw.open.service.IBfUserWeixinService;
import com.hmw.open.service.WeixinPublicService;
import com.hmw.open.web.app.request.merchantsinfocontroller.AddBankcardRequest;
import com.hmw.open.web.app.request.merchantsinfocontroller.OpenOrCloseGoodRequest;
import com.hmw.open.web.app.request.merchantsinfocontroller.OrderDealRequest;
import com.hmw.open.web.app.request.merchantsinfocontroller.openOrCloseShopRequest;
import com.hmw.open.web.app.response.merchantsinfocontroller.MerchantsInfoResponse;

/***
 * AppMerchantsInfoService
 * 
 * @author kongliufeng
 *
 */
@Service
public class AppMerchantsInfoServiceImpl {
	private final static Logger logger = Logger.getLogger(AppLoginServiceImpl.class);
	@Resource
	RedisTemplate<String, String> redisTemplate;

	@Autowired
	BfShopMapper bfShopMapper;

	@Autowired
	BfOrderMapper bfOrderMapper;

	@Autowired
	BfPackageProductMapper bfPackageProductMapper;

	@Autowired
	BfSingeProductMapper bfSingeProductMapper;

	@Autowired
	BfUserWeixinMapper bfUserWeixinMapper;

	@Autowired
	private WeixinPublicService weixinPublicService;

	@Autowired
	private IBfUserWeixinService userWeixinService;

	/***
	 * 获取商家信息
	 * 
	 * @param request
	 * @return
	 */
	public BaseResult getMerchantsInfo(UserBaseInfoVo userBaseInfoVo) throws Exception {
		BaseResult baseResult = null;
		MerchantsInfoResponse Response = new MerchantsInfoResponse();
		/*
		 * Wrapper<BfShop> wrapper = new EntityWrapper<BfShop>();
		 * wrapper.eq("phone", userBaseInfoVo.getPhone());
		 */

		BfShop shopInfo = null;
		// try {
		// String shopStr = redisTemplate.opsForValue().get(
		// Constant.REDIS_APP_SHOPINFO+ userBaseInfoVo.getShopId());
		// if (shopStr != null) {
		// //map = (Map<String, Object>) JSON.parse(product);
		// shopInfo = (BfShop) JSON.parseObject(shopStr, BfShop.class);
		// }
		// } catch (Exception e) {
		// logger.error("店铺信息取出缓存异常, AppMerchantsInfoServiceImpl
		// ：getMerchantsInfo" , e);
		// }
		//
		// if(shopInfo == null){
		BfShop selectShop = new BfShop();
		selectShop.setPhone(userBaseInfoVo.getPhone());
		shopInfo = bfShopMapper.selectOne(selectShop);
		// try{
		// redisTemplate.opsForValue().set(Constant.REDIS_APP_SHOPINFO+
		// userBaseInfoVo.getShopId(), JSON.toJSONString(shopInfo));
		// }catch (Exception e) {
		// logger.error("店铺信息放进缓存异常, AppMerchantsInfoServiceImpl
		// ：getMerchantsInfo" , e);
		// }

		// }
		if (shopInfo == null) {
			logger.error(MerchantsInfoErrorCode.MerchantsInfoNull);
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		} else {
			// 封装返回信息
			Response.setId(shopInfo.getId());
			Response.setName(shopInfo.getName());
			Response.setAddress(shopInfo.getAddress());
			Response.setPhone(shopInfo.getPhone());
			Response.setPhoto(shopInfo.getPhoto());
			Response.setPosition(shopInfo.getPosition());
			Response.setCardNo(shopInfo.getCardNo());
			Response.setCertifiedStatus(shopInfo.getCertifiedStatus());
		}

		baseResult = BaseResult.success();
		baseResult.setData(Response);
		return baseResult;
	}

	/***
	 * 订单处理：根据订单号获取订单信息，重置订单状态
	 * 
	 * @param form
	 * @return
	 */
	public BaseResult orderDeal(OrderDealRequest form, UserBaseInfoVo userVo) throws Exception {
		// 根据订单号获取订单信息
		/*
		 * Wrapper<BfOrder> wrapper = new EntityWrapper<BfOrder>();
		 * wrapper.eq("order_no", form.getOrderNo());
		 */
		//
		BfOrder selectOrder = new BfOrder();
		selectOrder.setOrderNo(form.getOrderNo());
		BfOrder order = bfOrderMapper.selectOne(selectOrder);

		// 获取用户的信息
		Long userId = order.getUserId();
		if (userId == null) {
			logger.error("用户Id为空！推送消息失败！ AppMerchantsInfoServiceImpl : orderDeal ");
		}
		// 重置订单状态码
		// 数据库中OrderStatus订单状态：1、待支付，2、已支付，3、已备餐，4、已完成，5、未退款，6、退款中，7、已退款'
		// OpType表示操作：1 备餐完成、2 取消订单、3领取、4同意退款、5 拒绝

		// 第一种：
		// 1、用户下单成功→订单到商家app新订单中→商家点击取消订单→后台直接走退款→向用户发送微信通知（此时此订单在商家我的订单中就看不到了）
		// 第二种：
		// 商家点击已领取→用户会收到已领取的微信通知（此时这一订单在商家app我的订单中所有位置都应该是看不到的）→此通知可以跳转到申请退款页面→用户发起申请退款后→订单出现在商家app：我的订单>退款申请中→
		// 商家点击同意，订单消失（后台发起退款）→商家拒绝，订单消失（不发起退款），发微信通知告诉用户退款申请被拒绝的消息

		// 根据OpType操作码，执行不同操作
		if (form.getOpType().equals(Constant.OPTYPE_1)) {// 备餐完成：更改订单状态码
			order.setOrderStatus(Constant.ORDER_STATUS_3);
			mealFinishedPushMsg(userId + "", order);
		} else if (form.getOpType().equals(Constant.OPTYPE_2)) {// 取消订单：更改订单状态码，并设置取消理由
			// 商家点击取消订单→后台直接走退款→向用户发送微信通知（此时此订单在商家我的订单中就看不到了）
			order.setOrderStatus(Constant.ORDER_STATUS_6);
			order.setCancleMessage(form.getCancleMessage());
			cancelOrderPushMsg(userId + "", order);
		} else if (form.getOpType().equals(Constant.OPTYPE_3)) {// 领取：更改订单状态码
			order.setOrderStatus(Constant.ORDER_STATUS_4);
			orderFinishedPushMsg(userId + "", order);
		} else if (form.getOpType().equals(Constant.OPTYPE_4)) {// 同意退款：更改订单状态码
			order.setOrderStatus(Constant.ORDER_STATUS_6);
			WeiXinPay pay = new WeiXinPay();
			String returnmsg = pay.nmg_api_refund(order);
			JSONObject reObject = JSONObject.parseObject(returnmsg);
			if ("S".equals(reObject.get("Status")) || "P".equals(reObject.get("Status"))) {
				if ("S".equals(reObject.get("Status"))) {
					order.setOrderStatus(Constant.ORDER_STATUS_7);
				}
				returnMoneyFinishedPushMsg(userId + "", order);
			} else if ("F".equals(reObject.get("Status"))) {
				order.setOrderStatus(Constant.ORDER_STATUS_6);
				order.setRefundDetail((String) reObject.get("RetMsg"));
			}
			returnMoneyFinishedPushMsg(userId + "", order);

		} else if (form.getOpType().equals(Constant.OPTYPE_5)) {// 拒绝：更改订单状态码，将订单状态更改为4，并设置拒绝理由
			order.setOrderStatus(Constant.ORDER_STATUS_4);
			order.setRefundDetail(form.getRefundDetail());
			returnMoneyRefusePushMsg(userId + "", order);
		}

		// 更新数据库
		bfOrderMapper.updateById(order);
		return BaseResult.success();
	}

	/***
	 * 添加银行卡 ： 根据token获取当前商家信息，再根据商家id添加银行卡信息（没有写对开户人和银行卡核对，没有银行接口）
	 * 
	 * @param form
	 * @return
	 */
	public BaseResult addBankcard(AddBankcardRequest form, UserBaseInfoVo userVo) throws Exception {
		// 验证是否开户人和银行卡 （无验证接口所以注释）
		String phone = userVo.getPhone();
		/*
		 * Wrapper<BfShop> wrapper = new EntityWrapper<BfShop>();
		 * wrapper.eq("phone", phone);
		 */

		BfShop selectShop = new BfShop();
		selectShop.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectShop);

		if (shop == null) {
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		}

		//// 根据商家id添加银行卡信息
		shop.setCardName(form.getCardName());
		shop.setCardNo(form.getCardNo());
		shop.setInfoStatus("3");
		// try{
		// redisTemplate.opsForValue().set(Constant.REDIS_APP_SHOPINFO+userVo.getShopId(),
		// null);
		// this.redisTemplate.opsForValue().set(Constant.REDIS_WX_SHOPLIST+shop.getSubwayId(),
		// null);
		// }catch(Exception e){
		//
		// logger.error("更新Redis中的店铺信息 Error ，AppMerchantsInfoServiceImpl ：
		// addBankcard", e);
		// }
		bfShopMapper.updateById(shop);
		return BaseResult.success();
	}

	/***
	 * 打烊或开店 ： 通过token获取商家信息，反置getBusinessStatus(1.营业中，2.打烊)字段
	 * 
	 * @param form
	 * @return
	 */
	public BaseResult openOrCloseShop(openOrCloseShopRequest form, UserBaseInfoVo userVo) throws Exception {
		// 根据token获取当前商家信息

		String phone = userVo.getPhone();
		/*
		 * Wrapper<BfShop> wrapper = new EntityWrapper<BfShop>();
		 * wrapper.eq("phone", phone);
		 */
		BfShop selectShop = new BfShop();
		selectShop.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectShop);

		// 查看当前状态，并更改
		if (shop.getBusinessStatus().equals("1")) {
			shop.setBusinessStatus("2");
		} else if (shop.getBusinessStatus().equals("2")) {
			shop.setBusinessStatus("1");
		}

		bfShopMapper.updateById(shop);

		// try {
		// redisTemplate.opsForValue().set(Constant.REDIS_APP_PRODUCT +
		// shop.getId(), null);
		// this.redisTemplate.opsForValue().set(Constant.REDIS_WX_SHOPLIST+shop.getSubwayId(),
		// null);
		// } catch (Exception e) {
		//
		// logger.error("商品信息缓存异常, 方法名为 ： setPackageProduct ", e);
		// throw new Exception();
		// }
		// try{
		//
		// redisTemplate.opsForValue().set(Constant.REDIS_APP_SHOPINFO+userVo.getShopId(),
		// null);
		//
		// }catch(Exception e){
		// logger.error("更新Redis中的店铺信息 Error ，AppMerchantsInfoServiceImpl ：
		// openOrCloseShop", e);
		// throw new Exception();
		// }
		return BaseResult.success();
	}

	/***
	 * 售罄或补货:根据operationCode操作标识码(1.表示操作售罄,2.表示操作补货),执行不同操作
	 * 根据type类型标识码(1.表示商品，2.表示套餐),对不同表操作
	 * 
	 * @param form
	 * @return
	 * @throws Exception
	 */
	public BaseResult openOrCloseGood(OpenOrCloseGoodRequest form, UserBaseInfoVo userVo) throws Exception {
		// 根据操作标识码(1.表示操作售罄,2.表示操作补货),执行不同操作
		if (form.getOperationCode() == 1) {
			// 根据类型标识码(1.表示商品，2.表示套餐),对不同表操作
			if (form.getType() == 2) {

				/*
				 * Wrapper<BfPackageProduct> wrapper = new
				 * EntityWrapper<BfPackageProduct>(); wrapper.eq("id",
				 * form.getId());
				 */

				BfPackageProduct selectBfPackageProduct = new BfPackageProduct();
				selectBfPackageProduct.setId(Long.parseLong(form.getId() + ""));
				BfPackageProduct packageProduct = bfPackageProductMapper.selectOne(selectBfPackageProduct);
				// 状态置为售罄
				packageProduct.setRealAmount(0);
				packageProduct.setPackStatus(2);
				// 更新
				bfPackageProductMapper.updateById(packageProduct);
			} else if (form.getType() == 1) {
				/*
				 * Wrapper<BfSingeProduct> wrapper = new
				 * EntityWrapper<BfSingeProduct>(); wrapper.eq("id",
				 * form.getId());
				 */

				BfSingeProduct selectBfSingeProduct = new BfSingeProduct();
				selectBfSingeProduct.setId(Long.parseLong(form.getId() + ""));
				BfSingeProduct singeProduct = bfSingeProductMapper.selectOne(selectBfSingeProduct);
				// 状态置为售罄
				singeProduct.setRealAmount(0);
				singeProduct.setStatus("2");
				// 更新
				bfSingeProductMapper.updateById(singeProduct);
			}
		} else if (form.getOperationCode() == 2) {
			// 根据类型标识码(1.表示商品，2.表示套餐),对不同表操作
			if (form.getType() == 2) {
				/*
				 * Wrapper<BfPackageProduct> wrapper = new
				 * EntityWrapper<BfPackageProduct>(); wrapper.eq("id",
				 * form.getId());
				 */
				BfPackageProduct selectBfPackageProduct = new BfPackageProduct();
				selectBfPackageProduct.setId(Long.parseLong(form.getId() + ""));
				BfPackageProduct packageProduct = bfPackageProductMapper.selectOne(selectBfPackageProduct);
				// 剩余数量置为预售数量,状态更新售卖中
				packageProduct.setRealAmount(packageProduct.getPackageAmount());
				packageProduct.setPackStatus(1);
				// 更新
				bfPackageProductMapper.updateById(packageProduct);
			} else if (form.getType() == 1) {
				/*
				 * Wrapper<BfSingeProduct> wrapper = new
				 * EntityWrapper<BfSingeProduct>(); wrapper.eq("id",
				 * form.getId());
				 */

				BfSingeProduct selectBfSingeProduct = new BfSingeProduct();
				selectBfSingeProduct.setId(Long.parseLong(form.getId() + ""));
				BfSingeProduct singeProduct = bfSingeProductMapper.selectOne(selectBfSingeProduct);
				// 剩余数量置为预售数量，状态更新售卖中
				singeProduct.setRealAmount(singeProduct.getSingleAmount());
				singeProduct.setStatus("1");
				// 更新
				bfSingeProductMapper.updateById(singeProduct);
			}
		}
		// 补货时更新缓存中的信息
		String phone = null;
		phone = userVo.getPhone();

		/*
		 * Wrapper<BfShop> wrapper = new EntityWrapper<BfShop>();
		 * wrapper.eq("phone", phone);
		 */
		BfShop selectShop = new BfShop();
		selectShop.setPhone(phone);

		BfShop shop = bfShopMapper.selectOne(selectShop);
		if (shop == null) {
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		}
		// try {
		// redisTemplate.opsForValue().set(Constant.REDIS_APP_PRODUCT +
		// shop.getId(), null);
		// } catch (Exception e) {
		// logger.error("商品信息缓存异常, 方法名为 ： setPackageProduct ", e);
		// throw new Exception();
		// }
		return BaseResult.success();
	}

	/**
	 * 消息推送的模板
	 * 
	 * @param map
	 * @param TemplateName
	 * @param userid
	 * @throws Exception
	 */
	public void sendTemplate(String map, String TemplateName, String userid, String reUrl) throws Exception {
		logger.warn("***************订单消息推送开始******************入参：map:" + map + ",模板名称是：" + TemplateName + "，用户编号是："
				+ userid);
		TreeMap<String, TreeMap<String, String>> params = new TreeMap<String, TreeMap<String, String>>();
		Map<String, String> hsMap = StringUtil.mapStringToMap(java.net.URLDecoder.decode(map, "UTF-8"));
		for (Map.Entry<String, String> entry : hsMap.entrySet()) {
			params.put(entry.getKey().replaceAll(" ", ""), WechatTemplateMsg.item(entry.getValue(), "#000000"));
			logger.warn("*******消息模板封装的参数是**key******" + entry.getKey() + "***value=***" + entry.getValue());
		}
		// 根据userid查出openid
		Wrapper<BfUserWeixin> cacheWrapper = new EntityWrapper<BfUserWeixin>();
		cacheWrapper.eq("id", userid);
		BfUserWeixin user = userWeixinService.selectOne(cacheWrapper);
		String openid = user.getOpenid();
		// 根据具体模板参数组装
		logger.info("*****" + map + "**Tempalte:***" + TemplateName + "**openid***" + openid);
		weixinPublicService.sendTemplate2(params, TemplateName, openid, reUrl);
		logger.warn("***************订单消息推送结束******************");

	}

	/**
	 * 已付款的消息推送
	 * 
	 * @param userid
	 * @param order
	 * @throws Exception
	 * @throws UnsupportedEncodingException
	 *//*
		 * private void paidPushMsg(String userid, BfOrder order) throws
		 * UnsupportedEncodingException, Exception {
		 * 
		 * // 推送消息模板 Map<String, Object> map = new HashMap<String, Object>();
		 * map.put("first", "您好！您已成功购买早餐。"); map.put("keyword1",
		 * order.getOrderNo());
		 * 
		 * map.put("keyword2", "商品名称"); map.put("keyword3",
		 * order.getOrderMoney() == null ? "" : order.getOrderMoney());
		 * map.put("keyword4", DateUtils.getString20(order.getOrderTime()));
		 * map.put("remark", "欢迎再次购买");
		 * sendTemplate(java.net.URLEncoder.encode(map.toString(), "UTF-8"),
		 * java.net.URLEncoder.encode("wechat.buy.success.templateId", "UTF-8"),
		 * java.net.URLEncoder.encode(userid, "UTF-8")); }
		 */

	/**
	 * 商家取消订单
	 * 
	 * @param userid
	 * @param order
	 * @throws Exception
	 * @throws UnsupportedEncodingException
	 */
	private void cancelOrderPushMsg(String userid, BfOrder order) throws UnsupportedEncodingException, Exception {

		// 推送消息模板
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("first",
				"很抱歉，商家取消了订单，取消的原因：" + (order.getCancleMessage() == null ? ">_<||| 走丢了！" : order.getCancleMessage()));
		map.put("storeName", order.getShopName() == null ? ">_<||| 走丢了！" : order.getShopName());
		map.put("orderId", order.getOrderNo() == null ? ">_<||| 走丢了！" : order.getOrderNo());
		map.put("orderType", "外卖");
		map.put("remark", "将在24小时内退款到账，请您留意。\n给您带来的不便请您谅解，如需重新点餐请点击↓↓\n（点击链接：进入选择店铺页面）");
		String reUrl = "http://m.mrwater1.com/breakfastApi/sel_shops.html";
		sendTemplate(java.net.URLEncoder.encode(map.toString(), "UTF-8"),
				java.net.URLEncoder.encode("wechat.salesmen.cancel.order.templateId", "UTF-8"),
				java.net.URLEncoder.encode(userid, "UTF-8"), reUrl);
	}

	/**
	 * 备餐完成
	 * 
	 * @param userid
	 * @param order
	 * @throws Exception
	 * @throws UnsupportedEncodingException
	 */
	private void mealFinishedPushMsg(String userid, BfOrder order) throws UnsupportedEncodingException, Exception {

		// 推送消息模板
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("first", "您好，您有一个订单商家已制作完成。");
		map.put("keyword1", order.getOrderNo() == null ? ">_<||| 走丢了！" : order.getOrderNo());
		map.put("keyword2", "备餐完成");
		map.put("keyword3", DateUtils.getString20(new Date()));
		map.put("remark",
				"到达取餐点后，给店家看此消息，早餐就归您了！\n" + "取餐码："
						+ (order.getOrderNo() == null ? ">_<||| 走丢了！" : order.getOrderNo().split("_")[1])
						+ "\n点击查看商家位置↓↓\n" + "（点击链接：显示商家地图位置）");
		String reUrl = "http://m.mrwater1.com/breakfastApi/baiduMap.html";
		sendTemplate(java.net.URLEncoder.encode(map.toString(), "UTF-8"),
				java.net.URLEncoder.encode("wechat.eat.finish.templateId", "UTF-8"),
				java.net.URLEncoder.encode(userid, "UTF-8"), reUrl);
	}

	/**
	 * 订单完成：（商家点击已领取）
	 * 
	 * @param userid
	 * @param order
	 * @throws Exception
	 * @throws UnsupportedEncodingException
	 */
	private void orderFinishedPushMsg(String userid, BfOrder order) throws UnsupportedEncodingException, Exception {

		// 推送消息模板
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("first", "你的订单已完成");
		map.put("keyword1", order.getOrderNo() == null ? ">_<||| 走丢了！" : order.getOrderNo());
		map.put("keyword2", DateUtils.getString20(new Date()));
		map.put("remark", "点击申请售后↓↓");
		String reUrl = "http://m.mrwater1.com/breakfastApi/apply_refund.html?orderNo=" + order.getOrderNo();
		sendTemplate(java.net.URLEncoder.encode(map.toString(), "UTF-8"),
				java.net.URLEncoder.encode("wechat.order.success.templateId", "UTF-8"),
				java.net.URLEncoder.encode(userid, "UTF-8"), reUrl);
	}

	/**
	 * 退款成功：（商家同意退款）
	 * 
	 * @param userid
	 * @param order
	 * @throws Exception
	 * @throws UnsupportedEncodingException
	 */
	private void returnMoneyFinishedPushMsg(String userid, BfOrder order)
			throws UnsupportedEncodingException, Exception {

		// 推送消息模板
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("first", "您好！您的早餐已处理退款，预计1-5个工作日内退款到账");
		map.put("storeName", order.getShopName() == null ? ">_<||| 走丢了！" : order.getShopName());
		map.put("orderId", order.getOrderNo() == null ? ">_<||| 走丢了！" : order.getOrderNo());
		map.put("orderType", "早餐");
		map.put("remark", "如有疑问请致电客服：18830358180");
		String reUrl = "http://m.mrwater1.com/breakfastApi/buy_record.html";
		sendTemplate(java.net.URLEncoder.encode(map.toString(), "UTF-8"),
				java.net.URLEncoder.encode("wechat.refund.success.templateId", "UTF-8"),
				java.net.URLEncoder.encode(userid, "UTF-8"), reUrl);
	}

	/**
	 * 退款失败：（商家拒绝退款)
	 * 
	 * @param userid
	 * @param order
	 * @throws Exception
	 * @throws UnsupportedEncodingException
	 */
	private void returnMoneyRefusePushMsg(String userid, BfOrder order) throws UnsupportedEncodingException, Exception {

		// 推送消息模板
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("first",
				"很抱歉！商家拒绝为您退款，拒绝原因:" + (order.getRefundDetail() == null ? ">_<||| 走丢了！" : order.getRefundDetail()));
		map.put("storeName", order.getShopName() == null ? ">_<||| 走丢了！" : order.getShopName());
		map.put("orderId", order.getOrderNo() == null ? ">_<||| 走丢了！" : order.getOrderNo());
		map.put("orderType", "早餐");
		map.put("remark", "如有疑问请致电客服：18830358180");
		String reUrl = "";
		sendTemplate(java.net.URLEncoder.encode(map.toString(), "UTF-8"),
				java.net.URLEncoder.encode("wechat.refund.fail.templateId", "UTF-8"),
				java.net.URLEncoder.encode(userid, "UTF-8"), reUrl);
	}

}
