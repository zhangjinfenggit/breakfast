package test.com.generator;

import org.apache.commons.codec.binary.Base64;

import com.hmw.open.common.utils.FastDFSClient;

public class FastDFSTest {

	FastDFSClient fastDFSClient;

	/**
	 * 图片上传
	 * 
	 * @param file
	 * @param extName
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unused")
	private String fileUpload(String fileStr) throws Exception {

		// 将图片还原成二进制
		byte[] buffer = Base64.decodeBase64(fileStr);

		// 创建fastDFS的客户端
		FastDFSClient client = new FastDFSClient("properties/fdfs_client.conf");

		// 获取上传文件 的路径
		String imageUrl = client.uploadFile(buffer, "png");

		System.out.println(imageUrl);
		return imageUrl;
	}

	public static void main(String[] args) throws Exception {
		// 不要带classpath
		
		  FastDFSClient client = new
		  FastDFSClient("properties/fdfs_client.conf"); String result =
		  client.uploadFile("F:/4.jpg", "png"); System.out.println(result);
		

//		FastDFSTest fdt = new FastDFSTest();
//		String fileStr = "iVBORw0KGgoAAAANSUhEUgAAABUAAAAYCAIAAACa6yEfAAAAmklEQVQ4Ee1QSQ6AIBAD9aY/Nf7/iNWapixxCVc5mE63QULoOOu6jR3xMM9LT/zP9r9AbFaklMDHmKkiCRjMHKBcY4WYZh1bsq8CBBrdBLLJXx6Xa5+rD/f3nd+w1tZARZAmDQRyY3TsNvDFW7p6xWDC8RaOtJ7ioQ5Z9NypbgDPFE6OZV5huWtGEtrL/4f2uBOGm1K1/+DFC+yEuG0qosNuggAAAABJRU5ErkJggg==";
//		fdt.fileUpload(fileStr);

	}

}
