package com.hmw.open.model;

import java.math.BigDecimal;

// 今日流水的包装类
public class BfOrderVo {

	/**
	 * 订单号
	 */
	private String orderNo;

	/**
	 * 订单金额
	 */
	private BigDecimal orderMoney;

	/**
	 * 订单状态
	 */
	private String orderStatus;

	/**
	 * 订单详情id
	 */
	private String orderDetailId;

	/**
	 * 退款说明
	 */
	private String refundDetail;

	/**
	 * 放置单品详情
	 */
	private String orderDetail;

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public BigDecimal getOrderMoney() {
		return orderMoney;
	}

	public void setOrderMoney(BigDecimal orderMoney) {
		this.orderMoney = orderMoney;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getRefundDetail() {
		return refundDetail;
	}

	public void setRefundDetail(String refundDetail) {
		this.refundDetail = refundDetail;
	}

	public String getOrderDetailId() {
		return orderDetailId;
	}

	public void setOrderDetailId(String orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public String getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(String orderDetail) {
		this.orderDetail = orderDetail;
	}

}
