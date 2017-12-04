package com.hmw.open.web.app.request.shopcontroller;

import java.math.BigDecimal;
import java.util.List;

/**
 * 
 * 添加套餐商品的请求参数
 *
 */
public class PackageProductRequest {

	/**套餐名*/
	private String packName;
	/**套餐价格*/
	private BigDecimal packMoney;
	/**套餐预售数量*/
	private Integer packAmount;
	/**套餐内所包含的单品*/
	private List<SingleListInfo> singleList;
	
	public String getPackName() {
		return packName;
	}
	public void setPackName(String packName) {
		this.packName = packName;
	}
	public BigDecimal getPackMoney() {
		return packMoney;
	}
	public void setPackMoney(BigDecimal packMoney) {
		this.packMoney = packMoney;
	}
	public Integer getPackAmount() {
		return packAmount;
	}
	public void setPackAmount(Integer packAmount) {
		this.packAmount = packAmount;
	}
	public List<SingleListInfo> getSingleList() {
		return singleList;
	}
	public void setSingleList(List<SingleListInfo> singleList) {
		this.singleList = singleList;
	}

}
