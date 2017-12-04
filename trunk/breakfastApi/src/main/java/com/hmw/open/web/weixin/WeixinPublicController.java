package com.hmw.open.web.weixin;

import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.common.utils.HttpClientUtil;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.model.BfUserWeixin;
import com.hmw.open.model.WechatTemplateMsg;
import com.hmw.open.service.IBfUserWeixinService;
import com.hmw.open.service.WeixinPublicService;


@Controller
@RequestMapping("/weixin")
public class WeixinPublicController {
	
	private final static Logger logger = Logger.getLogger(WeixinPublicController.class);
	
	@Value("#{configProperties['wechat.appid']}")
	private String appid;
	
	@Value("#{configProperties['wechat.appSecret']}")
	private String appSecret;
	
	@Autowired  
    private WeixinPublicService WeixinPublicService; 
	
	@Autowired  
    private IBfUserWeixinService userWeixinService;
	
	@Autowired
	RedisTemplate<String, String> redisTemplate;
	

	
	@RequestMapping(value = { "/oauthRegister" }, method = { RequestMethod.GET })
    public String oauthRegister(HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("******进入oauthRegister方法***sessionid是：**********"+request.getSession().getId());
		String openid =wechatOauth(request);
		logger.info("******结束oauthRegister方法*************");
		String phone = redisTemplate.opsForValue().get(openid);
		if(StringUtils.isNotBlank(phone)){
			logger.info("**进入oauthRegister菜单，用户已经登陆过重定向到店铺选择页，该用户手机号是：**"+phone);
			return "redirect:/sel_shops.html";
		}else {
			logger.info("**进入oauthRegister菜单，用户没有登陆过重定向到注册页面**");
			 return "redirect:/register.html";
		}
    }
	
	@RequestMapping(value = { "/oauthOrderHistory" }, method = { RequestMethod.GET })
    public String oauthOrderHistery(HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("******进入oauthOrderHistory方法****sessionid是：**********"+request.getSession().getId());
		String openid = wechatOauth(request);
		logger.info("******结束oauthRegister方法*************");
		String phone = redisTemplate.opsForValue().get(openid);
		if(StringUtils.isNotBlank(phone)){
			logger.info("**进入oauthOrderHistory菜单，用户已经登陆过重定向到历史订单页，该用户手机号是：**"+phone);
			return "redirect:/buy_record.html";
		}else {
			logger.info("**进入oauthOrderHistory菜单，用户没有登陆过重定向到注册页面**");
			 return "redirect:/register-order.html ";
		}
    }
	
	@RequestMapping(value = { "/oauthCoupon" }, method = { RequestMethod.GET })
    public String oauthCoupon(HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("******进入oauthCoupon方法*******sessionid是：**********"+request.getSession().getId());
		String openid = wechatOauth(request);
		logger.info("******结束oauthCoupon方法*************");
		String phone = redisTemplate.opsForValue().get(openid);
		if(StringUtils.isNotBlank(phone)){
			logger.info("**进入oauthCoupon菜单，用户已经登陆过重定向到优惠券页，该用户手机号是：**"+phone);
			return "redirect:/sel_coupon.html";
		}else {
			logger.info("**进入oauthCoupon菜单，用户没有登陆过重定向到注册页面**");
			 return "redirect:/register-coupon.html ";
		}
    }


	 private String  wechatOauth(HttpServletRequest request) {
			logger.error("******进入oauth方法*************");
	        //得到code
	        String CODE = request.getParameter("code");
	        if(StringUtils.isBlank(CODE)){
	        	logger.info("code获取不到为空");
	        }
	        //换取access_token 其中包含了openid
	        String URL = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code".replace("APPID", appid).replace("SECRET", appSecret).replace("CODE", CODE);
	        String jsonStr = HttpClientUtil.sendGetRequest(URL,"UTF-8");
	        logger.info("********获取openid后"+jsonStr);
	        JSONObject oppidObj =JSONObject.fromObject(jsonStr);
	        String openid = oppidObj.get("openid").toString();
	        logger.info("**********微信登录后用户openid是"+openid+"**********");
	        if(StringUtils.isNotBlank(openid)){
	        	redisTemplate.opsForValue().set(request.getSession().getId(),openid);
	        }
	        return openid;
	  }
	
	  @RequestMapping(value = { "/orderMsgPush" }, method = { RequestMethod.GET })
      public void sendTemplate2(HttpServletRequest request, HttpServletResponse response,String map,String TemplateName,String userid,String reUrl){  
		logger.warn("***************订单成功消息推送开始******************");
        TreeMap<String,TreeMap<String,String>> params = new TreeMap<String,TreeMap<String,String>>();  
        //根据具体模板参数组装  
        params.put("first",WechatTemplateMsg.item("您的户外旅行活动订单已经支付完成，可在我的个人中心中查看", "#000000"));  
        params.put("keyword1",WechatTemplateMsg.item("8.1发现尼泊尔—人文与自然的旅行圣地", "#000000"));  
        params.put("keyword2",WechatTemplateMsg.item("5000元", "#000000"));  
        params.put("keyword3",WechatTemplateMsg.item("2017.1.2", "#000000"));  
        params.put("keyword4",WechatTemplateMsg.item("5", "#000000"));  
        params.put("remark",WechatTemplateMsg.item("请届时携带好身份证件准时到达集合地点，若临时退改将产生相应损失，敬请谅解,谢谢！", "#000000")); 
        logger.warn("*******消息模板封装的参数是********"+params);
        WeixinPublicService.sendTemplate(params,"wechat.order.success.templateId2",request.getSession().getId()); 
        logger.warn("***************订单成功消息推送结束******************");
     } 	
	  @RequestMapping(value = { "/sendTemplate" }, method = { RequestMethod.GET })
	  public void sendTemplate(HttpServletRequest request, HttpServletResponse response,String map,String TemplateName,String userid,String reUrl) throws Exception{  
			logger.warn("***************订单成功消息推送开始******************入参：map:"+map+",模板名称是："+TemplateName+"，用户编号是："+userid);
	        TreeMap<String,TreeMap<String,String>> params = new TreeMap<String,TreeMap<String,String>>(); 
	        Map<String,String> hsMap = StringUtil.mapStringToMap(java.net.URLDecoder.decode(map,"UTF-8"));
	        for (Map.Entry<String,String> entry : hsMap.entrySet()) {  
	        	 params.put(entry.getKey().replaceAll(" ", ""),WechatTemplateMsg.item(entry.getValue(), "#000000"));  
	        	 logger.warn("*******消息模板封装的参数是**key******"+entry.getKey()+"***value=***"+entry.getValue());
	        }  
	        //根据userid查出openid
	        Wrapper<BfUserWeixin> cacheWrapper = new EntityWrapper<BfUserWeixin>();
			cacheWrapper.eq("id", userid);
			BfUserWeixin user = userWeixinService.selectOne(cacheWrapper);
			String openid = user.getOpenid();
			//根据具体模板参数组装  
	        logger.info("*****"+map+"**Tempalte:***"+TemplateName+"**openid***"+openid);
	        WeixinPublicService.sendTemplate2(params,TemplateName,openid,reUrl);
	        logger.warn("***************订单成功消息推送结束******************");
    }
}
