package com.hmw.open.web.app.request.shopcontroller;

/**
 * 前台传入的单品信息
 * @author zhangjinfeng
 *
 */
public class SingleListInfo {

	/**单品名称*/
	private String singleName;
	
	/**单品数量*/
	private Integer singleNumber;

	public String getSingleName() {
		return singleName;
	}

	public void setSingleName(String singleName) {
		this.singleName = singleName;
	}

	public Integer getSingleNumber() {
		return singleNumber;
	}

	public void setSingleNumber(Integer singleNumber) {
		this.singleNumber = singleNumber;
	}
	
	
}
