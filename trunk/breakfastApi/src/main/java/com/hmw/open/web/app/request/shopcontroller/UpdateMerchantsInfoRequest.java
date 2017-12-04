package com.hmw.open.web.app.request.shopcontroller;

/**
 * 更新店铺信息的请求参数
 * @author zhangjinfeng
 *
 */
public class UpdateMerchantsInfoRequest {

	/**
	 * 店铺地址
	 */
	private String address;
	
	/**
	 * 店铺Id
	 */
	private Long shopId;

	
	/** 店铺名称 */
	private String name;
	
	/**店铺门脸照*/
	private String photo;
	
	/**
	 * 手机号
	 */
	private String phone;
	
	/**
	 * 收款人姓名
	 */
	private String cardName;
	
	/**
	 * 收款人卡号
	 */
	private String cardNo;
	
	/**
	 * 经度
	 */
	private Double longitude;
	
	
	/**
	 * 纬度
	 */
	private Double latitude;
	
	/**
	 * 地铁Id
	 */
	private Long subwayId;
	
	
	
	
	public Long getSubwayId() {
		return subwayId;
	}

	public void setSubwayId(Long subwayId) {
		this.subwayId = subwayId;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Long getShopId() {
		return shopId;
	}

	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}
	
}
