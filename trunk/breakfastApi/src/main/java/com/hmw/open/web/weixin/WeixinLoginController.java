package com.hmw.open.web.weixin;

import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.common.result.LoginErrorCode;
import com.hmw.open.common.utils.AccountValidatorUtil;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.service.impl.WeixinLoginServiceImpl;
import com.hmw.open.web.app.request.logincontroller.GetCodeRequst;
import com.hmw.open.web.weixin.request.logincontroller.UserLoginRequest;

@Controller
@RequestMapping("/weixin")
public class WeixinLoginController {
	
	private final static Logger logger = Logger.getLogger(WeixinLoginController.class);
	
	@Autowired	
	WeixinLoginServiceImpl weixinLoginService;
	
	@Resource
	RedisTemplate<String, String> redisTemplate;
	
	@Value("#{configProperties['wechat.openidBindPhone.time']}")
	private String timeOut;
	
	/**
	 * 微信用户注册登录
	 * @param request
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = { "/login" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult weixinUserLogin(HttpServletRequest request, @RequestBody UserLoginRequest form) {
		try {
			if (null == form || StringUtils.isEmpty(form.getCode()) || StringUtils.isEmpty(form.getPhone())
					/*|| StringUtils.isEmpty(form.getOpenid())*/) {
				logger.error(LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE + "微信登录信息为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(LoginErrorCode.LOGIN_ACCOUNT_INFO_CODE, LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE + JSON.toJSONString(form));
			}
			if (!AccountValidatorUtil.isMobile(form.getPhone())) {
				logger.error(LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE + "微信登录信息为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(LoginErrorCode.LOGIN_ACCOUNT_INFO_CODE, LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE + JSON.toJSONString(form));
			}
			//获取openid存入redis
			String  openid = redisTemplate.opsForValue().get(request.getSession().getId());
			if(StringUtils.isBlank(openid)){
				return BaseResult.fail("获取不到该用户openid，请联系客户查找原因");
			}
			form.setOpenid(openid);
			BaseResult baseResult = weixinLoginService.weixinUserLogin(form);
			if((ErrorCode.SuccessRetCode).equals(baseResult.getRetCode())){
				logger.info("********开始注册登录绑定手机号和openid关系***"+"openid:"+openid+",phone:"+form.getPhone());
				redisTemplate.opsForValue().set(openid, form.getPhone(), Integer.parseInt(timeOut), TimeUnit.HOURS);
			}
			return baseResult;
		} catch (Exception e) {
			logger.error("微信用户登录 error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	/**
	 * 获取短信验证码
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/getCode" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult getCode(HttpServletRequest request, @RequestBody GetCodeRequst form) {
		try {
			if (null == form || StringUtil.isEmpty(form.getPhone())) {
				logger.error("微信用户获取短信验证码, 入参错误 ，参数为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(LoginErrorCode.GET_VALIDATION_CODE, LoginErrorCode.GET_VALIDATION_CODE_MESSAGE);
			}
			if (!AccountValidatorUtil.isMobile(form.getPhone())) {
				logger.error(LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE + "微信用户获取验证码信息为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(LoginErrorCode.LOGIN_ACCOUNT_INFO_CODE, LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE);
			}
			
			return weixinLoginService.getCode(form);
		} catch (Exception e) {
			logger.error("微信用户 getCode error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

}
