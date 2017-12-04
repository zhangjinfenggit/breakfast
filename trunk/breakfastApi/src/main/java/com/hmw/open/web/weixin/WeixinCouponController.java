package com.hmw.open.web.weixin;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.model.BfCoupon;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.IBfCouponService;
import com.hmw.open.service.impl.CacheServiceImpl;
import com.hmw.open.service.impl.WeiXinCouponServiceImpl;
import com.hmw.open.web.weixin.request.couponcontroller.AvailableCouponRequest;

/**
 * 优惠券管理
 * @author zhouyuan
 * @time 2017-10-07
 */
@Controller
@RequestMapping("/weixin")
public class WeixinCouponController {
	
	private final static Logger logger = Logger.getLogger(WeixinCouponController.class);
	
	@Autowired
	IBfCouponService bfCouponService;
	
	@Autowired
	WeiXinCouponServiceImpl weiXinCouponService;
	
	@Resource
	private CacheServiceImpl cacheService;

	
	/**
	 * 优惠券查询
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/availableCoupon" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult availableCoupon(HttpServletRequest request, @RequestBody AvailableCouponRequest form) {
		try {
			logger.warn("******优惠券查询接口开始*******");
			BaseResult baseResult = BaseResult.success();
			//如果订单总金额为空则查出用户所有可使用优惠券
			if(form.getOrdersMoney() == null || form.getOrdersMoney().floatValue()<=0){
				return baseResult.fail("订单金额不可为空,不可小于0");
			}

			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			
			List<BfCoupon> list =  new ArrayList();
			Wrapper<BfCoupon> wrapper = new EntityWrapper<BfCoupon>();
			wrapper.eq("user_id", userVo.getUserId());
			wrapper.lt("coupon_money", form.getOrdersMoney());
			//优惠券状态（1未使用2已使用）
			wrapper.eq("coupon_status", 1);
			//要未过期的
			wrapper.gt("overdue_time", new Date());
			wrapper.orderBy("coupon_money", false);
			wrapper.orderBy("overdue_time", false);
			list = bfCouponService.selectList(wrapper);
			
			
			baseResult.setData(list);
			
			logger.warn("******优惠券查询接口结束*******");
			return baseResult;	
		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	
	@RequestMapping(value = { "/myCoupon" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult myCoupon(HttpServletRequest request) {
		try {
			logger.warn("******myCoupon查询接口开始*******");
			BaseResult baseResult = BaseResult.success();
			

			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			
			List<BfCoupon> list =  new ArrayList();
			Wrapper<BfCoupon> wrapper = new EntityWrapper<BfCoupon>();
			wrapper.eq("user_id", userVo.getUserId());
			//优惠券状态（1未使用2已使用）
			wrapper.eq("coupon_status", 1);
			//要未过期的
			wrapper.gt("overdue_time", new Date());
			wrapper.orderBy("overdue_time", false);
			list = bfCouponService.selectList(wrapper);
			baseResult.setData(list);
			
			
			logger.warn("******myCoupon优惠券查询接口结束*******");
			return baseResult;	
		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	
	/**
	 * 优惠券使用
	 * @param request
	 * @param form
	 * @return
	 */
//	@RequestMapping(value = { "/updateCoupon" }, method = { RequestMethod.POST })
//	public @ResponseBody BaseResult updateCoupon(HttpServletRequest request, @RequestBody CouponRequest form) {
//		try {
//			logger.warn("******优惠券使用接口开始*******");
//			BaseResult baseResult = BaseResult.success();
//			Wrapper<BfCoupon> wrapper = new EntityWrapper<BfCoupon>();
//			if(StringUtils.isBlank(form.getPhone()) || form.getPhone().length() != 11){
//				logger.warn("******优惠券使用接口输入的手机号为空或者格式不正确*******"+form.getPhone());
//				return baseResult.fail("输入的手机号为空或者格式不正确");
//			}
//			if(StringUtils.isBlank(form.getCouponCode())){
//				logger.warn("******优惠券使用接口输入的优惠券码为空*******"+form.getCouponCode());
//				return baseResult.fail("输入的优惠券码为空");
//			}
//			wrapper.eq("phone", form.getPhone());
//			wrapper.eq("coupon_code", form.getCouponCode());
//			BfCoupon cp=bfCouponService.selectOne(wrapper);
//			cp.setCouponStatus("2");
//			bfCouponService.updateById(cp);
//			logger.warn("******优惠券使用接口结束*******");
//			return baseResult;
//		} catch (Exception e) {
//			logger.error("error:", e);
//			return BaseResult.exception(e.getMessage());
//		}
//	}
	
}
