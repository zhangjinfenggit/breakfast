package com.hmw.open.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.constants.ShopErrorCode;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.mapper.BfPackageProductMapper;
import com.hmw.open.mapper.BfShopMapper;
import com.hmw.open.mapper.BfSingeProductMapper;
import com.hmw.open.model.BfPackageProduct;
import com.hmw.open.model.BfShop;
import com.hmw.open.model.BfSingeProduct;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.IPictureService;
import com.hmw.open.web.app.request.shopcontroller.AddMerchantsInfoRequest;
import com.hmw.open.web.app.request.shopcontroller.CertificationMerchantsInfoRequest;
import com.hmw.open.web.app.request.shopcontroller.PackageProductRequest;
import com.hmw.open.web.app.request.shopcontroller.SingleListInfo;
import com.hmw.open.web.app.request.shopcontroller.SingleProductRequest;
import com.hmw.open.web.app.request.shopcontroller.UpdateMerchantsInfoRequest;

@Service
public class AppShopServiceImpl {

	private final static Logger logger = Logger.getLogger(AppShopServiceImpl.class);

	@Autowired
	RedisTemplate<String, String> redisTemplate;

	@Autowired
	BfSingeProductMapper bfSingeProductMapper;

	@Autowired
	BfPackageProductMapper bfPackageProductMapper;

	@Autowired
	BfShopMapper bfShopMapper;

	@Autowired
	RedisTemplate<String, UserBaseInfoVo> redisUserBaseInfoVoTemplate;

	@Autowired
	IPictureService pictureService;
	
	/**
	 * 根据token获取商家用户的信息，然后通过商家 用户的手机号，获取店铺，根据店铺获取店铺内的所有套餐和单品
	 * 
	 * @param form
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public BaseResult getCodegoodsList(UserBaseInfoVo userVo) throws Exception {

		BaseResult baseResult = null;
		List<BfSingeProduct> singeProductList = null;
		List<BfPackageProduct> packageProductList = null;

		String phone = userVo.getPhone();

		BfShop selectEntity = new BfShop();
		selectEntity.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectEntity);

		if (shop == null) {
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		}
		Map<String, Object> map = null;
		//TODO
//		try {
//			String product = redisTemplate.opsForValue().get(Constant.REDIS_APP_PRODUCT + shop.getId());
//			if (product != null) {
//				map = (Map<String, Object>) JSON.parse(product);
//			}
//		} catch (Exception e) {
//			logger.error("商品信息缓存异常, getCodegoodsList =" + userVo, e);
//		}

		if (map == null) {
			map = new HashMap<String, Object>();
			Long shopId = shop.getId();
			// 根据店铺id获取所有单品
			singeProductList = getBfSingeProductList(shopId);
			// 根据店铺Id获取所有的套餐
			packageProductList = getBfPackageProductList(shopId);
			map.put("singeProductList", singeProductList);
			map.put("packageProductList", packageProductList);
			map.put("businessStatus", shop.getBusinessStatus());
			//TODO
//			try {
//				String productList = JSON.toJSONString(map);
//				redisTemplate.opsForValue().set(Constant.REDIS_APP_PRODUCT + shop.getId(), productList);
//			} catch (Exception e) {
//				logger.error("商品信息缓存异常, getCodegoodsList =" + userVo, e);
//				throw new RuntimeException("redis 缓存出现异常");
//			}
		}

		baseResult = BaseResult.success();
		// 返回查询的信息
		baseResult.setData(map);

		return baseResult;
	}

	/**
	 * 根据店铺Id获取所有的单品
	 * 
	 * @param shopId
	 *            店铺Id
	 * @return 单品集合
	 */
	private List<BfSingeProduct> getBfSingeProductList(Long shopId) throws Exception {

		Wrapper<BfSingeProduct> wrapper = new EntityWrapper<BfSingeProduct>();
		wrapper.eq("shop_id", shopId).eq("single_type", Constant.SINGLE_TYPE_2);

		// 向数据库中进行查询
		return bfSingeProductMapper.selectList(wrapper);
	}

