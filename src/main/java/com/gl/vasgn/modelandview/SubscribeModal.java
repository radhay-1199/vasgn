package com.gl.vasgn.modelandview;

public class SubscribeModal {
	
	
	
	private String packname;
	private String price;
	private int duration;
	public String getPackname() {
		return packname;
	}
	public void setPackname(String packname) {
		this.packname = packname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	@Override
	public String toString() {
		return "SubscribeModal [packname=" + packname + ", price=" + price + ", duration=" + duration + "]";
	}
	
	
	
	
	
	

}
