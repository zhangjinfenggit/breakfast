package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 抽成规则表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_commission")
public class BfCommission extends Model<BfCommission> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 抽成金额
	 */
	@TableField(value="extract_money")
	private BigDecimal extractMoney;

	/**
	 * 区间大于
	 */
	@TableField(value="section_left")
	private BigDecimal sectionLeft;

	/**
	 * 小于等于
	 */
	@TableField(value="section_right")
	private BigDecimal sectionRight;

	/**
	 * 排序sort
	 */
	@TableField(value="order_num")
	private Integer orderNum;

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

	public BigDecimal getExtractMoney() {
		return extractMoney;
	}

	public void setExtractMoney(BigDecimal extractMoney) {
		this.extractMoney = extractMoney;
	}

	public BigDecimal getSectionLeft() {
		return sectionLeft;
	}

	public void setSectionLeft(BigDecimal sectionLeft) {
		this.sectionLeft = sectionLeft;
	}

	public BigDecimal getSectionRight() {
		return sectionRight;
	}

	public void setSectionRight(BigDecimal sectionRight) {
		this.sectionRight = sectionRight;
	}

	public Integer getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
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
