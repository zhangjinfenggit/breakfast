package com.hmw.open.web.app;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
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
import com.hmw.open.common.constants.ShopErrorCode;
import com.hmw.open.common.constants.UserTokenConstants;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.model.BfSubwayLine;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.IBfSubwayLineService;
import com.hmw.open.service.impl.AppShopServiceImpl;
import com.hmw.open.service.impl.CacheServiceImpl;
import com.hmw.open.web.app.request.shopcontroller.AddMerchantsInfoRequest;
import com.hmw.open.web.app.request.shopcontroller.CertificationMerchantsInfoRequest;
import com.hmw.open.web.app.request.shopcontroller.PackageProductRequest;
import com.hmw.open.web.app.request.shopcontroller.QuerySubwayIdRequest;
import com.hmw.open.web.app.request.shopcontroller.QuerySubwayLineRequest;
import com.hmw.open.web.app.request.shopcontroller.SingleProductRequest;
import com.hmw.open.web.app.request.shopcontroller.SubwayRequest;
import com.hmw.open.web.app.request.shopcontroller.UpdateMerchantsInfoRequest;
import com.hmw.open.web.app.response.shopcontroller.SubwayResponse;

@Controller
@RequestMapping("/app")
@SuppressWarnings("all")
public class AppShopController {

	private final static Logger logger = Logger.getLogger(AppShopController.class);

	@Autowired
	AppShopServiceImpl appShopService;

	@Resource
	private CacheServiceImpl cacheService;

	@Autowired
	IBfSubwayLineService bfSubwayLineService;
	
	@Autowired
	RedisTemplate<String, String> redisTemplate;

	
	/**
	 * 获取商品信息
	 * 
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/goodsList" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult goodsList(HttpServletRequest request) {
		try {
			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			// 获取所有套餐信息和单品
			return appShopService.getCodegoodsList(userVo);
		} catch (Exception e) {
			logger.error("商家用户 goodsList error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/**
	 * 添加单件商品
	 * 
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/addSingle" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult addSingle(HttpServletRequest request, @RequestBody SingleProductRequest form) {
		try {
			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			if (null == form || StringUtil.isEmpty(form.getSingleName()) || form.getSingleAmount() < 0
					|| form.getSingleMoney() == null) {
				logger.error("添加套餐商品, 入参错误 ，参数为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(ShopErrorCode.ParaCheckErrorRetCode, ShopErrorCode.ParaCheckErrorRetInfo);
			}
			// 添加商品操作的具体的业务逻辑
			return appShopService.setSingleProduct(form, userVo);
		} catch (Exception e) {
			logger.error("商家用户 addSingle error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/**
	 * 添加套餐商品
	 * 
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/addGoodsTC" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult addGoodsTC(HttpServletRequest request, @RequestBody PackageProductRequest form) {
		try {

			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			if (null == form || form.getPackAmount() < 0 || form.getPackName() == null
					|| form.getSingleList() == null) {
				logger.error("添加套餐商品, 入参错误 ，参数为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(ShopErrorCode.ParaCheckErrorRetCode, ShopErrorCode.ParaCheckErrorRetInfo);
			}
			// 添加套餐商品操作的具体的业务逻辑
			return appShopService.setPackageProduct(form, userVo);
		} catch (Exception e) {
			logger.error("商家用户addGoodsTC:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/**
	 * 店铺信息认证
	 * 
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/certificationMerchantsInfo" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult certificationMerchantsInfo(HttpServletRequest request,
			@RequestBody CertificationMerchantsInfoRequest form) {
		try {
			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			if (null == form || StringUtil.isEmpty(form.getBusinessPhoto()) || StringUtil.isEmpty(form.getCardPhotoO())
					|| StringUtil.isEmpty(form.getCardPhotoU()) || StringUtil.isEmpty(form.getLicensePhoto())) {
				logger.error("店铺认证失败, 入参错误 ，参数为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(ShopErrorCode.ParaCheckErrorRetCode, ShopErrorCode.ParaCheckErrorRetInfo);
			}
			ServletContext sc = request.getSession().getServletContext();
			// String dir = "/usr/local/nginx/html/coupon";
			String dir = sc.getRealPath("/upload"); // 设定保存文件路径

			// 店铺信息认证操作的具体的业务逻辑
			return appShopService.certificationMerchantsInfo(form, userVo, dir);
		} catch (Exception e) {
			logger.error("商家用户 certificationMerchantsInfo:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/**
	 * 更新店铺信息
	 * 
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/updateMerchantsInfo" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult updateMerchantsInfo(HttpServletRequest request,
			@RequestBody UpdateMerchantsInfoRequest form) {
		try {
			// 获取缓存中的商家和用户信息
			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);

			/*if (null == form || StringUtil.isEmpty(form.getAddress())) {
				logger.error("更新店铺信息, 入参错误 ，参数为： " + JSON.toJSONString(form), null);
				return BaseResult.fail(ShopErrorCode.ParaCheckErrorRetCode, ShopErrorCode.ParaCheckErrorRetInfo);
			}*/
			
