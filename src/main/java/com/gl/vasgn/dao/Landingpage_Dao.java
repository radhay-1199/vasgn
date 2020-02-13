package com.gl.vasgn.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Component;

import com.gl.vasgn.modelandview.landingPageModel;


@Component
public class Landingpage_Dao {


	@Autowired
	private JdbcTemplate jdbcTemplate;

	public landingPageModel landing_serviceId1( String pack_id)
	{

		return jdbcTemplate.query("select pack_id,product_id,pack_description,landing_page_message,aoc_page_message  from   page_contents where pack_id ="+ pack_id+"", new  ResultSetExtractor<landingPageModel>() {


			@Override
			public landingPageModel extractData(ResultSet rs) throws SQLException, DataAccessException {
				//	landingPageModel list=new landingPageModel();
				if(rs.next())
				{
					landingPageModel landingpagemodal = new landingPageModel();

					String id=String.valueOf(rs.getInt("pack_id"));

					landingpagemodal.setPack_id(id);	

					landingpagemodal.setPack_id(rs.getString("pack_id"));
					landingpagemodal.setAoc_page_message(rs.getString("aoc_page_message"));
					landingpagemodal.setLanding_page_message(rs.getString("landing_page_message"));
					landingpagemodal.setPack_description(rs.getString("pack_description"));
					landingpagemodal.setProduct_id(rs.getString("product_id"));
					String aocmsg=landingpagemodal.getAoc_page_message();
					String landingpage=landingpagemodal.getLanding_page_message();
					String pack_description=landingpagemodal.getPack_description();
					String service_id=landingpagemodal.getPack_id();

					System.out.println("*******landingpage message*********" + landingpage);

					System.out.println("------------------------" + landingpagemodal);
					return landingpagemodal;
				}

				return null;
			}
		});
	}
	
	

	public landingPageModel datafromCompack(landingPageModel landingpagemodal )
	{

		return jdbcTemplate.query("select  service_id from   com_packs where pack_id ="+ landingpagemodal.getPack_id()+"", new  ResultSetExtractor<landingPageModel>() {


			@Override	
			public landingPageModel extractData(ResultSet rs) throws SQLException, DataAccessException {
				//	landingPageModel list=new landingPageModel();
				if(rs.next())
				{
					//landingPageModel landingpagemodal = new landingPageModel();

					landingpagemodal.setService_id(rs.getString("service_id"));

				
					return landingpagemodal;
				}

				return null;
			}
		});
	}

}
