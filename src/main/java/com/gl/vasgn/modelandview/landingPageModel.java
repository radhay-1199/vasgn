package com.gl.vasgn.modelandview;

import java.sql.Date;

public class landingPageModel {

	

	private String service_id;
	private String  pack_id;
	private String landing_page_message;
	private String  aoc_page_message;
	private Date  date;
	private int demoid;
	private String pack_description;
	private String product_id;
	
	

	
	public String getLanding_page_message() {
		return landing_page_message;
	}
	public void setLanding_page_message(String landing_page_message) {
		this.landing_page_message = landing_page_message;
	}
	public String getAoc_page_message() {
		return aoc_page_message;
	}
	public void setAoc_page_message(String aoc_page_message) {
		this.aoc_page_message = aoc_page_message;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	public int getDemoid() {
		return demoid;
	}
	public void setDemoid(int demoid) {
		this.demoid = demoid;
	}
	
	public landingPageModel[] getBytes() {
		// TODO Auto-generated method stub
		return null;
	}
	public String getPack_description() {
		return pack_description;
	}
	public void setPack_description(String pack_description) {
		this.pack_description = pack_description;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	
	
	
	public String getPack_id() {
		return pack_id;
	}
	public void setPack_id(String pack_id) {
		this.pack_id = pack_id;
	}
	
	public String getService_id() {
		return service_id;
	}
	public void setService_id(String service_id) {
		this.service_id = service_id;
	}
	@Override
	public String toString() {
		return "landingPageModel [service_id=" + service_id + ", pack_id=" + pack_id + ", landing_page_message="
				+ landing_page_message + ", aoc_page_message=" + aoc_page_message + ", date=" + date + ", demoid="
				+ demoid + ", pack_description=" + pack_description + ", product_id=" + product_id + "]";
	}
	
	
	
	
	
}