			String token = request.getHeader(UserTokenConstants.appToken);
			// 更新店铺信息操作的具体的业务逻辑
			return appShopService.updateMerchantsInfo(form, userVo,token);
		} catch (Exception e) {
			logger.error("商家用户 certificationMerchantsInfo:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/***
	 * 商家基本信息填写
	 * 
	 * @param requset
	 * @return
	 */
	@RequestMapping(value = { "/addMerchantsInfo" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult addMerchantsInfo(HttpServletRequest request,
			@RequestBody AddMerchantsInfoRequest form) {
		try {
			if (form == null || StringUtil.isEmpty(form.getName()) || StringUtil.isEmpty(form.getSubwayId())
					|| StringUtil.isEmpty(form.getLongitude()) || StringUtil.isEmpty(form.getLatitude())
					|| StringUtil.isEmpty(form.getAddress()) || StringUtil.isEmpty(form.getPhoto())) {
				logger.error(ErrorCode.ParaCheckErrorRetInfo + "获取订单处理参数" + JSON.toJSONString(form), null);
				return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
			}

			ServletContext sc = request.getSession().getServletContext();
			// String dir = "/usr/local/nginx/html/coupon";
			String dir = sc.getRealPath("/upload"); // 设定保存文件路径

			UserBaseInfoVo userVo = cacheService.getUserInfoJsonFromCache(request);
			return appShopService.addMerchantsInfo(form, userVo, dir);
		} catch (Exception e) {
			logger.error("获取商家信息 error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/**
	 * 根据地铁口id查询地铁信息
	 * 
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/querySubwayLine" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult querySubwayLine(HttpServletRequest request,
			@RequestBody QuerySubwayLineRequest form) {
		try {
			BaseResult baseResult = BaseResult.success();
			BfSubwayLine line = null ; 
//			try{
//				String subwayStr = this.redisTemplate.opsForValue().get(Constant.REDIS_APP_SUBWAY+form.getId());
//				
//				if(subwayStr!=null){
//					
//					line = JSON.parseObject(subwayStr, BfSubwayLine.class);
//				}
//			}catch(Exception e){
//				
//				logger.error("redis Error 从Redis中取地铁的信息Error，AppShopController : querySubwayLine", e);
//			}
			
			line = bfSubwayLineService.selectById(form.getId());

//			if(line==null){
//				
//				line = bfSubwayLineService.selectById(form.getId());
//				try {
//					this.redisTemplate.opsForValue().set(Constant.REDIS_APP_SUBWAY+form.getId(), JSON.toJSONString(line));
//				} catch (Exception e) {
//					
//					logger.error("redis Error Redis更新地铁的信息Error，AppShopController : querySubwayLine", e);
//				}
//			}
			baseResult.setData(line);
			return baseResult;
		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

	/**
	 * 添加地铁信息
	 * 
	 * @param request
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = { "/subway" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult subway(HttpServletRequest request, @RequestBody SubwayRequest form) {
		try {
			BaseResult baseResult = BaseResult.success();
			List<BfSubwayLine> list = new ArrayList();
			//Wrapper<BfSubwayLine> wrapper = new EntityWrapper<BfSubwayLine>();
			if (form.getType().intValue() == 1) {
				if (StringUtils.isEmpty(form.getCityName())) {
					baseResult.fail("没输入城市。");
					return baseResult;
				}
				//wrapper.eq("city_name", form.getCityName());
				//list = bfSubwayLineService.selectList(wrapper);
				list = bfSubwayLineService.selectCityList(form.getCityName());
				List<SubwayResponse> resultList = new ArrayList();
				for (BfSubwayLine line : list) {
					SubwayResponse response = new SubwayResponse();
					response.setId(line.getId());
					response.setName(line.getSubwayLine());
					resultList.add(response);
				}

				baseResult.setData(resultList);
				return baseResult;
			} else if (form.getType().intValue() == 2) {
				if (StringUtils.isEmpty(form.getCityName())) {
					baseResult.fail("没输入城市。");
					return baseResult;
				}
				if (StringUtils.isEmpty(form.getSubwayLine())) {
					baseResult.fail("没输地铁线路。");
					return baseResult;
				}
//				wrapper.eq("city_name", form.getCityName());
//				wrapper.eq("subway_line", form.getSubwayLine());
				//list = bfSubwayLineService.selectList(wrapper);
				list = bfSubwayLineService.selectSubwayNameList(form.getCityName(),form.getSubwayLine());
				
				List<SubwayResponse> resultList = new ArrayList();
				for (BfSubwayLine line : list) {
					SubwayResponse response = new SubwayResponse();
					response.setId(line.getId());
					response.setName(line.getSubwayName());
					resultList.add(response);
				}

				baseResult.setData(resultList);
				return baseResult;
			} else if (form.getType().intValue() == 3) {
				if (StringUtils.isEmpty(form.getCityName())) {
					baseResult.fail("没输入城市。");
					return baseResult;
				}
				if (StringUtils.isEmpty(form.getSubwayLine())) {
					baseResult.fail("没输地铁线路。");
					return baseResult;
				}
				if (StringUtils.isEmpty(form.getSubwayName())) {
					baseResult.fail("没输地铁站名。");
					return baseResult;
				}
//				wrapper.eq("city_name", form.getCityName());
//				wrapper.eq("subway_line", form.getSubwayLine());
//				wrapper.eq("subway_name", form.getSubwayName());
//				list = bfSubwayLineService.selectList(wrapper);

				list = bfSubwayLineService.selectSubwayOutList(form.getCityName(),form.getSubwayLine(),form.getSubwayName());
				
				List<SubwayResponse> resultList = new ArrayList();
				for (BfSubwayLine line : list) {
					SubwayResponse response = new SubwayResponse();
					response.setId(line.getId());
					response.setName(line.getSubwayOut());
					resultList.add(response);
				}

				baseResult.setData(resultList);
				return baseResult;
			} else {
				baseResult.fail("输入的type不在1-3范围内");
				return baseResult;
			}

		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	/**
	 * 根据城市 地铁线路  地铁站 出口名 查讯 地铁id 
	 * @param request
	 * @param form
	 * @return
	 */
	@RequestMapping(value = { "/querySubwayId" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult querySubwayId(HttpServletRequest request, @RequestBody QuerySubwayIdRequest form) {
		try {
			BaseResult baseResult = BaseResult.success();
			BfSubwayLine line = null ;
			
			if(null==form || StringUtil.isEmpty(form.getCityName())|| StringUtil.isEmpty(form.getSubwayLine())
					|| StringUtil.isEmpty(form.getSubwayName()) || StringUtil.isEmpty(form.getSubwayOut())){
				
				logger.error("根据城市 地铁线路  地铁站 出口名 查讯 地铁id： " + JSON.toJSONString(form), null);
				return BaseResult.fail(ErrorCode.ParaCheckErrorRetCode, ErrorCode.ParaCheckErrorRetInfo);
			}
			Wrapper<BfSubwayLine> wrapper = new EntityWrapper<BfSubwayLine>();
			
			wrapper.eq("city_name", form.getCityName());
			wrapper.eq("subway_line", form.getSubwayLine());
			wrapper.eq("subway_name", form.getSubwayName());
			wrapper.eq("subway_out", form.getSubwayOut());
			
			line =  bfSubwayLineService.selectOne(wrapper);
			baseResult.setData(line);
			return baseResult;
		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}

}
