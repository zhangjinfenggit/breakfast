package com.hmw.open.model;

import java.util.Date;

public class BfOrdersVo {

	/**
	 * 订单号
	 */
	private String orderNo;
	/**
	 * 下单时间
	 */
	private Date orderTime;

	/**
	 * 订单退款说明
	 */
	private String refundDetail;

	/**
	 * 订单详情（单品id，逗号分隔）
	 */
	private String orderDetailId;

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

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
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
