package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 优惠券发放表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_coupon_produce")
public class BfCouponProduce extends Model<BfCouponProduce> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 优惠券名
	 */
	@TableField(value="produce_name")
	private String produceName;

	/**
	 * 优惠券金额
	 */
	@TableField(value="produce_money")
	private BigDecimal produceMoney;

	/**
	 * 优惠券发放数量
	 */
	@TableField(value="produce_amount")
	private Integer produceAmount;

	/**
	 * 已发放数量
	 */
	@TableField(value="issued_amount")
	private Integer issuedAmount;

	/**
	 * 优惠券已使用数量
	 */
	@TableField(value="use_number")
	private Integer useNumber;

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
	@TableField(value="coupon_messge")
	private String couponMessge;

	/**
	 * 状态分为：1、正在发放，2、已发完，3、已过期，4、已停止
       
	 */
	@TableField(value="produce_status")
	private String produceStatus;

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

	public String getProduceName() {
		return produceName;
	}

	public void setProduceName(String produceName) {
		this.produceName = produceName;
	}

	public BigDecimal getProduceMoney() {
		return produceMoney;
	}

	public void setProduceMoney(BigDecimal produceMoney) {
		this.produceMoney = produceMoney;
	}

	public Integer getProduceAmount() {
		return produceAmount;
	}

	public void setProduceAmount(Integer produceAmount) {
		this.produceAmount = produceAmount;
	}

	public Integer getIssuedAmount() {
		return issuedAmount;
	}

	public void setIssuedAmount(Integer issuedAmount) {
		this.issuedAmount = issuedAmount;
	}

	public Integer getUseNumber() {
		return useNumber;
	}

	public void setUseNumber(Integer useNumber) {
		this.useNumber = useNumber;
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

	public String getCouponMessge() {
		return couponMessge;
	}

	public void setCouponMessge(String couponMessge) {
		this.couponMessge = couponMessge;
	}

	public String getProduceStatus() {
		return produceStatus;
	}

	public void setProduceStatus(String produceStatus) {
		this.produceStatus = produceStatus;
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
