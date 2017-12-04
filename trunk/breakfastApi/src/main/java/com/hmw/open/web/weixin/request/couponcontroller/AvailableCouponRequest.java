package com.hmw.open.web.weixin.request.couponcontroller;

import java.math.BigDecimal;

public class AvailableCouponRequest {

	// 订单总金额
	private BigDecimal ordersMoney;

	public BigDecimal getOrdersMoney() {
		return ordersMoney;
	}

	public void setOrdersMoney(BigDecimal ordersMoney) {
		this.ordersMoney = ordersMoney;
	}

	

}
