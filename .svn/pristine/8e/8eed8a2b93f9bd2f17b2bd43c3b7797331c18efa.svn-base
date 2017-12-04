package com.hmw.open.web.operation;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.model.BfCoupon;
import com.hmw.open.model.BfUserWeixin;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.IBfCouponCallbackFailService;
import com.hmw.open.service.IBfCouponService;
import com.hmw.open.service.IOpCouponService;
import com.hmw.open.service.impl.CacheServiceImpl;
import com.hmw.open.web.operation.request.opcouponcontroller.AddCouponProduceRequest;

/**
 * 运行系统接口服务类
 * 
 * @author gaolingjie
 *
 */
@Controller
@RequestMapping("/op")
public class OpCouponController {

	private final static Logger logger = Logger.getLogger(OpCouponController.class);

	@Autowired
	IOpCouponService opCouponService;
	
	@Autowired
	IBfCouponService bfCouponService;

	@Autowired
	IBfCouponCallbackFailService bfCouponCallbackFailService;
	
	@Autowired
	RedisTemplate<String, String> redisTemplate;

	@Resource
	private CacheServiceImpl cacheService;

//	@Value("#{configProperties['op.appId']}")
//	private String opAppId; // 操作返回给op时需要使用这个参数

	/**
	 * 新增优惠券
	 * 
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = "/addCoupon")
	@ResponseBody
	public BaseResult addCouponProduce(HttpServletRequest request, @RequestBody AddCouponProduceRequest form) {
		BaseResult result = BaseResult.success();
		try {
			if (StringUtils.isBlank(form.getCouponName())) {
				result = BaseResult.fail("优惠券名称不能为空");
				return result;
			}

			if (form.getCouponMoney() == null) {
				result = BaseResult.fail("优惠券金额不能为空");
				return result;
			}

			if (form.getOverdueTime() == null) {
				result = BaseResult.fail("优惠券到期时间不能为空");
				return result;
			}

			if (StringUtils.isBlank(form.getUserPhone())) {
				result = BaseResult.fail("用户手机号不能为空");
				return result;
			}

			if (StringUtils.isBlank(form.getCouponCode())) {
				result = BaseResult.fail("优惠码不能为空");
				return result;
			}

			BfCoupon coupon = new BfCoupon();
			BeanUtils.copyProperties(coupon, form);
			coupon.setPhone(form.getUserPhone());

			result = opCouponService.addCoupon(coupon);

		} catch (Exception e) {
			logger.error("error:", e);
			result = BaseResult.exception(e.getMessage());
			return result;
		}
		logger.info(" ********* OpCouponController.addCouponProduce return value: " + JSON.toJSONString(result));
		return result;
	}

	/**
	 * 删除优惠券
	 * 
	 * @param request
	 * @param couponId
	 * @return
	 */
	@RequestMapping(value = "/deleteCoupon")
	@ResponseBody
	public BaseResult deleteCoupon(HttpServletRequest request, @RequestBody AddCouponProduceRequest form) {
		BaseResult result = BaseResult.success();
		String couponCode = form.getCouponCode();
		try {
			if (StringUtils.isBlank(couponCode)) {
				result = BaseResult.fail("优惠券号码不能为空");
				return result;
			}

			result = opCouponService.deleteCoupon(couponCode);

		} catch (Exception e) {
			logger.error("error:", e);
			result = BaseResult.exception(e.getMessage());
			return result;
		}
		logger.info(" ********* OpCouponController.deleteCoupon return value: " + JSON.toJSONString(result));
		return result;
	}

	/**
	 * 使用优惠券
	 * 
	 * @param request
	 * @param couponId
	 * @param userToken
	 * @return
	 */
	@RequestMapping(value = "/test")
	@ResponseBody
	public BaseResult test(HttpServletRequest request, @RequestBody Map<String, Object> form) {
		BaseResult result = BaseResult.success();
		
		if(form.get("id") == null){
			return BaseResult.fail("coupon id can,t be null");
		}
		
		
		long couponId = ((Number)form.get("id")).longValue();
					
		try {
			BfCoupon coupon = bfCouponService.selectById(couponId);
			if(coupon == null || coupon.getPhone()==null){
				return BaseResult.fail("coupon or phone is null.");
			}
			BfUserWeixin userWx = opCouponService.getUserWeixinByPhone(coupon.getPhone());
			if(userWx == null){
				return BaseResult.fail("user is null.");
			}
			
			UserBaseInfoVo user = new UserBaseInfoVo();
			user.setUserId(userWx.getId());
			user.setPhone(userWx.getPhone());
			
			opCouponService.useCouponCallback(couponId, user);
			
//			BfCouponCallbackFail callback = new BfCouponCallbackFail();
//			callback.setCouponId(coupon.getId());
//			callback.setCouponName(coupon.getCouponName());
//			callback.setCouponMoney(coupon.getCouponMoney());
//			callback.setCouponCode(coupon.getCouponCode());
//			callback.setUserId(user.getUserId());
//			callback.setPhone(user.getPhone());
//			callback.setCallbackFailMsg("hello,error!!");
//			callback.setManagedFlag(0);
//			
//			Date now = new Date();
//			callback.setCreateTime(now);
//			callback.setUpdateTime(now);
//			
//			bfCouponCallbackFailService.insert(callback);
		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}


		return result;
	}

}
