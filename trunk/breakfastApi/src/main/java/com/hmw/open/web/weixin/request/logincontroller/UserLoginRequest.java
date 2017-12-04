package com.hmw.open.web.weixin.request.logincontroller;

/**
 * 微信用户登录注册
 * @author bing.cheng
 *
 */
public class UserLoginRequest {
	/** 手机号码*/
	private String phone;
	
	/** 验证码*/
	private String code;
	
	/** 推荐人手机号码*/
	private String recommenderPhone;
	
	/** openid*/
	private String openid;

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getRecommenderPhone() {
		return recommenderPhone;
	}

	public void setRecommenderPhone(String recommenderPhone) {
		this.recommenderPhone = recommenderPhone;
	}

	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}
}

