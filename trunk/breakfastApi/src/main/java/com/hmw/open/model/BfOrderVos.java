package com.hmw.open.model;

import java.math.BigDecimal;

public class BfOrderVos {

	/**
	 * 收入总计
	 */
	private BigDecimal sumIncome;
	/**
	 * 退款总计
	 */
	private BigDecimal sumRefund;
	/**
	 * 平台分成
	 */
	private BigDecimal sumPartion;
	/**
	 * 合计
	 */
	private BigDecimal total;

	public BigDecimal getSumIncome() {
		return sumIncome;
	}

	public void setSumIncome(BigDecimal sumIncome) {
		this.sumIncome = sumIncome;
	}

	public BigDecimal getSumRefund() {
		return sumRefund;
	}

	public void setSumRefund(BigDecimal sumRefund) {
		this.sumRefund = sumRefund;
	}

	public BigDecimal getSumPartion() {
		return sumPartion;
	}

	public void setSumPartion(BigDecimal sumPartion) {
		this.sumPartion = sumPartion;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

}
