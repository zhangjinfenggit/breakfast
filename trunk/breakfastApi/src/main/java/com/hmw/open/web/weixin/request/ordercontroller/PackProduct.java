package com.hmw.open.web.weixin.request.ordercontroller;

import java.math.BigDecimal;

public class PackProduct {
	private Long id;
	private Long amount;
	private BigDecimal packageMoney;

	
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
	
	public BigDecimal getPackageMoney() {
		return packageMoney;
	}
	public void setPackageMoney(BigDecimal packageMoney) {
		this.packageMoney = packageMoney;
	}
	
	
	
	

}
