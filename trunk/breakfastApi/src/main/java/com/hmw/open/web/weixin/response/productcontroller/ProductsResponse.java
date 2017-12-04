package com.hmw.open.web.weixin.response.productcontroller;

import java.util.List;

import com.hmw.open.model.BfPackageProduct;
import com.hmw.open.model.BfSingeProduct;

/**
 * 封装 单品对象 和 套餐对象
 * @author zhulei
 * @time 2017-10-07
 */
public class ProductsResponse {
	
	private List<BfSingeProduct>  singeProductList;
	
	private List<BfPackageProduct> packageProductList;
	
	

	public List<BfSingeProduct> getSingeProductList() {
		return singeProductList;
	}

	public void setSingeProductList(List<BfSingeProduct> singeProductList) {
		this.singeProductList = singeProductList;
	}

	public List<BfPackageProduct> getPackageProductList() {
		return packageProductList;
	}

	public void setPackageProductList(List<BfPackageProduct> packageProductList) {
		this.packageProductList = packageProductList;
	}
	
	
	
	
	
}
