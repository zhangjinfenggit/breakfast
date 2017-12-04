package com.hmw.open.web.weixin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.model.BfPackageProduct;
import com.hmw.open.model.BfSingeProduct;
import com.hmw.open.service.IBfPackageProductService;
import com.hmw.open.service.IBfSingeProductService;
import com.hmw.open.web.weixin.request.productcontroller.QueryProductRequest;
import com.hmw.open.web.weixin.response.productcontroller.ProductsResponse;

/**
 * 
 * @author zhulei
 * @time 2017-10-07 
 */
@Controller
@RequestMapping("/weixin")
public class WeiXinProductController {

	private final static Logger logger = Logger.getLogger(WeiXinProductController.class);
	
	@Autowired
	IBfSingeProductService bfSingeProductService;
	
	@Autowired
	IBfPackageProductService bfPackageProductService;
	
	@Autowired
	RedisTemplate<String, String> redisTemplate;
	
	/**
	 * 根据店铺id查询商品信息列表
	 * @param request
	 * @param shopId
	 * @return
	 */
	@RequestMapping(value = { "/queryProduct" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult queryProduct(HttpServletRequest request,@RequestBody QueryProductRequest form) {
		try {
			BaseResult baseResult = BaseResult.success();
			
			ProductsResponse pr = null ;
			
//			try {
//				
//				String productStr = this.redisTemplate.opsForValue().get(Constant.REDIS_WX_PRODUCT+form.getShopId());
//				if(null!=productStr){
//					pr = (ProductsResponse) JSON.parseObject(productStr,ProductsResponse.class);
//				}
//			} catch (Exception e) {
//				
//				logger.error("Redis error 从Redis中取数据 error，"
//						+ "WeiXinProductController : queryProduct", e);
//			}
			
//			if(pr==null){
				
				pr = new ProductsResponse();
				List<BfSingeProduct> singeProducts =  new ArrayList();
				Wrapper<BfSingeProduct> wrapper = new EntityWrapper<BfSingeProduct>();
				wrapper.eq("shop_id", form.getShopId());
				wrapper.eq("status", Constant.SALE_STATUS_1);
				wrapper.eq("single_type", Constant.SINGLE_TYPE_2);
	
				singeProducts = bfSingeProductService.selectList(wrapper);
				
				pr.setSingeProductList(singeProducts);
				
				List<BfPackageProduct> packageProductList = new ArrayList<>();
				Wrapper<BfPackageProduct> wrapper2 = new EntityWrapper<BfPackageProduct>();
				wrapper2.eq("shop_id", form.getShopId());
				wrapper2.eq("pack_status", Constant.SALE_STATUS_1);
	
				packageProductList = bfPackageProductService.selectList(wrapper2);
				for(BfPackageProduct packageProduct:packageProductList){
					if(StringUtils.isNotBlank(packageProduct.getSingleId())){
						List<BfSingeProduct> ppSingeProducts =  new ArrayList();
						String singleIds =  packageProduct.getSingleId();
						String[] listSingle = singleIds.split(",");
						for(String id:listSingle){
							Wrapper<BfSingeProduct> wrapper3 = new EntityWrapper<BfSingeProduct>();
							wrapper3.eq("id", id);
							wrapper3.eq("status", Constant.SALE_STATUS_1);
							wrapper3.eq("single_type", Constant.SINGLE_TYPE_1);
							BfSingeProduct singeProduct2 = bfSingeProductService.selectOne(wrapper3);
							packageProduct.getBfSingeProductList().add(singeProduct2);
						}
						//packageProduct.setSingleId(JSONObject.toJSONString(ppSingeProducts));
					}
					
			    }
			    pr.setPackageProductList(packageProductList);
			    
//			    try {
//					
//			    	this.redisTemplate.opsForValue().set(Constant.REDIS_WX_PRODUCT+form.getShopId(), 
//			    			JSON.toJSONString(pr));
//				} catch (Exception e) {
//					
//					logger.error("Redis Error,更新Redis中的数据Error", e);
//				}
//			}
			
			baseResult.setData(pr);
			
			return baseResult;
		} catch (Exception e) {
			logger.error("根据店铺id查询商品信息列表 queryProduct:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
}
