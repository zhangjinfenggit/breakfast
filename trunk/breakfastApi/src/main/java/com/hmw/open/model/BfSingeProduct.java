package com.hmw.open.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 店铺单品商品表
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_singe_product")
public class BfSingeProduct extends Model<BfSingeProduct> {

    private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 单品名称
	 */
	@TableField(value="single_name")
	private String singleName;

	/**
	 * 单品单价
	 */
	@TableField(value="single_money")
	private BigDecimal singleMoney;

	/**
	 * 每日预销售数量
	 */
	@TableField(value="single_amount")
	private Integer singleAmount;

	/**
	 * 实际售卖数据
	 */
	@TableField(value="real_amount")
	private Integer realAmount;

	/**
	 * 商品状态:1、售卖中2、已售罄
	 */
	private String status;

	/**
	 * 商品图片
	 */
	private String photo;

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
	 * 单品类型：1.套餐内单品，2、非套餐内
	 */
	@TableField(value="single_type")
	private String singleType;

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

	public String getSingleName() {
		return singleName;
	}

	public void setSingleName(String singleName) {
		this.singleName = singleName;
	}

	public BigDecimal getSingleMoney() {
		return singleMoney;
	}

	public void setSingleMoney(BigDecimal singleMoney) {
		this.singleMoney = singleMoney;
	}

	public Integer getSingleAmount() {
		return singleAmount;
	}

	public void setSingleAmount(Integer singleAmount) {
		this.singleAmount = singleAmount;
	}

	public Integer getRealAmount() {
		return realAmount;
	}

	public void setRealAmount(Integer realAmount) {
		this.realAmount = realAmount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
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

	public String getSingleType() {
		return singleType;
	}

	public void setSingleType(String singleType) {
		this.singleType = singleType;
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
