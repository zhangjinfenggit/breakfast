package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 优惠券信息表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_coupon")
public class BfCoupon extends Model<BfCoupon> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 优惠券名
	 */
	@TableField(value="coupon_name")
	private String couponName;

	/**
	 * 优惠券金额
	 */
	@TableField(value="coupon_money")
	private BigDecimal couponMoney;

	/**
	 * 优惠券到期时间
	 */
	@TableField(value="overdue_time")
	private Date overdueTime;

	/**
	 * 优惠券类型：1、申请账号时发放，2、支付完成时发放，3、退款时发放，4、向推荐人发放，5、向指定用户发放
	 */
	private String type;

	/**
	 * 优惠券说明
	 */
	@TableField(value="coupon_message")
	private String couponMessage;

	/**
	 * 状态分为：1、未使用，2、已使用
            
	 */
	@TableField(value="coupon_status")
	private String couponStatus;

	/**
	 * 用户id
	 */
	@TableField(value="user_id")
	private Long userId;

	/**
	 * 用户手机号
	 */
	private String phone;

	/**
	 * 优惠券id
	 */
	@TableField(value="coupon_produce_id")
	private Long couponProduceId;

	/**
	 * 优惠券码信息
	 */
	@TableField(value="coupon_code")
	private String couponCode;

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

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public BigDecimal getCouponMoney() {
		return couponMoney;
	}

	public void setCouponMoney(BigDecimal couponMoney) {
		this.couponMoney = couponMoney;
	}

	public Date getOverdueTime() {
		return overdueTime;
	}

	public void setOverdueTime(Date overdueTime) {
		this.overdueTime = overdueTime;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCouponMessage() {
		return couponMessage;
	}

	public void setCouponMessage(String couponMessage) {
		this.couponMessage = couponMessage;
	}

	public String getCouponStatus() {
		return couponStatus;
	}

	public void setCouponStatus(String couponStatus) {
		this.couponStatus = couponStatus;
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

	public Long getCouponProduceId() {
		return couponProduceId;
	}

	public void setCouponProduceId(Long couponProduceId) {
		this.couponProduceId = couponProduceId;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
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
