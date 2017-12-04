package com.hmw.open.model.vo;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class PackProductDetailVo {
	private String name;
	private Integer amount;
	private BigDecimal packageMoney;
	private List<SingleProductDetailVo> singleProductList= new ArrayList();

	
	

	
	public BigDecimal getPackageMoney() {
		return packageMoney;
	}
	public void setPackageMoney(BigDecimal packageMoney) {
		this.packageMoney = packageMoney;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<SingleProductDetailVo> getSingleProductList() {
		return singleProductList;
	}
	public void setSingleProductList(List<SingleProductDetailVo> singleProductList) {
		this.singleProductList = singleProductList;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	
	

}
