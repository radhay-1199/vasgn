package com.gl.vasgn.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Component;

import com.gl.vasgn.modelandview.BillerModal;
import com.gl.vasgn.modelandview.SubscribeModal;

@Component
public class BilerDAo {

	@Autowired
	private JdbcTemplate jdbcTemplate;
   
	
	public BillerModal bilerDetails(String msisdn)
	{
	
		System.out.println("msisddn in dao...."+msisdn);
		try {
		return jdbcTemplate.query("select biller_id,publisher,status from  com_subscribed_users_details where msisdn ='" + msisdn + "' AND status=1 ", new  ResultSetExtractor<BillerModal>() {


			@Override
			public BillerModal extractData(ResultSet rs) throws SQLException, DataAccessException {
				//	landingPageModel list=new landingPageModel();
				//List<BillerModal> list=new ArrayList<BillerModal>();
				while(rs.next())
				{
					BillerModal billerModal=new BillerModal();
					//String id=String.valueOf(rs.getInt("pack_id"));
					billerModal.setBp(rs.getString("biller_id"));
					billerModal.setPublisher(rs.getString("publisher"));
					//billerModal.setStatus(1);
					billerModal.setStatus(rs.getInt("status"));	
					return 	billerModal;
					
				}
				  return null;
			}
			
		});
		}
		catch(Exception e)
		{
			System.out.println("exception in select token id....."+e);
			return null;
		}
		
	}
	
	
	
	
	public List<SubscribeModal> subscribrdetails(String bp, String publisher)
	{
	String query="select name,price,duration from com_packs where biller_id='"+bp+"' AND publisher='"+publisher+"' AND status=1";
	System.out.println("query for subscribe..."+query);
		System.out.println("bp is ....."+bp+"  publisher===="+publisher);
		return jdbcTemplate.query("select name,price,duration from com_packs where biller_id='"+bp+"' AND publisher='"+publisher+"' AND status=1 ", new  ResultSetExtractor<List<SubscribeModal>>() {


			@Override
			public List<SubscribeModal> extractData(ResultSet rs) throws SQLException, DataAccessException {
				//	landingPageModel list=new landingPageModel();
				List<SubscribeModal> list=new ArrayList<SubscribeModal>();
				while(rs.next())
				{
					SubscribeModal billerModal=new SubscribeModal();
					//String id=String.valueOf(rs.getInt("pack_id"));
					billerModal.setPackname(rs.getString("name"));
					billerModal.setPrice(rs.getString("price"));
					billerModal.setDuration(rs.getInt("duration"));
					
					list.add(billerModal);
					
					
				}
				  return list;
			}
			
		});
		
	}
}
