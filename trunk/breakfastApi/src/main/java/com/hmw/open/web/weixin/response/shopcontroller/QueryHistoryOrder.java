package com.hmw.open.web.weixin.response.shopcontroller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.hmw.open.model.BfOrderDetail;

public class QueryHistoryOrder {

	private String shopName; //店铺名称
	private String orderNo; //订单号
	private String orderDetail;//订单详情
	private BigDecimal totalMoney; //订单金额
	private String orderStatus; //订单状态
	private Date orderTime;
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(String orderDetail) {
		this.orderDetail = orderDetail;
	}
	public BigDecimal getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(BigDecimal totalMoney) {
		this.totalMoney = totalMoney;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	
	
}
