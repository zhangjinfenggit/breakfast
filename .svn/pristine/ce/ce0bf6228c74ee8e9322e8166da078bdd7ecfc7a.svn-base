package com.hmw.open.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.utils.HttpClientUtil;
import com.hmw.open.model.BfCoupon;
import com.hmw.open.model.BfCouponCallbackFail;
import com.hmw.open.model.BfUserWeixin;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.IBfCouponCallbackFailService;
import com.hmw.open.service.IBfCouponProduceService;
import com.hmw.open.service.IBfCouponService;
import com.hmw.open.service.IBfUserWeixinService;
import com.hmw.open.service.IOpCouponService;

/**
 * op后台优惠券接口服务类
 * 
 * @author lenovo
 *
 */
@Service
public class OpCouponServiceImpl implements IOpCouponService {
	
	
	private final static Logger logger = Logger.getLogger(OpCouponServiceImpl.class);

	@Autowired
	IBfCouponProduceService bfCouponProduceService;

	@Autowired
	IBfCouponService bfCouponService;

	@Autowired
	IBfUserWeixinService bfUserWeixinService;
	
	@Autowired
	IBfCouponCallbackFailService bfCouponCallbackFailService;
	
	@Value("#{configProperties['op.appId']}")
	private String opAppId; // 操作返回给op时需要使用这个参数
	
	@Value("#{configProperties['op.server.url.couponCallback']}")
	private String couponUseCallbackUrl;

	/**
	 * 添加优惠券
	 * 
	 * @param coupon
	 * @return
	 */
	public BaseResult addCoupon(BfCoupon coupon) {
		BaseResult result = BaseResult.success();
		Date now = new Date(System.currentTimeMillis());
	
		BfCoupon couponDb = getCouponByCode(coupon.getCouponCode());
		if(couponDb != null){
			result = BaseResult.fail("已存在相同Code的优惠券");
			return result;
		}
		
		BfUserWeixin user = getUserWeixinByPhone(coupon.getPhone());
		if(user != null){  
			coupon.setUserId(user.getId());
		}
		
		coupon.setType(Constant.COUPON_TYPE_6);
		coupon.setCouponStatus(Constant.COUPON_STATUS_1);
		coupon.setCreateTime(now);
		coupon.setUpdateTime(now);

		bfCouponService.insert(coupon);

		result.setData(coupon);
		return result;
	}

	/**
	 * 删除优惠券
	 * 
	 * @param couponCode
	 * @return
	 */
	public BaseResult deleteCoupon(String couponCode) {
		BaseResult result = BaseResult.success();
		
		BfCoupon coupon = getCouponByCode(couponCode);
		
		if(coupon == null){
			return result;
		}
		
		if (Constant.COUPON_STATUS_2.equals(coupon.getCouponStatus())) {
			result = BaseResult.fail("优惠券已使用");
			return result;
		}
		
		if (!Constant.COUPON_TYPE_6.equals(coupon.getType())) {
			result = BaseResult.fail("非运营系统优惠券不可删除");
			return result;
		}
		
		bfCouponService.deleteById(coupon.getId());

		return result;
	}
	
	/**
	 * 用户注册完成后发放运营系统的优惠券
	 * @param user
	 * @return
	 */
	public boolean activeOpCoupon(BfUserWeixin user){
		boolean success = true;
		if(user == null || StringUtils.isBlank(user.getPhone()) || user.getId() == null){
			logger.warn("********** OpCouponServiceImpl.activeOpCoupon  userPhone or userId is empty");
			return success;
		}
		
		try{
			Wrapper<BfCoupon> wrapper = new EntityWrapper<BfCoupon>();
			wrapper.eq("phone", user.getPhone());
			wrapper.eq("type", Constant.COUPON_TYPE_6);
			wrapper.eq("coupon_status", Constant.COUPON_STATUS_1);
			
			BfCoupon coupon = new BfCoupon();
			coupon.setUserId(user.getId());
			success = bfCouponService.update(coupon, wrapper);
		}catch(Exception e){
			logger.error("************* OpCouponServiceImpl.activeOpCoupon error.", e);
			success = false;
		}
		
		return success;
	}

