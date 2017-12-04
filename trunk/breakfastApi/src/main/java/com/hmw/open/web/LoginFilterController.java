package com.hmw.open.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.UserErrorCode;
/**
 * 登录失败返回
 * @author bing.cheng
 *
 */
@Controller
@RequestMapping("/loginFilter")
public class LoginFilterController {
  private final static Logger logger = Logger.getLogger(LoginFilterController.class);

  
  /**
   * token 为空的处理
   * @param request
   * @param response
   * @return
   */
  @RequestMapping(value = {"/loginCheckFail"})
  public @ResponseBody BaseResult loginCheckFail(HttpServletRequest request, HttpServletResponse response) {
  	  String reqPara = JSON.toJSONString(request.getParameterMap());
	  logger.warn("loginCheckFail,请求url和参数为:" + request.getRequestURI() + "-" + reqPara);
	  logger.warn("loginCheckFail token = " + request.getHeader("userToken"));
    return BaseResult.fail(UserErrorCode.UserPermissionDeniedErrorRetCode,
        UserErrorCode.UserPermissionDeniedErrorRetInfo + "url = " + request.getRequestURI() + ", userToken = " + request.getHeader("userToken"));
  }
  
  /**
   * 登录超时
   * @param request
   * @param response
   * @return
   */
  @RequestMapping(value = {"/loginTimeOut"})
  public @ResponseBody BaseResult loginTimeOut(HttpServletRequest request, HttpServletResponse response) {
  	  String reqPara = JSON.toJSONString(request.getParameterMap());
	  logger.warn("loginTimeOut,请求url和参数为:" + request.getRequestURI() + "-" + reqPara);
	  logger.warn("loginTimeOut token = " + request.getHeader("userToken"));
      return BaseResult.fail(UserErrorCode.UserLoginTimeOutRetCode, UserErrorCode.UserLoginTimeOutRetInfo);
  }

}
