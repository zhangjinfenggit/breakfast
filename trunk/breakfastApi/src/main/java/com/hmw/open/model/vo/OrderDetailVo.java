package com.hmw.open.model.vo;

import java.util.ArrayList;
import java.util.List;

public class OrderDetailVo {
	private List<PackProductDetailVo> packProductList = new ArrayList();
	private List<SingleProductDetailVo> singleProductList = new ArrayList();
	
	
	
	public List<PackProductDetailVo> getPackProductList() {
		return packProductList;
	}
	public void setPackProductList(List<PackProductDetailVo> packProductList) {
		this.packProductList = packProductList;
	}
	public List<SingleProductDetailVo> getSingleProductList() {
		return singleProductList;
	}
	public void setSingleProductList(List<SingleProductDetailVo> singleProductList) {
		this.singleProductList = singleProductList;
	}
}
