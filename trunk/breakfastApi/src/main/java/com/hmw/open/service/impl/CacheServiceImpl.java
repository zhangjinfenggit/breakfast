package com.hmw.open.service.impl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import com.hmw.open.common.constants.UserTokenConstants;
import com.hmw.open.model.UserBaseInfoVo;

/**
 * 公共缓存相关
 * @author bing.cheng
 *
 */
@Service("cacheService")
public class CacheServiceImpl {
	
	private final static Logger logger = Logger.getLogger(CacheServiceImpl.class);

	@Resource
    RedisTemplate redisTemplate;
	
	/**
	 * 缓存中获取用户信息
	 * @param req
	 * @return
	 */
	public UserBaseInfoVo getUserInfoJsonFromCache(HttpServletRequest req) throws Exception{
		try {
			String url = req.getRequestURI().toString();
			String token = null;
			if (url.startsWith(UserTokenConstants.appPreAllUrl) || url.startsWith(UserTokenConstants.appPreUrl)) {
				token = req.getHeader(UserTokenConstants.appToken);
			} else if (url.startsWith(UserTokenConstants.weixinPreAllUrl) || url.startsWith(UserTokenConstants.weixinPreUrl)) {
				token = req.getHeader(UserTokenConstants.weixinToken);
			} else {
				throw new Exception("请求url异常,获取不到token,url=" + url);
			}
			
			ValueOperations<String, UserBaseInfoVo> valueOperations= redisTemplate.opsForValue();
			UserBaseInfoVo userInfoVo = valueOperations.get(token);
			return userInfoVo;
		} catch (Exception e) {
			logger.error("缓存中获取用户信息异常, userToken = " + req.getHeader("userToken"), e);
			throw e;
		}
	}
	
	/**
	 * 缓存中验证码校验
	 * @param phone
	 * @param smsCode
	 */
	public boolean checkCode(String phone, String smsCode) {
		 ValueOperations<String, Object> valueOperations = redisTemplate.opsForValue();
		 Object cacheCode = valueOperations.get(phone);
		 if(cacheCode != null && smsCode.equals(cacheCode)){
			 return true;
		 }
	     return false;
	}
	
}
