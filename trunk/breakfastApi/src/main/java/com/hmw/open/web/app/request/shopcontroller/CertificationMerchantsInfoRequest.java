package com.hmw.open.web.app.request.shopcontroller;

/**
 * 店铺认证的请求参数
 * @author zhangjinfeng
 *
 */
public class CertificationMerchantsInfoRequest {

	/**身份证照片---正面*/
	private String cardPhotoU;
	/**身份证照片---反面*/
	private String cardPhotoO;
	/**营业执照*/
	private String businessPhoto;
	/**餐饮行业许可证(或卫生许可证)*/
	private String licensePhoto;
	/**店铺id*/
	private Long shopId;
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
	public Long getShopId() {
		return shopId;
	}
	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}
}
