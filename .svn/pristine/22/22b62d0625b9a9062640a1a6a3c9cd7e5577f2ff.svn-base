package com.hmw.open.service.impl;

import java.util.Date;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.msm.MsmTool;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.UserErrorCode;
import com.hmw.open.model.BfUserWeixin;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.IBfUserWeixinService;
import com.hmw.open.service.IOpCouponService;
import com.hmw.open.web.app.request.logincontroller.GetCodeRequst;
import com.hmw.open.web.weixin.request.logincontroller.UserLoginRequest;
import com.hmw.open.web.weixin.response.logincontroller.WeiXinLoginResponse;

@Service
public class WeixinLoginServiceImpl {
	
	private final static Logger logger = Logger.getLogger(WeixinLoginServiceImpl.class);

	@Resource
	RedisTemplate<String, UserBaseInfoVo> redisTemplate;
	
	@Resource
	private SmsServiceImpl smsService;

	@Resource
	private CacheServiceImpl cacheService;
	
	@Autowired
	IBfUserWeixinService iBfUserWeixinService;
	
	@Value("#{configProperties['wechat.openidBindPhone.time']}")
	private String timeOut;

	@Autowired
	private WeiXinCouponServiceImpl weiXinCouponService;
	
	@Autowired
	IOpCouponService opCouponService;
	
	/**
	 * 用户登录:如果已经注册 那么直接登录 如果没有注册 那么先注册 在登录
	 * @param form
	 * @return
	 */
	public BaseResult weixinUserLogin(UserLoginRequest form) {
		BaseResult baseResult = null;
		WeiXinLoginResponse response = new WeiXinLoginResponse();
		// 验证码校验
		boolean flag = cacheService.checkCode(form.getPhone(), form.getCode());
		if (!flag) {
			redisTemplate.delete(form.getOpenid());
			return BaseResult.fail(UserErrorCode.CaptchaErrorRetCode, UserErrorCode.CaptchaErrorRetInfo);
		}
		//手机判断手机号是否注册
		Wrapper<BfUserWeixin> wrapper = new EntityWrapper<BfUserWeixin>();
		wrapper.eq("phone", form.getPhone());
		BfUserWeixin phoneUser = iBfUserWeixinService.selectOne(wrapper);
		if (phoneUser != null) { //表示已经注册
			//然后判断openid是否正确
			Wrapper<BfUserWeixin> openwrapper = new EntityWrapper<BfUserWeixin>();
			openwrapper.eq("openid", form.getOpenid());
			openwrapper.eq("phone", form.getPhone());
			BfUserWeixin openwrapperUser = iBfUserWeixinService.selectOne(openwrapper);
			if (null == openwrapperUser) {
				redisTemplate.delete(form.getOpenid());
				return BaseResult.fail("-1", "openId和手机号不匹配,phone=" + form.getPhone() + " openid=" + form.getOpenid());
			}
		} else {
			//进行注册信息保存
			BfUserWeixin entity = new BfUserWeixin();
			entity.setPhone(form.getPhone());
			entity.setOpenid(form.getOpenid());
			entity.setRecommend(form.getRecommenderPhone());
			entity.setRegisterTime(new Date());//注册时间
			entity.setCreateTime(new Date());//创建时间
			iBfUserWeixinService.insert(entity);
			logger.info("=====================用户发送优惠券开始==================================");
			//同时给注册用户发放优惠券
			weiXinCouponService.recevieCoupon(Constant.COUPON_TYPE_1, form.getPhone());
			//给举荐人发送推送优惠券，用户注册的时候么有添加举荐人就不发优惠券信息
			if(StringUtils.isNotEmpty(form.getRecommenderPhone())){
				weiXinCouponService.recevieCoupon(Constant.COUPON_TYPE_4, form.getRecommenderPhone());
			}
			logger.info("=====================用户发送优惠券结束==================================");
			
			// lenjey add 2017-11-23
			logger.info("=====================设置系统优惠券到个人账户开始==================================");
			opCouponService.activeOpCoupon(entity);
			logger.info("=====================设置系统优惠券到个人账户结束==================================");
		}
		
		String appToken = UUID.randomUUID().toString();
		try {
			UserBaseInfoVo userBaseInfoVo = new UserBaseInfoVo();
			Wrapper<BfUserWeixin> cacheWrapper = new EntityWrapper<BfUserWeixin>();
			cacheWrapper.eq("openid", form.getOpenid());
			cacheWrapper.eq("phone", form.getPhone());
			BfUserWeixin cacheUser = iBfUserWeixinService.selectOne(cacheWrapper);
			userBaseInfoVo.setPhone(cacheUser.getPhone());
			userBaseInfoVo.setShopId(cacheUser.getId());
			userBaseInfoVo.setUserId(cacheUser.getId());
			userBaseInfoVo.setOpenId(cacheUser.getOpenid());
			// 登录成功信息存缓存  微信用户超时时间
			redisTemplate.opsForValue().set(appToken, userBaseInfoVo, Integer.parseInt(timeOut), TimeUnit.HOURS);
		} catch (Exception e) {
			redisTemplate.delete(form.getOpenid());
			logger.error("用户登录token缓存异常, 用户信息为：phone =" + form.getPhone() , e);
			return BaseResult.fail("-1", "账户登录token缓存异常");
		}
		
		response.setWeixintoken(appToken);
		baseResult = BaseResult.success();
		baseResult.setData(response);
		return baseResult;
	}

	/**
	 * 获取注册短信验证码
	 * 
	 * @param form
	 * @return
	 */
	public BaseResult getCode(GetCodeRequst form) {
		// 短信发送验证码
		boolean flag = smsService.sendSms(form.getPhone(), MsmTool.msmType.loginAndRegister);
		if (flag) {
			return BaseResult.success();
		} else {
			return BaseResult.fail("-1", "微信用户获取短信验证码异常,phone=" + form.getPhone());
		}
	}
}
