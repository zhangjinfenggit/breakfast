package com.hmw.open.web.app.response.logincontroller;

/**
 * 商家登录返回
 * 
 * @author bing.cheng
 *
 */
public class MerchantLoginResponse {
	/** token */
	private String apptoken;

	/** 登录类型：0 注册 1 登录 */
	private Integer type;

	/**
	 * 消息推送的别名
	 * 
	 * @return
	 */
	private Long alias;
	/**
	 * 店铺注册信息的状态
	 */
	private String infoStatus;

	public String getInfoStatus() {
		return infoStatus;
	}

	public void setInfoStatus(String infoStatus) {
		this.infoStatus = infoStatus;
	}

	public Long getAlias() {
		return alias;
	}

	public void setAlias(Long alias) {
		this.alias = alias;
	}

	public String getApptoken() {
		return apptoken;
	}

	public void setApptoken(String apptoken) {
		this.apptoken = apptoken;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

}
