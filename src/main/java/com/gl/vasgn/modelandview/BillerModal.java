package com.gl.vasgn.modelandview;

public class BillerModal {
	
	
	@Override
	public String toString() {
		return "BillerModal [bp=" + bp + ", publisher=" + publisher + ", tokenid=" + tokenid + ", status=" + status
				+ "]";
	}
	private String bp;
	private String publisher;
	private String tokenid;
	private int status;
	public String getBp() {
		return bp;
	}
	public void setBp(String bp) {
		this.bp = bp;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getTokenid() {
		return tokenid;
	}
	public void setTokenid(String tokenid) {
		this.tokenid = tokenid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
