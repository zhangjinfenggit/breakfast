package com.hmw.open.common.enums;
/**
 * 
 * 驾驶员：0  
 * 随车照管员：1 
 * 家长：2 
 * 保险员、维修员、班主任、管理员：3
 * @author bing.cheng
 *
 */
public enum UserTypeEnums {

	DRIVER(0, "驾驶员"),
	CAREGIVER(1, "随车照管员"),
	PARENT(2, "家长"),
	OTHER(3, "保险员、维修员、班主任、管理员 (监管单位的用户登录)");
	
	private Integer code;
	private String desc;
	
	UserTypeEnums(Integer code, String desc) {
		this.code = code;
		this.desc = desc;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
	

}
