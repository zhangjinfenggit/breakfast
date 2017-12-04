package com.hmw.open.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hmw.open.common.result.BaseResult;
import com.hmw.open.common.result.ErrorCode;
import com.hmw.open.service.IPictureService;

/**
 * 文件上传公用方法
 * @author zhulei
 * @time 2017年07月23号 12:47:23
 */
@Controller
@RequestMapping("/upload")
public class ImageUploadController {

	private final Logger logger = LoggerFactory.getLogger(ImageUploadController.class);	
	
	@Autowired
	private IPictureService pictureService;
	
	/**
	 * 上传图片 到FastDFS
	 * @param file
	 * @param request
	 * @return Image
	 * 
	 */
	@SuppressWarnings("static-access")
	@RequestMapping(value = { "/uploadImage" }, method = RequestMethod.POST)
	public @ResponseBody
	BaseResult  uploadToFastDFS(HttpServletRequest request, @RequestParam("photo") String photo) {
		BaseResult baseResult = BaseResult.success();
		String imgUri = null;
		try {
	    	if(photo!=null && !photo.isEmpty()){
				imgUri = pictureService.uploadPic(photo);
				baseResult.setData(imgUri); 
			}else{
				baseResult.fail(ErrorCode.UploadEmpty, ErrorCode.UploadEmptyInfo);
			}
		} catch (Exception e) {
			logger.error("error:",e);
			baseResult.fail(ErrorCode.UploadFail, ErrorCode.UploadFailInfo);
		}
		return baseResult;
	}

}
