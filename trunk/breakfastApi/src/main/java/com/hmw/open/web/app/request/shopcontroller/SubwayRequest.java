package com.hmw.open.web.app.request.shopcontroller;

/**
 * 添加地铁信息的请求参数
 * @author zhangjinfeng
 *
 */
public class SubwayRequest {
	private String cityName;
	private String subwayLine;
	private String subwayName;
	private String subwayOut;
	private  Integer type;
	
	
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getSubwayLine() {
		return subwayLine;
	}
	public void setSubwayLine(String subwayLine) {
		this.subwayLine = subwayLine;
	}
	public String getSubwayName() {
		return subwayName;
	}
	public void setSubwayName(String subwayName) {
		this.subwayName = subwayName;
	}
	public String getSubwayOut() {
		return subwayOut;
	}
	public void setSubwayOut(String subwayOut) {
		this.subwayOut = subwayOut;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	
	

}
