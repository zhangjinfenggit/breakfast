package com.hmw.open.service.impl;

import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.hmw.open.common.constants.Constant;
import com.hmw.open.common.msm.MsmTool;
import com.hmw.open.common.utils.StringUtil;

/**
 * 发送短信
 * 
 * @author eric
 *
 */
@Service
public class SmsServiceImpl {
	@Resource
	RedisTemplate<String, Object> redisTemplate;

	@Value("${sms.swtch}")
	private String smsswth;

	// 验证码是否返回，OFF为返回
	@Value("${sms.isReturn}")
	private String isReturn;

	private final static Logger logger = Logger.getLogger(SmsServiceImpl.class);

	/**
	 * 发送短信 同步发送 TODO 短信验证码 量大了 考虑异步
	 * 
	 * @param mobile
	 * @return
	 */
	public boolean sendSms(String mobile, MsmTool.msmType msmType) {
		try {
			if (StringUtil.isEmpty(mobile)) {
				logger.error("手机短信发送失败，手机号码不能为空！");
				return false;
			}
			String verifyCode = StringUtil.getRandCode();
			//测试用，回头去掉 todo
			//verifyCode="123456";
			logger.info(mobile + " 验证码：" + verifyCode);
			redisTemplate.opsForValue().set(mobile, verifyCode, 10, TimeUnit.MINUTES);
			System.out.println(mobile + " 验证码：" + verifyCode);
			// 缓存待返回的验证码
			if (isReturn.equals("ON")) {
				redisTemplate.opsForValue().set(Constant.RETURNVERIFYCODE, verifyCode);
			}
			if (smsswth.equals("ON")) {
				MsmTool.sendMsm(mobile, verifyCode, msmType);
				return true;
			}
			// 缓存验证码
			redisTemplate.opsForValue().set(mobile, verifyCode, 10, TimeUnit.MINUTES);

		} catch (Exception e) {
			logger.error("发送验证码异常", e);
			return false;
		}
		return true;
	}

}
