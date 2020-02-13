package com.gl.vasgn.modelandview;

public class OtpRequest {
	
	private String countryCode;
	private String msisdn;
	private String subscriptionId;
	private String keyword;
	private String pVCode;
	
	
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getMsisdn() {
		return msisdn;
	}
	public void setMsisdn(String msisdn) {
		this.msisdn = msisdn;
	}
	public String getSubscriptionId() {
		return subscriptionId;
	}
	public void setSubscriptionId(String subscriptionId) {
		this.subscriptionId = subscriptionId;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getpVCode() {
		return pVCode;
	}
	public void setpVCode(String pVCode) {
		this.pVCode = pVCode;
	}
	@Override
	public String toString() {
		return "OtpRequest [countryCode=" + countryCode + ", msisdn=" + msisdn + ", subscriptionId=" + subscriptionId
				+ ", keyword=" + keyword + ", pVCode=" + pVCode + "]";
	}
	
	
	
}
