package com.hmw.open.web.weixin.response.shopcontroller;

import java.math.BigDecimal;
import java.util.Date;

public class Coupon {
	//优惠券id
	private String couponId;
	//优惠券名称
	private String couponName;
	//优惠券金额
	private BigDecimal coupon_money;
	//到期日
	private Date overdueTime;
	//优惠券说明
	private String couponMessge;
	//优惠券码
	private String couponCode;
	
	public String getCouponId() {
		return couponId;
	}
	public void setCouponId(String couponId) {
		this.couponId = couponId;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public BigDecimal getCoupon_money() {
		return coupon_money;
	}
	public void setCoupon_money(BigDecimal coupon_money) {
		this.coupon_money = coupon_money;
	}
	public Date getOverdueTime() {
		return overdueTime;
	}
	public void setOverdueTime(Date overdueTime) {
		this.overdueTime = overdueTime;
	}
	public String getCouponMessge() {
		return couponMessge;
	}
	public void setCouponMessge(String couponMessge) {
		this.couponMessge = couponMessge;
	}
	public String getCouponCode() {
		return couponCode;
	}
	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	
	
	
}
