package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 优惠券消费回调失败记录表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_coupon_callback_fail")
public class BfCouponCallbackFail extends Model<BfCouponCallbackFail> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;
	
	/**
	 * 优惠券id
	 */
	@TableField(value="coupon_id")
	private Long couponId;

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
	 * 优惠券码信息
	 */
	@TableField(value="coupon_code")
	private String couponCode;

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
	 * 回调失败消息
	 */
	@TableField(value="callback_fail_msg")
	private String callbackFailMsg;

	/**
	 * 是否已经处理。0-未处理  1-已处理
	 */
	@TableField(value="managed_flag")
	private Integer managedFlag;

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

	public Long getCouponId() {
		return couponId;
	}

	public void setCouponId(Long couponId) {
		this.couponId = couponId;
	}

	public String getCouponCode() {
		return couponCode;
	}

	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
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

	public String getCallbackFailMsg() {
		return callbackFailMsg;
	}

	public void setCallbackFailMsg(String callbackFailMsg) {
		this.callbackFailMsg = callbackFailMsg;
	}

	public Integer getManagedFlag() {
		return managedFlag;
	}

	public void setManagedFlag(Integer managedFlag) {
		this.managedFlag = managedFlag;
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

	@Override
	protected Serializable pkVal() {
		// TODO Auto-generated method stub
		return null;
	}
}
