package com.hmw.open.model;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 
 * </p>
 *
 * @author wx
 * @since 2017-10-04
 */
@TableName("bf_shop")
public class BfShop extends Model<BfShop> {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键id
	 */
	private Long id;

	/**
	 * 店铺名称
	 */
	private String name;

	/**
	 * 店铺位置
	 */
	private String position;

	/**
	 * 手机号
	 */
	private String phone;

	/**
	 * 门脸照
	 */
	private String photo;

	/**
	 * 详细地址
	 */
	private String address;

	/**
	 * 经度
	 */
	private Double longitude;

	/**
	 * 纬度
	 */
	private Double latitude;

	/**
	 * 开户人姓名
	 */
	@TableField(value = "card_name")
	private String cardName;

	/**
	 * 银行卡号（也是收款卡号）
	 */
	@TableField(value = "card_no")
	private String cardNo;

	/**
	 * 身份证照片---正面
	 */
	@TableField(value = "card_photo_u")
	private String cardPhotoU;

	/**
	 * 身份证照片---反面
	 */
	@TableField(value = "card_photo_o")
	private String cardPhotoO;

	/**
	 * 营业执照
	 */
	@TableField(value = "business_photo")
	private String businessPhoto;

	/**
	 * 餐饮行业许可证(或卫生许可证)
	 */
	@TableField(value = "license_photo")
	private String licensePhoto;

	/**
	 * 注册时间(精确到日)
	 */
	@TableField(value = "register_time")
	private Date registerTime;

	/**
	 * 地铁表id
	 */
	@TableField(value = "subway_id")
	private Long subwayId;

	/**
	 * 状态：1、营业中 2、打烊（红色）
	 */
	@TableField(value = "business_status")
	private String businessStatus;

	/**
	 * 认证情况：1、已认证（绿色） 2、未认证（红色）
	 */
	@TableField(value = "certified_status")
	private String certifiedStatus;

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
	 * 备注
	 */
	private String remark;

	/**
	 * 开店信息是否完整：1、是，2、否
	 */
	@TableField(value = "is_flag")
	private String isFlag;

	/**
	 * 默认为0，注册成功为1，店铺信息填写为2，银行卡信息填写为3
	 */
	@TableField(value = "info_status")
	private String infoStatus;

	public String getInfoStatus() {
		return infoStatus;
	}

	public void setInfoStatus(String infoStatus) {
		this.infoStatus = infoStatus;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
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

	public String getCardPhotoU() {
		return cardPhotoU;
	}

	public void setCardPhotoU(String cardPhotoU) {
		this.cardPhotoU = cardPhotoU;
	}

	public String getCardPhotoO() {
		return cardPhotoO;
	}

	public void setCardPhotoO(String cardPhotoO) {
		this.cardPhotoO = cardPhotoO;
	}

	public String getBusinessPhoto() {
		return businessPhoto;
	}

	public void setBusinessPhoto(String businessPhoto) {
		this.businessPhoto = businessPhoto;
	}

	public String getLicensePhoto() {
		return licensePhoto;
	}

	public void setLicensePhoto(String licensePhoto) {
		this.licensePhoto = licensePhoto;
	}

	public Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public Long getSubwayId() {
		return subwayId;
	}

	public void setSubwayId(Long subwayId) {
		this.subwayId = subwayId;
	}

	public String getBusinessStatus() {
		return businessStatus;
	}

	public void setBusinessStatus(String businessStatus) {
		this.businessStatus = businessStatus;
	}

	public String getCertifiedStatus() {
		return certifiedStatus;
	}

	public void setCertifiedStatus(String certifiedStatus) {
		this.certifiedStatus = certifiedStatus;
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

	public String getIsFlag() {
		return isFlag;
	}

	public void setIsFlag(String isFlag) {
		this.isFlag = isFlag;
	}

	@Override
	protected Serializable pkVal() {
		// TODO Auto-generated method stub
		return null;
	}

}