	/**
	 * 消费完优惠券后，回调运营系统（优惠券类型为6），告知以消费。
	 * 
	 * @param couponId
	 * @param user
	 * @return
	 */
	public BaseResult useCouponCallback(long couponId, UserBaseInfoVo user) {
		BaseResult result = BaseResult.success();
		if(user == null){
			logger.info("************* OpCouponServiceImpl.useCouponCallback user is null");
			return result;
		}
		
		BfCoupon coupon = bfCouponService.selectById(couponId);
		if(coupon == null){
			logger.info("************* OpCouponServiceImpl.useCouponCallback get coupon is null. couponId=" + couponId);
			return result;
		}
		
		logger.info("************* OpCouponServiceImpl.useCouponCallback  coupon type=" + coupon.getType() + " status=" + coupon.getCouponStatus() );
		
		if(!Constant.COUPON_STATUS_2.equals(coupon.getCouponStatus())){ //如果优惠券未被消费，返回
			logger.info("************* OpCouponServiceImpl.useCouponCallback get coupon is not used.");
			return result;
		}
		
		if(!Constant.COUPON_TYPE_6.equals(coupon.getType())){ //如果优惠券不是op系统发放优惠券，返回
			logger.info("************* OpCouponServiceImpl.useCouponCallback get coupon is not created by op server.");
			return result;
		}
		
		try{
			logger.info("************* OpCouponServiceImpl.useCouponCallback begin callback opserver");
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("ticket_code", coupon.getCouponCode());
			data.put("app_id", opAppId);
			String postResult = HttpClientUtil.postJsonRequest(couponUseCallbackUrl, data);
			logger.info("************* OpCouponServiceImpl.useCouponCallback callback finish.return value=" + postResult);
			
			JSONObject jsonResult = JSON.parseObject(postResult);
			if(!"000000".equals(jsonResult.getString("code"))){ // 返回不正确，记录错误日志
				addCallbackFailRecord(coupon, user, postResult);
				logger.info("************* OpCouponServiceImpl.useCouponCallback addCallbackFailRecord finish.");
			}
					
		}catch(Exception e){
			addCallbackFailRecord(coupon, user, e.getMessage()); //出现异常，记录错误日志
			logger.error("", e);
			result = BaseResult.fail("消费优惠券，回调异常！");
		}
		
		return result;
	}
	
	private BfCoupon getCouponByCode(String couponCode){
		Wrapper<BfCoupon> wrapper = new EntityWrapper<BfCoupon>();
		wrapper.eq("coupon_code", couponCode);
		BfCoupon coupon = bfCouponService.selectOne(wrapper);
		return coupon;
	}

	/**
	 * 根据phone获取用户
	 * 
	 * @param phone
	 * @return
	 */
	public BfUserWeixin getUserWeixinByPhone(String phone) {
		BfUserWeixin user = null;
		Wrapper<BfUserWeixin> useWrapper = new EntityWrapper<BfUserWeixin>();
		useWrapper.eq("phone", phone);
		user = bfUserWeixinService.selectOne(useWrapper);
		return user;
	}
	
	private void  addCallbackFailRecord(BfCoupon coupon, UserBaseInfoVo user, String failMsg){
		try{
			BfCouponCallbackFail callback = new BfCouponCallbackFail();
			callback.setCouponId(coupon.getId());
			callback.setCouponName(coupon.getCouponName());
			callback.setCouponMoney(coupon.getCouponMoney());
			callback.setCouponCode(coupon.getCouponCode());
			callback.setUserId(user.getUserId());
			callback.setPhone(user.getPhone());
			callback.setCallbackFailMsg(failMsg);
			callback.setManagedFlag(0);
			
			Date now = new Date();
			callback.setCreateTime(now);
			callback.setUpdateTime(now);
			
			bfCouponCallbackFailService.insert(callback);
		}catch(Exception e){
			logger.error("************* OpCouponServiceImpl.addCallbackFailRecord error.", e);
		}
	}

}
