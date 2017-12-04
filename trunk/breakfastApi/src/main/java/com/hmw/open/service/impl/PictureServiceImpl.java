package com.hmw.open.service.impl;

import org.apache.commons.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.hmw.open.common.utils.FastDFSClient;
import com.hmw.open.service.IPictureService;

@Service
public class PictureServiceImpl implements IPictureService{

	private final Logger logger = LoggerFactory.getLogger(PictureServiceImpl.class);	
	
	@Override
	public String uploadPic(String picFile) {
		String imageUrl  = null;
        //上传到图片服务器
        try {
        	// 将图片转成二进制流
    		byte[] bufferInput = Base64.decodeBase64(picFile);
            FastDFSClient client = new FastDFSClient("properties/fdfs_client.conf");
            imageUrl = client.uploadFile(bufferInput, "png");
            imageUrl = "/" + imageUrl;
            logger.info("图片上传地址：" + imageUrl);
        } catch (Exception e) {
        	logger.error("上传图片异常：", e);
        }
        return imageUrl;
	}

	
	/**
	 * 图片上传
	 * 
	 * @param file
	 * @param extName
	 * @return
	 * @throws Exception
	 */
	public String fileUpload(String fileStr) {
		String imageUrl = null;
		try{
			// 将图片还原成二进制
			byte[] buffer = Base64.decodeBase64(fileStr);
			// 创建fastDFS的客户端
			FastDFSClient fastDFSClient = new FastDFSClient("properties/fdfs_client.conf");
			// 获取上传文件 的路径
			imageUrl = fastDFSClient.uploadFile(buffer, "png");
			logger.info("图片上传地址：" + imageUrl);
			imageUrl = "/" + imageUrl;
		}catch(Exception e){
			logger.error("上传图片异常：", e);
		}
		return imageUrl;
	}
}