	/**
	 * 根据店铺Id获取所有的套餐
	 * 
	 * @param shopId
	 *            店铺Id
	 * @return 套餐集合
	 */
	private List<BfPackageProduct> getBfPackageProductList(Long shopId) throws Exception {

		Wrapper<BfPackageProduct> wrapper = new EntityWrapper<BfPackageProduct>();
		wrapper.eq("shop_id", shopId);
		// 向数据库中进行查询
		// List<BfPackageProduct> bfPackageProductList =
		// iBfPackageProductService.selectList(wrapper);
		List<BfPackageProduct> bfPackageProductList = bfPackageProductMapper.selectList(wrapper);
		// 判断套餐是否为空
		if (null != bfPackageProductList && bfPackageProductList.size() > 0) {

			for (BfPackageProduct bfPackageProduct : bfPackageProductList) {
				// 获取套餐内所有的商品Id
				String singleIdString = bfPackageProduct.getSingleId();
				if (StringUtil.isEmpty(singleIdString)) {
					// id为空
					logger.error(ShopErrorCode.GOODSLIST_SINGLEPRODUCTID_ISNULL + "，当前套餐为： "
							+ JSON.toJSONString(bfPackageProduct), null);
				} else {
					// 分割Id串
					String[] singleIds = singleIdString.split(",");
					// 创建套餐集合
					List<BfSingeProduct> singeProductList = new ArrayList<BfSingeProduct>();
					if (singleIds != null && singleIds.length > 0) {
						// 把套餐内的对象封装到List里面
						for (String singleId : singleIds) {
							singeProductList.add(bfSingeProductMapper.selectById(singleId));
						}
					}
					bfPackageProduct.setBfSingeProductList(singeProductList);
				}
			}

		}

		return bfPackageProductList;
	}

	/**
	 * 添加单件商品，并且把单件商品插入到当前的店铺中去
	 * 
	 * @param form
	 * @return
	 */
	public BaseResult setSingleProduct(SingleProductRequest form, UserBaseInfoVo userVo) throws Exception {

		BaseResult baseResult = null;
		String phone = null;
		phone = userVo.getPhone();
		
		BfShop selectEntity = new BfShop();
		selectEntity.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectEntity);
		if (shop == null) {
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		}

		BfSingeProduct singeProduct = new BfSingeProduct();
		// 封装店铺信息
		singeProduct.setShopId(shop.getId());
		singeProduct.setShopName(shop.getName());
		singeProduct.setSingleMoney(form.getSingleMoney());
		singeProduct.setSingleAmount(form.getSingleAmount());
		singeProduct.setSingleName(form.getSingleName());
		// 该接口为设置套餐
		singeProduct.setSingleType(Constant.SINGLE_TYPE_2);
		singeProduct.setCreateTime(new Date());
		singeProduct.setStatus(Constant.SALE_STATUS_1);
		// 设置当前的操作者
		singeProduct.setOperater(shop.getName());
		singeProduct.setRealAmount(form.getSingleAmount());
		bfSingeProductMapper.insert(singeProduct);
		//TODO
//		try {
//
//			redisTemplate.opsForValue().set(Constant.REDIS_APP_PRODUCT + shop.getId(), null);
//			redisTemplate.opsForValue().set(Constant.REDIS_WX_PRODUCT + shop.getId(), null);
//
//		} catch (Exception e) {
//
//			logger.error("商品信息缓存异常, 方法名为 ： setPackageProduct ", e);
//			throw new RuntimeException("redis 缓存出现异常");
//
//		}

