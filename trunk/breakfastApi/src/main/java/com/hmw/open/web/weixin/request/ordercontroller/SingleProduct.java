package com.hmw.open.web.weixin.request.ordercontroller;

import java.math.BigDecimal;

public class SingleProduct {
	private Long id;
	private Long amount;
	private BigDecimal singleMoney;

	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getAmount() {
		return amount;
	}
	public void setAmount(Long amount) {
		this.amount = amount;
	}
	
	public BigDecimal getSingleMoney() {
		return singleMoney;
	}
	public void setSingleMoney(BigDecimal singleMoney) {
		this.singleMoney = singleMoney;
	}
	
	

}
