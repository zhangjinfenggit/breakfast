package com.hmw.open.service;

import java.util.TreeMap;

public interface WeixinPublicService {
	
	public void sendTemplate(TreeMap<String,TreeMap<String,String>> params,String templateName,String sessionId) ;
	public void sendTemplate2(TreeMap<String,TreeMap<String,String>> params,String templateName,String sessionId,String reUrl) ;
}