		baseResult = BaseResult.success();
		// 返回查询的信息
		return baseResult;
	}

	/**
	 * 把套餐添加到套餐表中并且把单品也插入到单品表中
	 * 
	 * @param form
	 * @return
	 */
	@SuppressWarnings("null")
	public BaseResult setPackageProduct(PackageProductRequest form, UserBaseInfoVo userVo) throws Exception {

		String phone = null;

		phone = userVo.getPhone();

		BfShop selectEntity = new BfShop();
		selectEntity.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectEntity);
		if (shop == null) {
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		}

		List<SingleListInfo> singleList = form.getSingleList();

		if (singleList == null && singleList.size() < 1) {
			logger.error("往套餐添加单件商品信息失败：packageProduct信息 =" + form);
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		}
		String singleIdList = "";
		for (SingleListInfo singleListInfo : singleList) {
			// 添加套餐内的单品信息
			BfSingeProduct entity = new BfSingeProduct();
			entity.setSingleName(singleListInfo.getSingleName());
			entity.setShopId(shop.getId());
			entity.setShopName(shop.getName());
			entity.setCreateTime(new Date());
			entity.setSingleAmount(singleListInfo.getSingleNumber());
			entity.setStatus(Constant.SALE_STATUS_1);
			// 设置当前的操作者
			entity.setOperater(shop.getName());
			entity.setSingleType(Constant.SINGLE_TYPE_1);
			bfSingeProductMapper.insert(entity);
			singleIdList += entity.getId() + ",";
		}

		// 封装套餐信息
		BfPackageProduct bfPackageProduct = new BfPackageProduct();

		bfPackageProduct.setPackageName(form.getPackName());
		bfPackageProduct.setPackageAmount(form.getPackAmount());
		bfPackageProduct.setRealAmount(form.getPackAmount());
		bfPackageProduct.setPackageMoney(form.getPackMoney());
		bfPackageProduct.setShopId(shop.getId());
		bfPackageProduct.setName(shop.getName());
		bfPackageProduct.setCreateTime(new Date());
		bfPackageProduct.setSingleId(singleIdList);
		// 设置当前的操作者
		bfPackageProduct.setOperater(shop.getName());
		bfPackageProduct.setPackStatus(Integer.parseInt(Constant.SALE_STATUS_1));
		bfPackageProductMapper.insert(bfPackageProduct);
		//TODO
//		try {
//
//			redisTemplate.opsForValue().set(Constant.REDIS_APP_PRODUCT + shop.getId(), null);
//			redisTemplate.opsForValue().set(Constant.REDIS_WX_PRODUCT + shop.getId(), null);
//		} catch (Exception e) {
//
//			logger.error("商品信息缓存异常, 方法名为 ： setPackageProduct ", e);
//			throw new RuntimeException("redis 缓存出现异常");
//		}
		return BaseResult.success();
	}

	/**
	 * 店铺认证 根据商家提供的信息进行店铺认证
	 * 
	 * @param form
	 * @return
	 */
	public BaseResult certificationMerchantsInfo(CertificationMerchantsInfoRequest form, UserBaseInfoVo userVo,
			String dir) throws Exception {

		String phone = null;

		phone = userVo.getPhone();

		BfShop selectEntity = new BfShop();
		selectEntity.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectEntity);
		if (shop == null) {
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		}
		shop.setCardPhotoO(pictureService.fileUpload(form.getCardPhotoO()));
		shop.setBusinessPhoto(pictureService.fileUpload(form.getBusinessPhoto()));
		shop.setCardPhotoU(pictureService.fileUpload(form.getCardPhotoU()));
		shop.setLicensePhoto(pictureService.fileUpload(form.getLicensePhoto()));
		shop.setIsFlag("1");
		// 更改店铺的认证状态,更改为已认证
		shop.setCertifiedStatus(Constant.CERTIFIED_STATUS_1);

		bfShopMapper.updateById(shop);
		//TODO
