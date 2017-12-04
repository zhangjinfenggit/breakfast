package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 店铺套餐商品表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_package_product")
public class BfPackageProduct extends Model<BfPackageProduct> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 套餐名称
	 */
	@TableField(value="package_name")
	private String packageName;

	/**
	 * 套餐价格
	 */
	@TableField(value="package_money")
	private BigDecimal packageMoney;

	/**
	 * 每日预计数量
	 */
	@TableField(value="package_amount")
	private Integer packageAmount;

	/**
	 * 实际售卖数据
	 */
	@TableField(value="real_amount")
	private Integer realAmount;

	/**
	 * 套餐状态：1、售卖中，2、已售罄
	 */
	@TableField(value="pack_status")
	private Integer packStatus;
	
	/**
	 * 店铺id
	 */
	@TableField(value="shop_id")
	private Long shopId;

	/**
	 * 店铺名
	 */
	private String name;

	/**
	 * 单品列表id_list（逗号分隔）
	 */
	@TableField(value="single_id")
	private String singleId;

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

	/**
	 * 单品集合
	 */
	@TableField(exist=false)
	private List<BfSingeProduct> bfSingeProductList = new ArrayList();
	
	

	public List<BfSingeProduct> getBfSingeProductList() {
		return bfSingeProductList;
	}

	public void setBfSingeProductList(List<BfSingeProduct> bfSingeProductList) {
		this.bfSingeProductList = bfSingeProductList;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public BigDecimal getPackageMoney() {
		return packageMoney;
	}

	public void setPackageMoney(BigDecimal packageMoney) {
		this.packageMoney = packageMoney;
	}

	public Integer getPackageAmount() {
		return packageAmount;
	}

	public void setPackageAmount(Integer packageAmount) {
		this.packageAmount = packageAmount;
	}

	public Integer getRealAmount() {
		return realAmount;
	}

	public void setRealAmount(Integer realAmount) {
		this.realAmount = realAmount;
	}

	
	public Integer getPackStatus() {
		return packStatus;
	}

	public void setPackStatus(Integer packStatus) {
		this.packStatus = packStatus;
	}

	public Long getShopId() {
		return shopId;
	}

	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSingleId() {
		return singleId;
	}

	public void setSingleId(String singleId) {
		this.singleId = singleId;
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
