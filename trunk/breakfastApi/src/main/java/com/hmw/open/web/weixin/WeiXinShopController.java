package com.hmw.open.web.weixin;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
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
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.model.BfShop;
import com.hmw.open.model.BfSubwayLine;
import com.hmw.open.service.IBfShopService;
import com.hmw.open.service.IBfSubwayLineService;
import com.hmw.open.service.impl.CacheServiceImpl;
import com.hmw.open.web.weixin.request.shopcontroller.QueryShopRequest;
import com.hmw.open.web.weixin.request.shopcontroller.QuerySubwayLineRequest;
import com.hmw.open.web.weixin.request.shopcontroller.SubwayRequest;
import com.hmw.open.web.weixin.response.shopcontroller.QueryShop;
import com.hmw.open.web.weixin.response.shopcontroller.SubwayResponse;

@Controller
@RequestMapping("/weixin")
public class WeiXinShopController {
	
	private final static Logger logger = Logger.getLogger(WeiXinShopController.class);
	
	@Autowired	
	IBfShopService bfShopService;
	
	@Autowired
	IBfSubwayLineService bfSubwayLineService;
	
	@Autowired
	RedisTemplate<String, String> redisTemplate;
	
	@Resource
	private CacheServiceImpl cacheService;
	
	/**
	 * 
	 * @param request
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = { "/subway" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult subway(HttpServletRequest request, @RequestBody SubwayRequest form) {
		try {
			BaseResult baseResult = BaseResult.success();
			List<BfSubwayLine> list =  new ArrayList();
			Wrapper<BfSubwayLine> wrapper = new EntityWrapper<BfSubwayLine>();
			if(form.getType().intValue() == 1){
				if(StringUtils.isEmpty(form.getCityName()) ){
					baseResult.fail("没输入城市。");
					return baseResult;
				}
//				wrapper.eq("city_name", form.getCityName());
				list = bfSubwayLineService.selectCityList(form.getCityName());
				List<SubwayResponse> resultList=new ArrayList();
				for(BfSubwayLine line:list){
					SubwayResponse response=new SubwayResponse();
					response.setId(line.getId());
					response.setName(line.getSubwayLine());
					resultList.add(response);
				}
				
				baseResult.setData(resultList);
				return baseResult;
			}
			else if(form.getType().intValue() == 2){
				if(StringUtils.isEmpty(form.getCityName()) ){
					baseResult.fail("没输入城市。");
					return baseResult;
				}
				if(StringUtils.isEmpty(form.getSubwayLine()) ){
					baseResult.fail("没输地铁线路。");
					return baseResult;
				}
//				wrapper.eq("city_name", form.getCityName());
//				wrapper.eq("subway_line", form.getSubwayLine());
				list = bfSubwayLineService.selectSubwayNameList(form.getCityName(),form.getSubwayLine());
				
				List<SubwayResponse> resultList=new ArrayList();
				for(BfSubwayLine line:list){
					SubwayResponse response=new SubwayResponse();
					response.setId(line.getId());
					response.setName(line.getSubwayName());
					resultList.add(response);
				}
				
				baseResult.setData(resultList);
				return baseResult;
			}
			else if(form.getType().intValue() == 3){
				if(StringUtils.isEmpty(form.getCityName()) ){
					baseResult.fail("没输入城市。");
					return baseResult;
				}
				if(StringUtils.isEmpty(form.getSubwayLine()) ){
					baseResult.fail("没输地铁线路。");
					return baseResult;
				}
				if(StringUtils.isEmpty(form.getSubwayName()) ){
					baseResult.fail("没输地铁站名。");
					return baseResult;
				}
//				wrapper.eq("city_name", form.getCityName());
//				wrapper.eq("subway_line", form.getSubwayLine());
//				wrapper.eq("subway_name", form.getSubwayName());
				list = bfSubwayLineService.selectSubwayOutList(form.getCityName(),form.getSubwayLine(),form.getSubwayName());
				
				List<SubwayResponse> resultList=new ArrayList();
				for(BfSubwayLine line:list){
					SubwayResponse response=new SubwayResponse();
					response.setId(line.getId());
					response.setName(line.getSubwayOut());
					resultList.add(response);
				}
				
				baseResult.setData(resultList);
				return baseResult;
			}
			else {
				baseResult.fail("输入的type不在1-3范围内");
				return baseResult;
			}

			
		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	
	@RequestMapping(value = { "/queryShop" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult queryShop(HttpServletRequest request,@RequestBody QueryShopRequest form) {
		try {
			BaseResult baseResult = BaseResult.success();
			List<QueryShop> resultList= null;
			//TODO
//			try {
//				
//				String shopListStr = this.redisTemplate.opsForValue().get(Constant.REDIS_WX_SHOPLIST+form.getOutId());
//				
//				if(null!=shopListStr){
//				
//					resultList = JSON.parseArray(shopListStr,QueryShop.class); 
//				}
//			} catch (Exception e) {
//				
//				logger.error("Redis error 加载缓存中的店铺列表失败", e);
//			}
			
			if(resultList==null){
				
				resultList = new ArrayList();
				List<BfShop> shops =  new ArrayList();
				Wrapper<BfShop> wrapper = new EntityWrapper<BfShop>();
				
				wrapper.eq("subway_id", form.getOutId());
				wrapper.eq("business_status", 1);//1 营业中 2打烊
				shops = bfShopService.selectList(wrapper);
				
				for(BfShop shop:shops){
					QueryShop qs=new QueryShop();
					qs.setId(shop.getId());
					qs.setName(shop.getName());
					qs.setPosition(shop.getPosition());
					qs.setPhoto(shop.getPhoto());
					qs.setAddress(shop.getAddress());
					qs.setLatitude(shop.getLatitude());
					qs.setLongitude(shop.getLongitude());
					qs.setSubwayId(shop.getSubwayId());
					qs.setBusinessStatus(shop.getBusinessStatus());
					resultList.add(qs);
				}
				//TODO
//				try {
//					
//					this.redisTemplate.opsForValue().set(Constant.REDIS_WX_SHOPLIST+form.getOutId(), JSON.toJSONString(resultList));
//				} catch (Exception e) {
//					// TODO: handle exception
//				}
			}
			baseResult.setData(resultList);
			return baseResult;
		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	@RequestMapping(value = { "/querySubwayLine" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult querySubwayLine(HttpServletRequest request,@RequestBody QuerySubwayLineRequest form) {
		try {
			BaseResult baseResult = BaseResult.success();
			
			BfSubwayLine line = null ;

			//TODO
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

			
//			if(line==null){
//				line = bfSubwayLineService.selectById(form.getId());
//				//TODO
//				try {
//					this.redisTemplate.opsForValue().set(Constant.REDIS_APP_SUBWAY+form.getId(), JSON.toJSONString(line));
//				} catch (Exception e) {
//					
//					logger.error("redis Error Redis更新地铁的信息Error，AppShopController : querySubwayLine", e);
//				}
//			}
			
			line = bfSubwayLineService.selectById(form.getId());

			baseResult.setData(line);
			return baseResult;
		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	
	


}
