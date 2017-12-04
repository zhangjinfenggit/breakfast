package com.hmw.open.model;

public class BfOrderDetailVo {

	/**
	 * 商品或套餐名称
	 */
	private String prodcutName;
	/**
	 * 商品或套餐数量
	 */
	private Integer amount;
	
	/**
	 * 标识（1、单品，2、套餐）
	 */
	private String type;

	public String getProdcutName() {
		return prodcutName;
	}

	public void setProdcutName(String prodcutName) {
		this.prodcutName = prodcutName;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
}
