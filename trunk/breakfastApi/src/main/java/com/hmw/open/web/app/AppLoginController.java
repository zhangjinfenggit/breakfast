package com.hmw.open.web.app;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.LoginErrorCode;
import com.hmw.open.common.utils.AccountValidatorUtil;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.service.impl.AppLoginServiceImpl;
import com.hmw.open.web.app.request.logincontroller.GetCodeRequst;
import com.hmw.open.web.app.request.logincontroller.MerchantLoginRequest;

@Controller
@RequestMapping("/app")
public class AppLoginController {
	
	private final static Logger logger = Logger.getLogger(AppLoginController.class);
	
	@Autowired	
	AppLoginServiceImpl appLoginService;
	
	/**
	 * 商家注册登录
	 * @param request
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = { "/login" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult merchantLogin(HttpServletRequest request, @RequestBody MerchantLoginRequest form) {
		try {
			if (null == form || StringUtils.isEmpty(form.getCode()) || StringUtils.isEmpty(form.getPhone())) {
				logger.error(LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE + "商家登录信息为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(LoginErrorCode.LOGIN_ACCOUNT_INFO_CODE, LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE);
			}
			if (!AccountValidatorUtil.isMobile(form.getPhone())) {
				logger.error(LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE + "商家登录信息为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(LoginErrorCode.LOGIN_ACCOUNT_INFO_CODE, LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE);
			}
			
			return appLoginService.merchantLogin(form);
		} catch (Exception e) {
			logger.error("商家登录 error:", e);
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
				logger.error("商家用户获取短信验证码, 入参错误 ，参数为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(LoginErrorCode.GET_VALIDATION_CODE, LoginErrorCode.GET_VALIDATION_CODE_MESSAGE);
			}
			if (!AccountValidatorUtil.isMobile(form.getPhone())) {
				logger.error(LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE + "商家用户获取验证码信息为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(LoginErrorCode.LOGIN_ACCOUNT_INFO_CODE, LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE);
			}
			return appLoginService.getCode(form);
		} catch (Exception e) {
			logger.error("商家用户 getCode error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	

}
