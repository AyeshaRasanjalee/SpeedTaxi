/* -- author W.M.S.T Wijekoon

	IT19210452
	kandy weekday
	G1_G8_vehicle rental system -- */


package com.SpeedTaxi.Bean;

public class AddPaymentDetailsBean {

	
	private int payId;
	private String cardNo;
	private double amount;
	private int customerId;
	private String cardname;
	private String expdate;
	private String secCode;
	
	
	public AddPaymentDetailsBean(int payId, String cardNo, double amount, int customerId, String cardname,
			String expdate, String secCode) {
	
		this.payId = payId;
		this.cardNo = cardNo;
		this.amount = amount;
		this.customerId = customerId;
		this.cardname = cardname;
		this.expdate = expdate;
		this.secCode = secCode;
	}


	public int getPayId() {
		return payId;
	}


	public void setPayId(int payId) {
		this.payId = payId;
	}


	public String getCardNo() {
		return cardNo;
	}


	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}


	public double getAmount() {
		return amount;
	}


	public void setAmount(double amount) {
		this.amount = amount;
	}


	public int getCustomerId() {
		return customerId;
	}


	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}


	public String getCardname() {
		return cardname;
	}


	public void setCardname(String cardname) {
		this.cardname = cardname;
	}


	public String getExpdate() {
		return expdate;
	}


	public void setExpdate(String expdate) {
		this.expdate = expdate;
	}


	public String getSecCode() {
		return secCode;
	}


	public void setSecCode(String secCode) {
		this.secCode = secCode;
	}


	
	
}
