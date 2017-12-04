package com.hmw.open.common.pay;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.apache.log4j.Logger;

import com.hmw.open.model.BfOrder;

public class WeiXinPay {
	
	public static final Logger logger = Logger.getLogger(WeiXinPay.class);
	/**
	 * 编码类型
	 */
	private static String charset = "UTF-8";
	
	private static String MERCHANT_PRIVATE_KEY = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAKBS9bxdRwjgxP55y+t7qX0q0MugzrCVzu77C6unT9dhpQNmN4p4mN7Mov/Bg+2MFkB5PJ3GSyro707yzpgtdwTH3ZAy33eatwK8lMzYyP5T1961iRCSpcN8O08FfhHkJZyObq2k7IXRf/LnMKPKvNL53LbW7cE700R+UFLdB7CPAgMBAAECgYB/bbD3yMP/IHgzM6eLQb0TSYavct8Vp9zUQiGii9d//5Jiw0n9+6C15bzgv3UWyDOfhz1Qwh1Yu9AJ1h+zAOAJYEAT1SDf5APcBJjmF3NJ1I9nCWMHtnGwJ7L13H8OBp4kBlnSTf3gANjwDCPZznb5fpqHeW5uJBBi8lkp0Zf1EQJBANVPRa/Uxg9J8bKb4g2axVPhvgiTVEypximBsxfEKI09WdYGqsit47sr2mPXBaprZXC7UPR2QuS0PP/WSPC1GLMCQQDAaQS/oAhSXn1iIp5rZgu/ShmYQmg8nr9S7QwSbHmVcH/L1FW9ljDwvz+oQk2fv8Kb5Oi4dR3xiNC7d0utJt61AkB72Snp3A0e5Vzqye0m3vzBJilyyy+/zzbZ9I8qNl8hGkTlqjtQhv3ZN632F+sXNoHQQUHQnjVamndsR1tUPqFXAkBlDEI0KOV17K3IhgnQuWzd7xp1/hokC/LKqDc4zcMkmkpjT4Yf5Oqa5LWXtgpyJREdMiCODuPE32dPrJ0PuGQpAkEAozfhWL4SdLhl/HXqtLl0Zk4qC8jXbI1SXTCIBHVQn7mYs3VnYrzPrcC8E0jmMnhkohGGrF4Nl9YDfbx2hrcARQ==";
	
	
	
	
	/**
	 *  微信公众号预下单
	 */
	public String orderPre(String orderNo,String orderMoney,String orderName,String orderTitle,String openid) {

		Date date = new Date();
		Map<String, String> origMap = new HashMap<String, String>();
		// 基本参数
		origMap.put("Service", "mag_pub_sinm_pay");
		origMap.put("Version", "1.0");
		origMap.put("PartnerId", "200001320043"); //生产环境的测试商户号
		origMap.put("InputCharset", charset);
		origMap.put("TradeDate", ChanPay.getDateFormat("yyyyMMdd").format(date));
		origMap.put("TradeTime", ChanPay.getDateFormat("HHmmss").format(date));
		origMap.put("ReturnUrl", getProperties("wechat.pay.orderPre.returnUrl"));// 前台跳转url
		origMap.put("Memo", "备注");

		// 4.2.1.1. 公众号/服务窗确认支付 api 业务参数
		origMap.put("OutTradeNo", orderNo);//订单号
		origMap.put("MchId", "200001320043");//商户号
		//origMap.put("SubMchId", "334");//子商户标示id
		origMap.put("TradeType", "11");//交易类型（11即时12担保）
		origMap.put("AppId", getProperties("wechat.appid"));//微信标示
		origMap.put("BuyerPayCode", openid);//付方id
		//origMap.put("DeviceInfo","");
		origMap.put("Currency", "CNY");//币种
		origMap.put("TradeAmount", orderMoney);//交易金额
		//origMap.put("EnsureAmount", "0.01");//担保金额
		origMap.put("GoodsName", orderName);//商品名称
		//origMap.put("TradeMemo", "1111");//商品描述
		origMap.put("Subject",orderTitle);//订单标题
		origMap.put("OrderStartTime",ChanPay.getDateFormat("yyyyMMddHHmmss").format(date));//订单起始时间
		//origMap.put("OrderEndTime", "2231");//订单失效时间
		//origMap.put("LimitCreditPay", "2231");//限制信用卡
		//origMap.put("SplitList", "2231");//分账列表
		origMap.put("NotifyUrl",  getProperties("wechat.pay.orderPre.notifyUrl"));
		origMap.put("SpbillCreateIp", "59.45.169.9");
		String reString = gatewayPost(origMap, charset, getProperties("wechat.pay.merchant_private_key"));
		return reString;
	}
	
	/**
	 * 
	 * 4.2.1.8. 商户退款请求 api nmg_api_refund
	 */

