package com.hmw.open.web.weixin.response.shopcontroller;


public class QueryShop {
	
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
	
	private Long subwayId;
	
	private String businessStatus;
	

	

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

	
	

}
