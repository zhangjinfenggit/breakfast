package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 订单表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_order")
public class BfOrder extends Model<BfOrder> {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 订单号
	 */
	@TableField(value = "order_no")
	private String orderNo;

	/**
	 * 下单时间
	 */
	@TableField(value = "order_time")
	private Date orderTime;

	/**
	 * 下单地点(用户下单时应有定位)
	 */
	@TableField(value = "order_address")
	private String orderAddress;

	/**
	 * 取餐地点(精确到用户选择的地铁站即可，无需显示商铺填写的地理位置)
	 */
	@TableField(value = "take_address")
	private String takeAddress;

	/**
	 * 商铺id
	 */
	@TableField(value = "shop_id")
	private Long shopId;

	/**
	 * 商铺名称
	 */
	@TableField(value = "shop_name")
	private String shopName;

	/**
	 * 订单详情（单品id，逗号分隔）
	 */
	@TableField(value = "order_detail_id")
	private String orderDetailId;

	/**
	 * 订单详情说明
	 */
	@TableField(value = "order_detail")
	private String orderDetail;

	/**
	 * 订单金额
	 */
	@TableField(value = "order_money")
	private BigDecimal orderMoney;

	/**
	 * 优惠券id
	 */
	@TableField(value = "coupon_id")
	private Long couponId;

	/**
	 * 优惠券详情
	 */
	@TableField(value = "coupon_detail")
	private String couponDetail;

	/**
	 * 订单状态:1、待支付，2、已支付，3、已备餐，4、已完成，5、未退款，6、退款中，7、已退款
	 */
	@TableField(value = "order_status")
	private String orderStatus;

	/**
	 * 退款说明
	 */
	@TableField(value = "refund_detail")
	private String refundDetail;

	/**
	 * 转账状态：1、已转账，2、未转账
	 */
	@TableField(value = "transfer_stauts")
	private String transferStauts;

	/**
	 * 用户id
	 */
	@TableField(value = "user_id")
	private Long userId;

	/**
	 * 用户手机号
	 */
	private String phone;

	/**
	 * 优惠券抵扣
	 */
	@TableField(value = "coupon_deduction")
	private BigDecimal couponDeduction;

	/**
	 * 平台分成
	 */
	@TableField(value = "platform_partion")
	private BigDecimal platformPartion;

	/**
	 * 合计收入
	 */
	@TableField(value = "sum_income")
	private BigDecimal sumIncome;

	/**
	 * 平台盈亏
	 */
	@TableField(value = "platform_profit")
	private BigDecimal platformProfit;

	/**
	 * 是否打款：1，是，2，否
	 */
	@TableField(value = "is_flag")
	private String isFlag;

	/**
	 * 取消订单原因
	 */
	@TableField(value = "cancle_message")
	private String cancleMessage;

	/**
	 * 操作人
	 */
	private String operater;

	/**
	 * 创建时间
	 */
	@TableField(value = "create_time")
	private Date createTime;

	/**
	 * 更新时间
	 */
	@TableField(value = "update_time")
	private Date updateTime;

	/**
	 * 是否提交过退款
	 */
	@TableField(value = "is_refund_flag")
	private String isRefundFlag;

	/**
	 * 备注
	 */
	private String remark;

	public String getIsRefundFlag() {
		return isRefundFlag;
	}

	public void setIsRefundFlag(String isRefundFlag) {
		this.isRefundFlag = isRefundFlag;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

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

	public String getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}

	public String getTakeAddress() {
		return takeAddress;
	}

	public void setTakeAddress(String takeAddress) {
		this.takeAddress = takeAddress;
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

	public BigDecimal getOrderMoney() {
		return orderMoney;
	}

	public void setOrderMoney(BigDecimal orderMoney) {
		this.orderMoney = orderMoney;
	}

	public Long getCouponId() {
		return couponId;
	}

	public void setCouponId(Long couponId) {
		this.couponId = couponId;
	}

	public String getCouponDetail() {
		return couponDetail;
	}

	public void setCouponDetail(String couponDetail) {
		this.couponDetail = couponDetail;
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

	public String getTransferStauts() {
		return transferStauts;
	}

	public void setTransferStauts(String transferStauts) {
		this.transferStauts = transferStauts;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public String getIsFlag() {
		return isFlag;
	}

	public void setIsFlag(String isFlag) {
		this.isFlag = isFlag;
	}

	public String getCancleMessage() {
		return cancleMessage;
	}

	public void setCancleMessage(String cancleMessage) {
		this.cancleMessage = cancleMessage;
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
