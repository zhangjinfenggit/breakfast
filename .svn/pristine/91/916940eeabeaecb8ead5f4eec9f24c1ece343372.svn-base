package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 抽成默认规则表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_commission_rule")
public class BfCommissionRule extends Model<BfCommissionRule> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 规则名（当key为extract_default是默认抽成规则）
	 */
	@TableField(value="rule_key")
	private String ruleKey;

	/**
	 * 默认抽成金额
	 */
	@TableField(value="rule_value")
	private BigDecimal ruleValue;

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

	public String getRuleKey() {
		return ruleKey;
	}

	public void setRuleKey(String ruleKey) {
		this.ruleKey = ruleKey;
	}

	public BigDecimal getRuleValue() {
		return ruleValue;
	}

	public void setRuleValue(BigDecimal ruleValue) {
		this.ruleValue = ruleValue;
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
