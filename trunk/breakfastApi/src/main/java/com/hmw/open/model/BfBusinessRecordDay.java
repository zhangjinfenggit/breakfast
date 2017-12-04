package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 账务详情表--定时任务表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_business_record_day")
public class BfBusinessRecordDay extends Model<BfBusinessRecordDay> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 转账时间
	 */
	@TableField(value="transfer_time")
	private Date transferTime;

	/**
	 * 到账时间
	 */
	@TableField(value="arrival_time")
	private Date arrivalTime;

	/**
	 * 店铺id
	 */
	@TableField(value="shop_id")
	private Long shopId;

	/**
	 * 收款店铺名
	 */
	@TableField(value="shop_name")
	private String shopName;

	/**
	 * 转账金额
	 */
	@TableField(value="transfer_money")
	private BigDecimal transferMoney;

	/**
	 * 转账日期(年-月-日）
	 */
	@TableField(value="transfer_day")
	private Date transferDay;

	/**
	 * 收款人
	 */
	@TableField(value="card_name")
	private String cardName;

	/**
	 * 收款卡号
	 */
	@TableField(value="card_no")
	private String cardNo;

	/**
	 * 手机号
	 */
	private String phone;

	/**
	 * 状态：1、成功，2、失败
	 */
	private String status;

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

	public Date getTransferTime() {
		return transferTime;
	}

	public void setTransferTime(Date transferTime) {
		this.transferTime = transferTime;
	}

	public Date getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(Date arrivalTime) {
		this.arrivalTime = arrivalTime;
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

	public BigDecimal getTransferMoney() {
		return transferMoney;
	}

	public void setTransferMoney(BigDecimal transferMoney) {
		this.transferMoney = transferMoney;
	}

	public Date getTransferDay() {
		return transferDay;
	}

	public void setTransferDay(Date transferDay) {
		this.transferDay = transferDay;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