//		try {
//			redisTemplate.opsForValue().set(Constant.REDIS_APP_SHOPINFO + userVo.getShopId(), null);
//			this.redisTemplate.opsForValue().set(Constant.REDIS_WX_SHOPLIST + shop.getSubwayId(), null);
//		} catch (Exception e) {
//			logger.error("更新Redis中的店铺信息 Error ，APPShopServiceImpl ： certificationMerchantsInfo", e);
//			throw new Exception();
//		}
		return BaseResult.success();
	}

	/**
	 * 更新店铺信息 根据商家提供的位置，更新当前店铺的位置
	 * 
	 * @param form
	 * @return
	 * @throws Exception
	 */
	public BaseResult updateMerchantsInfo(UpdateMerchantsInfoRequest form, UserBaseInfoVo userVo,String token) throws Exception {

		String phone = userVo.getPhone();
		BfShop selectEntity = new BfShop();
		selectEntity.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectEntity);
		
		Long subWayId = shop.getSubwayId();
		
		if (shop == null) {
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		}

		// 填充店铺位置信息
		if(!StringUtil.isEmpty(form.getAddress())){
			shop.setAddress(form.getAddress());
		}
		
		// 填充店铺门脸图片
		if(!StringUtil.isEmpty(form.getPhoto())){
			
			shop.setPhoto(pictureService.fileUpload(form.getPhoto()));
		}
		
		/*// 填充店铺联系电话
		if(!StringUtil.isEmpty(form.getPhone())){
		
			shop.setPhone(form.getPhone());
		}*/
		
		// 填充店铺店铺地图位置
		if(form.getLatitude()!=null && form.getLongitude()!=null){
				
				shop.setLatitude(form.getLatitude());
				shop.setLongitude(form.getLongitude());
		}
		// 填充店铺收款人姓名
		if(!StringUtil.isEmpty(form.getCardName())){
				
			shop.setCardName(form.getCardName());
		}
		// 填充店铺收款人卡号
		if(!StringUtil.isEmpty(form.getCardNo())){
						
			shop.setCardNo(form.getCardNo());
		}
		
		// 填充店铺地铁信息
		if(form.getSubwayId()!=null){
								
			shop.setSubwayId(form.getSubwayId());
		}
		// 填充店铺名称信息
		if(form.getName()!=null){
										
			shop.setName(form.getName());
		}
		
		// 填充店铺手机号信息
		if(form.getPhone()!=null){
			
			BfShop s = new BfShop();
			s.setPhone(form.getPhone());
			BfShop ss = bfShopMapper.selectOne(s);
			if(null!=ss){
				return BaseResult.fail("该手机号已经被注册，不能修改该手机号！");
			}
			shop.setPhone(form.getPhone());
			//TODO
//			redisUserBaseInfoVoTemplate.opsForValue().getOperations().delete(token);
			
		}
				
		bfShopMapper.updateById(shop);
		// 更新缓存信息
		//TODO
//		try {
//			
//			redisTemplate.opsForValue().set(Constant.REDIS_APP_SHOPINFO + userVo.getShopId(), null);
//			this.redisTemplate.opsForValue().set(Constant.REDIS_WX_SHOPLIST + shop.getSubwayId(), null);
//			this.redisTemplate.opsForValue().set(Constant.REDIS_WX_SHOPLIST + subWayId, null);
//		} catch (Exception e) {
//			logger.error("更新Redis中的店铺信息 Error ，APPShopServiceImpl ： addMerchantsInfo", e);
//			throw new Exception();
//		}

		return BaseResult.success();
	}

	/**
	 * 商家基本信息填写 根据前台传入的商家基本信息 修改并保存
	 * 
	 * @param form
	 * @return
	 */
	public BaseResult addMerchantsInfo(AddMerchantsInfoRequest form, UserBaseInfoVo userVo, String dir)
			throws Exception {

		String phone = userVo.getPhone();

		BfShop selectEntity = new BfShop();
		selectEntity.setPhone(phone);
		BfShop shop = bfShopMapper.selectOne(selectEntity);
		if (shop == null) {
			return BaseResult.fail(ErrorCode.NullPointerExceptionRetInfo, ErrorCode.NullPointerExceptionRetCode);
		}
		// 填充店铺信息
		shop.setAddress(form.getAddress());
		shop.setName(form.getName());
		shop.setSubwayId(Long.parseLong(form.getSubwayId()));
		shop.setLongitude(Double.parseDouble(form.getLongitude()));
		shop.setLatitude(Double.parseDouble(form.getLatitude()));
		shop.setCreateTime(new Date());
		shop.setPhoto(pictureService.fileUpload(form.getPhoto()));
		shop.setIsFlag("2");
		shop.setInfoStatus("2");
		shop.setBusinessStatus(Constant.BUSINESS_STATUS_2);
		bfShopMapper.updateById(shop);
		//TODO
//		try {
//
//			redisTemplate.opsForValue().set(Constant.REDIS_APP_SHOPINFO + userVo.getShopId(), null);
//			this.redisTemplate.opsForValue().set(Constant.REDIS_WX_SHOPLIST + shop.getSubwayId(), null);
//		} catch (Exception e) {
//			logger.error("更新Redis中的店铺信息 Error ，APPShopServiceImpl ： updateMerchantsInfo", e);
//			throw new Exception();
//		}
		return BaseResult.success();
	}



}
