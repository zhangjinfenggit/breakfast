package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 流水详情表（从订单表来）
 * </p>
 *
 * @author wx
 * @since 2017-10-03
 */
@TableName("bf_business_record")
public class BfBusinessRecord extends Model<BfBusinessRecord> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 订单id
	 */
	@TableField(value="order_id")
	private String orderId;

	/**
	 * 订单总金额
	 */
	@TableField(value="order_money")
	private BigDecimal orderMoney;

	/**
	 * 订单详情
	 */
	@TableField(value="order_detail")
	private String orderDetail;

	/**
	 * 订单时间
	 */
	@TableField(value="order_time")
	private Date orderTime;

	/**
	 * 优惠券抵扣
	 */
	@TableField(value="coupon_deduction")
	private BigDecimal couponDeduction;

	/**
	 * 平台分成
	 */
	@TableField(value="platform_partion")
	private BigDecimal platformPartion;

	/**
	 * 合计收入
	 */
	@TableField(value="sum_income")
	private BigDecimal sumIncome;

	/**
	 * 平台盈亏
	 */
	@TableField(value="platform_profit")
	private BigDecimal platformProfit;

	/**
	 * 订单状态:1，已完成，2、已支付，3、已退款
	 */
	@TableField(value="order_status")
	private String orderStatus;

	/**
	 * 店铺id
	 */
	@TableField(value="shop_id")
	private Long shopId;

	/**
	 * 店铺名
	 */
	@TableField(value="shop_name")
	private String shopName;

	/**
	 * 操作人
	 */
	private String operater;

	/**
	 * 创建时间
	 */
	@TableField(value="create_time")
	private Date createTime;

	/**
	 * 更新时间
	 */
	@TableField(value="update_time")
	private Date updateTime;

	/**
	 * 备注
	 */
	private String remark;



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public BigDecimal getOrderMoney() {
		return orderMoney;
	}

	public void setOrderMoney(BigDecimal orderMoney) {
		this.orderMoney = orderMoney;
	}

	public String getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(String orderDetail) {
		this.orderDetail = orderDetail;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public BigDecimal getCouponDeduction() {
		return couponDeduction;
	}

	public void setCouponDeduction(BigDecimal couponDeduction) {
		this.couponDeduction = couponDeduction;
	}

	public BigDecimal getPlatformPartion() {
		return platformPartion;
	}

	public void setPlatformPartion(BigDecimal platformPartion) {
		this.platformPartion = platformPartion;
	}

	public BigDecimal getSumIncome() {
		return sumIncome;
	}

	public void setSumIncome(BigDecimal sumIncome) {
		this.sumIncome = sumIncome;
	}

	public BigDecimal getPlatformProfit() {
		return platformProfit;
	}

	public void setPlatformProfit(BigDecimal platformProfit) {
		this.platformProfit = platformProfit;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Long getShopId() {
		return shopId;
	}

	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getOperater() {
		return operater;
	}

	public void setOperater(String operater) {
		this.operater = operater;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	protected Serializable pkVal() {
		// TODO Auto-generated method stub
		return null;
	}

}
