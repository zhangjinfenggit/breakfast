package com.hmw.open.web.app.request.merchantsinfocontroller;


/***
 * 添加银行卡的请求参数
 * @author kongliufeng
 *
 */
public class AddBankcardRequest {
	private String cardName;//开户人姓名	
	private String cardNo;//银行卡号	
	
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

}
