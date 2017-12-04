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
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.impl.AppMerchantsInfoServiceImpl;
import com.hmw.open.service.impl.CacheServiceImpl;
import com.hmw.open.web.app.request.merchantsinfocontroller.AddBankcardRequest;
import com.hmw.open.web.app.request.merchantsinfocontroller.OpenOrCloseGoodRequest;
import com.hmw.open.web.app.request.merchantsinfocontroller.OrderDealRequest;
import com.hmw.open.web.app.request.merchantsinfocontroller.openOrCloseShopRequest;

@Controller
@RequestMapping("/app")
public class AppMerchantsInfoController {

	private final static Logger logger = Logger.getLogger(AppLoginController.class);

	@Autowired
	AppMerchantsInfoServiceImpl appMerchantsInfoService;

	@Resource
	private CacheServiceImpl cacheService;

	/***
	 * 获取商家信息
	 * 
	 * @param requset
	 * @return
	 */
	@RequestMapping(value = { "/info" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult info(HttpServletRequest request) {
		try {
			return appMerchantsInfoService.getMerchantsInfo(cacheService.getUserInfoJsonFromCache(request));
		} catch (Exception e) {
			logger.error("获取商家信息 error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/***
	 * 订单处理
	 * 
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/orderDeal" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult orderDeal(HttpServletRequest request, @RequestBody OrderDealRequest form) {
		try {
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);

			if (form == null || StringUtil.isEmpty(form.getOpType()) || StringUtil.isEmpty(form.getOrderNo())) {
				logger.error(ErrorCode.ParaCheckErrorRetInfo + "获取订单处理参数" + JSON.toJSONString(form), null);
				return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
			}
			return appMerchantsInfoService.orderDeal(form, userVo);
		} catch (Exception e) {
			logger.error("订单处理 error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/***
	 * 添加银行卡
	 * 
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/addBankcard" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult addBankcard(HttpServletRequest request, @RequestBody AddBankcardRequest form) {
		try {

			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			if (null == form || form.getCardName() == null || null == form.getCardNo()) {
				logger.error(ErrorCode.ParaCheckErrorRetInfo + "获取商家信息参数" + JSON.toJSONString(form), null);
				return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
			}
			// 验证银行卡号，没有找到验证银行卡号的正则表达式(暂时注销)
			/*
			 * if(!Pattern.matches(AccountValidatorUtil.XXX, form.getCardNo())){
			 * logger.error("银行帐号而是有误" + "商家登录信息为： " + JSON.toJSONString(form),
			 * null); return
			 * BaseResult.fail(LoginErrorCode.LOGIN_ACCOUNT_INFO_CODE,
			 * LoginErrorCode.LOGIN_ACCOUNT_INFO_MESSAGE); }
			 */
			return appMerchantsInfoService.addBankcard(form, userVo);
		} catch (Exception e) {
			logger.error("订单处理 error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/***
	 * 打烊或开店
	 * 
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/openOrCloseShop" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult openOrCloseShop(HttpServletRequest request,
			@RequestBody openOrCloseShopRequest form) {
		try {
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			return appMerchantsInfoService.openOrCloseShop(form, userVo);
		} catch (Exception e) {
			logger.error("打烊或开店 error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/***
	 * 售罄或补货
	 * 
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/openOrCloseGood" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult openOrCloseGood(HttpServletRequest request,
			@RequestBody OpenOrCloseGoodRequest form) {
		try {
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			if (null == form || form.getId() == null || form.getType() == 0 || form.getType() == 0) {
				logger.error(ErrorCode.ParaCheckErrorRetInfo + "售罄或补货参数信息为：" + JSON.toJSONString(form), null);
				return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
			}
			return appMerchantsInfoService.openOrCloseGood(form, userVo);
		} catch (Exception e) {
			logger.error("售罄或补货 error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
}