package com.hmw.open.service.impl;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.hmw.open.common.utils.HttpClientUtil;
import com.hmw.open.model.WechatTemplateMsg;
import com.hmw.open.service.WeixinPublicService;

import net.sf.json.JSONObject;

@Service
public class WeixinPublicServiceImpl implements WeixinPublicService {

	public static final Logger logger = Logger.getLogger(WeixinPublicServiceImpl.class);

	@Value("#{configProperties['wechat.appid']}")
	private String appid;

	@Value("#{configProperties['wechat.appSecret']}")
	private String appSecret;

	@Resource
	RedisTemplate<String, String> redisTemplate;

	public void sendTemplate(TreeMap<String, TreeMap<String, String>> params, String templateName, String sessionId) {
		String urlString = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + getAccessToken();
		WechatTemplateMsg wechatTemplateMsg = new WechatTemplateMsg();
		wechatTemplateMsg.setTemplate_id(getProperties(templateName));
		String openid = redisTemplate.opsForValue().get(sessionId);
		wechatTemplateMsg.setTouser(openid);
		wechatTemplateMsg.setUrl("/");
		wechatTemplateMsg.setData(params);
		String data = com.alibaba.fastjson.JSONObject.toJSONString(wechatTemplateMsg);
		logger.warn("封装的模板消息数据是" + data);
		String result = HttpClientUtil.sendPostRequest(urlString, data, false);
		logger.warn("模板消息发送的结果是" + result);

	}

	public void sendTemplate2(TreeMap<String, TreeMap<String, String>> params, String templateName, String openid,
			String reUrl) {
		String urlString = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + getAccessToken();
		WechatTemplateMsg wechatTemplateMsg = new WechatTemplateMsg();
		String temidString = getProperties(templateName);
		logger.warn("*******所取配置文件模板id是***主键**" + templateName + ",***值是***" + temidString);
		wechatTemplateMsg.setTemplate_id(temidString);
		wechatTemplateMsg.setTouser(openid);
		wechatTemplateMsg.setUrl(reUrl);
		wechatTemplateMsg.setData(params);
		String data = com.alibaba.fastjson.JSONObject.toJSONString(wechatTemplateMsg);
		logger.warn("封装的模板消息数据是" + data);
		String result = HttpClientUtil.sendPostRequest(urlString, data, false);
		logger.warn("模板消息发送的结果是" + result);

	}

	/**
	 * 获取access_token
	 * 
	 * @return
	 */
	private String getAccessToken() {
		logger.warn("开始获取accesstoken");
		String accesstoken = redisTemplate.opsForValue().get("wechatAccesstoken");
		if (StringUtils.isBlank(accesstoken)) {
			String Url = String.format(
					"https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=%s&secret=%s", appid,
					appSecret);
			String result = HttpClientUtil.sendGetRequest(Url, "UTF-8");
			logger.warn("accesstoken已失效重新获取accesstoken返回结果是" + result);
			JSONObject oppidObj = JSONObject.fromObject(result);
			accesstoken = oppidObj.get("access_token").toString();
			redisTemplate.opsForValue().set("wechatAccesstoken", accesstoken, 7200, TimeUnit.SECONDS);
		}
		logger.warn("accesstoken返回结果是" + accesstoken);
		return accesstoken;
	}

	/**
	 * 从配置文件中获取模板id编号
	 * 
	 * @param templateIdName
	 *            配置文件中模板名称
	 * @return
	 * @throws IOException
	 */
	public String getProperties(String templateIdName) {
		InputStream in = getClass().getResourceAsStream("/config.properties");
		// InputStream in =
		// Class..getSystemResourceAsStream("/config.properties");
		Properties p = new Properties();
		try {
			p.load(in);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			logger.error("读取配置文件config.properties异常");
			e.printStackTrace();
		}
		return p.getProperty(templateIdName);

	}

}
