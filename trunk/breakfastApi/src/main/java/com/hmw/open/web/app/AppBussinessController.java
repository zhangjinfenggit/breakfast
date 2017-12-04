package com.hmw.open.web.app;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.utils.BigDecimalUtil;
import com.hmw.open.model.BfBusinessRecordDay;
import com.hmw.open.model.BfOrder;
import com.hmw.open.model.UserBaseInfoVo;
import com.hmw.open.service.IBfBusinessRecordDayService;
import com.hmw.open.service.IBfOrderService;
import com.hmw.open.service.impl.CacheServiceImpl;

@Controller
@RequestMapping("/app")
public class AppBussinessController {
	
	private final static Logger logger = Logger.getLogger(AppBussinessController.class);
	
	@Autowired	
	IBfBusinessRecordDayService bfBusinessRecordDayService;
	
	@Autowired		
	IBfOrderService bfOrderService;
	
	@Resource
	private CacheServiceImpl cacheService;
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = { "/transferRecord" }, method = { RequestMethod.POST })
	public @ResponseBody BaseResult transferRecord(HttpServletRequest request) {
		try {
			BaseResult baseResult = BaseResult.success();
			
			UserBaseInfoVo user = cacheService.getUserInfoJsonFromCache(request);
			
			//获取转账记录
			Wrapper<BfBusinessRecordDay> wrapper = new EntityWrapper<BfBusinessRecordDay>();
			wrapper.eq("shop_id", user.getShopId());
			wrapper.orderBy("transfer_time",false);
			wrapper.eq("status", 1);
			//获取未转账记录,这个地方是自定义sql，并示例自定义sql分页
//			Page<BfBusinessRecordDay> page= new Page<BfBusinessRecordDay>(1, 1000);
//			Page<BfBusinessRecordDay> recordsList = bfBusinessRecordDayService.selectPage(page, wrapper);
			//组装结果
			List<BfBusinessRecordDay> recordsList = bfBusinessRecordDayService.selectList(wrapper);
			Map resultMap = new HashMap();
			resultMap.put("transfered", recordsList);
			
			
			//获取转账记录
//			Wrapper<BfBusinessRecordDay> wrapper2 = new EntityWrapper<BfBusinessRecordDay>();
//			wrapper2.eq("shop_id", user.getShopId());
//			wrapper2.orderBy("transfer_time",false);
//			wrapper2.ne("status", 1);
			//获取未转账记录,这个地方是自定义sql，并示例自定义sql分页
//			Page<BfBusinessRecordDay> page= new Page<BfBusinessRecordDay>(1, 1000);
//			Page<BfBusinessRecordDay> recordsList = bfBusinessRecordDayService.selectPage(page, wrapper);
			//组装结果
//			List<BfBusinessRecordDay> recordsList2 = bfBusinessRecordDayService.selectList(wrapper2);
			
			
			Wrapper<BfOrder> wrapper3 = new EntityWrapper<BfOrder>();
			wrapper3.eq("shop_id", user.getShopId());
			wrapper3.eq("transfer_stauts", 2);
//			wrapper3.ne("order_status", "1");
			wrapper3.eq("order_status", "4");
			List<BfOrder> recordsList2 = bfOrderService.selectList(wrapper3);
			
			BigDecimal untranferedMoney = new BigDecimal(0);
			if(recordsList2!=null){
				for(int i=0;i<recordsList2.size();i++){
					BigDecimal orderMoney = recordsList2.get(i).getOrderMoney();
					BigDecimal palteMoney =recordsList2.get(i).getPlatformPartion();
					BigDecimal transferMoney = BigDecimalUtil.sub(orderMoney, palteMoney);
					untranferedMoney = BigDecimalUtil.add(untranferedMoney,transferMoney);
				}
			}
			logger.info("跑完累加金额后值：" + untranferedMoney);
			resultMap.put("untranferedMoney", untranferedMoney);
			baseResult.setData(resultMap);
			return baseResult;
		} catch (Exception e) {
			logger.error("error:", e);
			return BaseResult.exception(e.getMessage());
		}
	}
	
	
	


}
