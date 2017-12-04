package com.hmw.open.service.impl;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

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
import com.hmw.open.model.BfShop;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.IBfShopService;
import com.hmw.open.web.app.request.logincontroller.GetCodeRequst;
import com.hmw.open.web.app.request.logincontroller.MerchantLoginRequest;
import com.hmw.open.web.app.response.logincontroller.MerchantLoginResponse;

@Service
public class AppLoginServiceImpl {
	private final static Logger logger = Logger.getLogger(AppLoginServiceImpl.class);

	// 验证码是否返回，OFF为返回
	@Value("${sms.isReturn}")
	private String isReturn;

	@Resource
	RedisTemplate<String, Object> redisTemplateGetVerifyCode;

	@Resource
	RedisTemplate<String, UserBaseInfoVo> redisTemplate;

	@Resource
	private SmsServiceImpl smsService;

	@Resource
	private CacheServiceImpl cacheService;

	@Autowired
	IBfShopService iBfShopService;

	/**
	 * 商家登录：如果已经注册 那么直接登录 如果没有注册 那么先注册 在登录 需要注册返回注册标识 跳转到店铺基本信息填写页
	 * 
	 * @param form
	 * @return
	 */
	public BaseResult merchantLogin(MerchantLoginRequest form) {
		BaseResult baseResult = null;
		MerchantLoginResponse response = new MerchantLoginResponse();
		// 验证码校验
		boolean flag = cacheService.checkCode(form.getPhone(), form.getCode());
		if (!flag) {
			return BaseResult.fail(UserErrorCode.CaptchaErrorRetCode, UserErrorCode.CaptchaErrorRetInfo);
		}
		// 校验是否已经注册
		Wrapper<BfShop> wrapper = new EntityWrapper<BfShop>();
		wrapper.eq("phone", form.getPhone());
		BfShop user = iBfShopService.selectOne(wrapper);
		if (user == null) {
			// 进行注册信息保存
			BfShop entity = new BfShop();
			entity.setInfoStatus("1");
			entity.setPhone(form.getPhone());
			iBfShopService.insert(entity);
			// 设置是否为注册且登录用户
			response.setType(0);
		} else {
			// 设置是否为登录用户
			response.setType(1);
		}

		// 登录成功信息存缓存,把手机号存入缓存
		String userToken = UUID.randomUUID().toString();
		try {
			UserBaseInfoVo userBaseInfoVo = new UserBaseInfoVo();
			Wrapper<BfShop> cacheWrapper = new EntityWrapper<BfShop>();
			cacheWrapper.eq("phone", form.getPhone());
			BfShop cacheUser = iBfShopService.selectOne(wrapper);
			userBaseInfoVo.setPhone(cacheUser.getPhone());
			userBaseInfoVo.setShopId(cacheUser.getId());

			// 设置别名
			response.setAlias(cacheUser.getId());
			// 设置信息完整度的状态
			response.setInfoStatus(cacheUser.getInfoStatus());
			userBaseInfoVo.setUserId(cacheUser.getId());
			redisTemplate.opsForValue().set(userToken, userBaseInfoVo);
		} catch (Exception e) {
			logger.error("用户登录token缓存异常, 用户信息为：phone =" + form.getPhone(), e);
			return BaseResult.fail("-1", "账户登录token缓存异常");
		}

		response.setApptoken(userToken);
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
			BaseResult result = BaseResult.success();
			// 是否返回前台手机验证码的验证
			if (isReturn.equals("ON")) {
				String verifyCode = null;
				try {
					verifyCode = (String) redisTemplateGetVerifyCode.opsForValue().get(Constant.RETURNVERIFYCODE);
				} catch (Exception e) {
					logger.error("从缓存中获取验证码出错", e);
					return BaseResult.exception(e.getMessage());
				}
				Map<String, String> map = new HashMap<String, String>();
				map.put("verifyCode", verifyCode);
				result.setData(map);
			}
			return result;
		} else {
			return BaseResult.fail("-1", "商家用户获取短信验证码异常,phone=" + form.getPhone());
		}
	}

}
