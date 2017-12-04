package com.hmw.open.web.app.request.shopcontroller;

/**
 * 查询地铁id
 * @author zhangjinfeng
 *
 */
public class QuerySubwayIdRequest {

	/**
	 * 城市名
	 */
	private String cityName;
	
	/**
	 * 地铁路线
	 */
	private String subwayLine;
	
	/**
	 * 地铁站名
	 */
	private String subwayName;
	
	/**
	 * 地铁出口
	 */
	private String subwayOut;

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
	
	
	
}
