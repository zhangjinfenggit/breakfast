package com.hmw.open.filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

import com.hmw.open.common.constants.UserTokenConstants;
import com.hmw.open.common.utils.StringUtil;
import com.hmw.open.model.UserBaseInfoVo;



/**
 * 
 * 登录过滤
 *
 */
public class LoginFilter implements Filter {
	private final static Logger logger = Logger.getLogger(LoginFilter.class);
	private static String[] whiteList;
	private static RedisTemplate<String, UserBaseInfoVo> redisTemplate;

	public static void setRedisTemplate(RedisTemplate<String, UserBaseInfoVo> redisTemplate) {
		LoginFilter.redisTemplate = redisTemplate;
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String whiteListStr = filterConfig.getInitParameter("whiteList");
		if (!StringUtil.isEmpty(whiteListStr)) {
			whiteList = whiteListStr.split("\\|");
		}
	}

	/**
	 * 过滤
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		String url = req.getRequestURI().toString();
		logger.info("LoginFilter doFilter url:" + url);
		if(url.indexOf(";")!=-1){
			String[] urlStrings = url.split("\\;");
			url = urlStrings[0];
		}
		if(url.endsWith(".html") ||url.endsWith(".css")||url.endsWith(".js")||url.endsWith(".png")){
			chain.doFilter(request, response);
			return;
		}

		if (whiteList == null) {
			chain.doFilter(request, response);
			return;
		}
		for (String whiteUrl : whiteList) {
			if (url.contains(whiteUrl)) {
				chain.doFilter(request, response);
				return;
			}
		}
		
		//app用户和微信用户取的token名字不一样 需要通过url前缀判断
		String token = null;
		if (url.startsWith(UserTokenConstants.appPreAllUrl) || url.startsWith(UserTokenConstants.appPreUrl)) {
			token = req.getHeader(UserTokenConstants.appToken);
		} else if (url.startsWith(UserTokenConstants.weixinPreAllUrl) || url.startsWith(UserTokenConstants.weixinPreUrl)) {
			token = req.getHeader(UserTokenConstants.weixinToken);
		} else {
			logger.error("请求路径错误, url={}" + url);
		}
		//看门狗程序
		if(url.startsWith(UserTokenConstants.dog)){
			HttpServletResponse res = (HttpServletResponse) response;
			if(getConnection()!=null){
				logger.info("Get dataSource connnection success,数据库正常!");
			     res.setStatus(res.SC_OK);
			}else{
				logger.info("Get dataSource connnection fail,数据库链接不上!");
				res.sendError(res.SC_INTERNAL_SERVER_ERROR,"Get dataSource connnection fail");
			}
		}else{
			logger.info("LoginFilter doFilter token:" + token);
			if (!StringUtil.isEmpty(token)) {
				// 先查询缓存、在查询数据库
				ValueOperations<String, UserBaseInfoVo> userValueOp = redisTemplate.opsForValue();
				UserBaseInfoVo userBaseInfoVo = userValueOp.get(token);
				if (userBaseInfoVo != null) {
					chain.doFilter(request, response);
				} else {
					// 登录超时的处理
					req.getRequestDispatcher("/loginFilter/loginTimeOut").forward(request, response);
				}
			} else {
				req.getRequestDispatcher("/loginFilter/loginCheckFail").forward(request, response);
			}
		}
		
		
	}

	@Override
	public void destroy() {

	}
	
	//获取数据库连接
	public static Connection getConnection(){
	java.sql.Connection con = null;
	try {
		//加载数据库驱动程序
		Class.forName("com.mysql.jdbc.Driver");
		//获取数据库链接对象
		con=DriverManager.getConnection("jdbc:mysql://59.45.169.9:3306/breakfast?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true","breakfastuser","breakfastuser");
	} catch (Exception e) {
	   e.printStackTrace();
	}
	//返回链接对象
	return con;
	}

	
	

}