	public String nmg_api_refund(BfOrder order) {

		Date date = new Date();
		Map<String, String> origMap = new HashMap<String, String>();
		// 2.1 基本参数
		origMap.put("Service", "nmg_api_refund");
		origMap.put("Version", "1.0");
		origMap.put("PartnerId", "200001320043");// 畅捷支付分配的商户号
		origMap.put("InputCharset", charset);// 字符集
		origMap.put("TradeDate", ChanPay.getDateFormat("yyyyMMdd").format(date));
		origMap.put("TradeTime", ChanPay.getDateFormat("HHmmss").format(date));
		// origMap.put("SignType","RSA");
		origMap.put("ReturnUrl", "");// 前台跳转url
		origMap.put("Memo", "备注");
		// 2.2 业务参数
		//origMap.put("TrxId", "2017030915302022");// 订单号
		origMap.put("TrxId", order.getOrderNo());// 订单号
		origMap.put("OriTrxId", order.getOrderNo());// 原有支付请求订单号
		BigDecimal totalMoney = order.getOrderMoney();
		BigDecimal couponMoney = order.getCouponDeduction();
		totalMoney = totalMoney.subtract(couponMoney);
		totalMoney=totalMoney.setScale(1, BigDecimal.ROUND_UP);
		
		origMap.put("TrxAmt", totalMoney.toString());// 退款金额
		origMap.put("RefundEnsureAmount", null);// 退担保金额
		origMap.put("RoyaltyParameters",null);// 退款分润账号集
		origMap.put("NotifyUrl", getProperties("wechat.pay.refund.notifyUrl"));// 异步通知地址
		origMap.put("Extension", "");// 扩展字段
		String reString =gatewayPost(origMap, charset,MERCHANT_PRIVATE_KEY);
	    System.out.println("商户退款结果是："+reString);
	    return reString;
	}
	
	public static String nmg_api_refund2() {

		Date date = new Date();
		Map<String, String> origMap = new HashMap<String, String>();
		// 2.1 基本参数
		origMap.put("Service", "nmg_api_refund");
		origMap.put("Version", "1.0");
		origMap.put("PartnerId", "200001320043");// 畅捷支付分配的商户号
		origMap.put("InputCharset", charset);// 字符集
		origMap.put("TradeDate", ChanPay.getDateFormat("yyyyMMdd").format(date));
		origMap.put("TradeTime", ChanPay.getDateFormat("HHmmss").format(date));
		// origMap.put("SignType","RSA");
		origMap.put("ReturnUrl", "");// 前台跳转url
		origMap.put("Memo", "备注");
		// 2.2 业务参数
		//origMap.put("TrxId", "2017030915302022");// 订单号
		//String TrxId = "F"+UUID.randomUUID().toString().split("-")[0]+UUID.randomUUID().toString().split("-")[1]+UUID.randomUUID().toString().split("-")[2];
		origMap.put("TrxId", "N20171123173533_506531");// 订单号
		origMap.put("OriTrxId", "N20171123173533_506531");// 原有支付请求订单号
		origMap.put("TrxAmt", "0.5");// 退款金额
		origMap.put("RefundEnsureAmount", null);// 退担保金额
		origMap.put("RoyaltyParameters",null);// 退款分润账号集
		origMap.put("NotifyUrl", "www.baidu.com");// 异步通知地址
		origMap.put("Extension", "");// 扩展字段
		String reString =gatewayPost(origMap, charset,MERCHANT_PRIVATE_KEY);
	    System.out.println("商户退款结果是："+reString);
	    return reString;
	}
	public static void main(String[] args) {
		nmg_api_refund2();
	}
	
	
	/**
	 *用户退款
	 */
	public void nmg_api_refund_trade_file() {

		Date date = new Date();
		Map<String, String> origMap = new HashMap<String, String>();
		// 2.1 基本参数
		origMap.put("Service", "nmg_api_refund_trade_file");// 支付的接口名
		origMap.put("Version", "1.0");
		origMap.put("PartnerId", "200001320043");// 畅捷支付分配的商户号
		origMap.put("InputCharset", charset);// 字符集
		origMap.put("TradeDate", ChanPay.getDateFormat("yyyyMMdd").format(date));
		origMap.put("TradeTime", ChanPay.getDateFormat("HHmmss").format(date));
		// origMap.put("SignType","RSA");
		origMap.put("ReturnUrl", "");// 前台跳转url
		origMap.put("Memo", "备注");

		// 2.11 日支付对账文件
		origMap.put("TransDate", "20160728");// 交易日期

		this.gatewayPost(origMap, charset, MERCHANT_PRIVATE_KEY);
	}
	
	
	/**
	 * 向测试服务器发送post请求
	 * 
	 * @param origMap
	 *            参数map
	 * @param charset
	 *            编码字符集
	 * @param MERCHANT_PRIVATE_KEY
	 *            私钥
	 */
	public static String gatewayPost(Map<String, String> origMap, String charset,String MERCHANT_PRIVATE_KEY) {
		try {
			String urlStr = "https://pay.chanpay.com/mag-unify/gateway/receiveOrder.do?";
			Map<String, String> sPara =  ChanPay.buildRequestPara(origMap, "RSA",MERCHANT_PRIVATE_KEY, charset);
			logger.info(urlStr +  ChanPay.createLinkString(sPara, true));
			String resultString =  ChanPay.buildRequest(origMap, "RSA",MERCHANT_PRIVATE_KEY, charset, urlStr);
			logger.info("畅捷支付返回数据："+resultString);
			return resultString;
		} catch (Exception e) {
			System.out.println(e);
			return "";
		}
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
