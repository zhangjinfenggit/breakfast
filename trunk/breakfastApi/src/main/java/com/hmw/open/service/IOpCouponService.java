package com.hmw.open.service;

import com.hmw.open.common.result.BaseResult;
import com.hmw.open.model.BfCoupon;
import com.hmw.open.model.BfUserWeixin;
import com.hmw.open.model.UserBaseInfoVo;

public interface IOpCouponService {

	/**
	 * 添加优惠券
	 * 
	 * @param coupon
	 * @return
	 */
	public BaseResult addCoupon(BfCoupon coupon);

	/**
	 * 删除优惠券
	 * 
	 * @param couponCode
	 * @return
	 */
	public BaseResult deleteCoupon(String couponCode);

	/**
	 * 消费完优惠券后，回调运营系统（优惠券类型为6），告知以消费。
	 * 
	 * @param couponId
	 * @param user
	 * @return
	 */
	public BaseResult useCouponCallback(long couponId, UserBaseInfoVo user);

	/**
	 * 用户注册完成后发放运营系统的优惠券
	 * 
	 * @param user
	 * @return
	 */
	public boolean activeOpCoupon(BfUserWeixin user);
	
	/**
	 * 根据phone获取用户
	 * 
	 * @param phone
	 * @return
	 */
	public BfUserWeixin getUserWeixinByPhone(String phone);
}
