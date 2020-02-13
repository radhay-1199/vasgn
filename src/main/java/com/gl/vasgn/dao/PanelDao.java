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

import com.gl.vasgn.modelandview.PanelContentModal;

@Component
public class PanelDao 
{
	@Autowired
	private JdbcTemplate jdbcTemplate;	
	
	public List<PanelContentModal> allPanelData()
	{
		return jdbcTemplate.query(" SELECT contents.content_id,contents.content_name,contents.image_name,contents.base_format,contents.content_type,contents.status,contents.language,contents.video_type,contents.publisher, category.category_name FROM contents INNER JOIN `category` ON category.id=contents.category WHERE contents.status=1 AND contents.publisher='Jovial Digital'  ORDER BY category.display_order ,contents.content_id", new  ResultSetExtractor<List<PanelContentModal>>() {

			@Override
			public List<PanelContentModal> extractData(ResultSet rs) throws SQLException, DataAccessException {
				//	landingPageModel list=new landingPageModel();
				List<PanelContentModal> list=new ArrayList<PanelContentModal>();
				while(rs.next())
				{
					PanelContentModal panelcontent=new PanelContentModal();
					//String id=String.valueOf(rs.getInt("pack_id"));

					panelcontent.setCnt_id(rs.getInt("content_id"));	
					panelcontent.setContent_name(rs.getString("content_name"));
					panelcontent.setContent_type(rs.getString("content_type"));
					panelcontent.setImage_name(rs.getString("image_name"));	
					panelcontent.setBase_format(rs.getString("base_format"));
					panelcontent.setContent_type(rs.getString("content_type"));
					panelcontent.setStatus(rs.getInt("status"));
					panelcontent.setLanguage(rs.getString("language"));
					panelcontent.setVideo_type(rs.getString("video_type"));
					panelcontent.setPublisher(rs.getString("publisher"));
					panelcontent.setCategoryname(rs.getString("category_name"));
					list.add(panelcontent);
						//System.out.println("------------------------" + list);
					
				}
				  return list;
			}
		});
	}
		
	
	
	public List<PanelContentModal> categorydetail(String category)
	{
		return jdbcTemplate.query(" SELECT contents.content_id,contents.content_name,contents.image_name,contents.base_format,contents.content_type,contents.status,"
				+ "contents.language,contents.video_type,contents.publisher, "+ "category.category_name FROM contents "
		+ "INNER JOIN `category` ON category.id=contents.category WHERE contents.status=1 AND category.category_name='"+category+"' ORDER BY contents.content_id DESC", new  ResultSetExtractor<List<PanelContentModal>>() {


			@Override
			public List<PanelContentModal> extractData(ResultSet rs) throws SQLException, DataAccessException {
				//	landingPageModel list=new landingPageModel();
				List<PanelContentModal> list=new ArrayList<PanelContentModal>();
				while(rs.next())
				{
					PanelContentModal panelcontent=new PanelContentModal();
					//String id=String.valueOf(rs.getInt("pack_id"));

					panelcontent.setCnt_id(rs.getInt("content_id"));	
					panelcontent.setContent_name(rs.getString("content_name"));
					panelcontent.setContent_type(rs.getString("content_type"));
					panelcontent.setImage_name(rs.getString("image_name"));	
					panelcontent.setBase_format(rs.getString("base_format"));
					panelcontent.setContent_type(rs.getString("content_type"));
					panelcontent.setStatus(rs.getInt("status"));
					panelcontent.setLanguage(rs.getString("language"));
					panelcontent.setVideo_type(rs.getString("video_type"));
					panelcontent.setPublisher(rs.getString("publisher"));
					panelcontent.setCategoryname(rs.getString("category_name"));
					list.add(panelcontent);
						//System.out.println("------------------------" + list);
					
				}
				  return list;
			}
		});
	}
	public PanelContentModal  panelvideo(int id)
	{
		
		return jdbcTemplate.query(" SELECT contents.content_id,contents.content_name,contents.image_name,contents.base_format,contents.content_type,contents.status,contents.language,contents.video_type,contents.publisher, category.category_name FROM contents INNER JOIN `category` ON category.id=contents.category WHERE contents.content_id='"+id + "'", new  ResultSetExtractor<PanelContentModal>() {


			@Override
			public PanelContentModal extractData(ResultSet rs) throws SQLException, DataAccessException {
				//	landingPageModel list=new landingPageModel();
				while(rs.next())
				{
					PanelContentModal panelcontent=new PanelContentModal();
					//String id=String.valueOf(rs.getInt("pack_id"));

					panelcontent.setContent_name(rs.getString("content_name"));
					panelcontent.setContent_type(rs.getString("content_type"));
					panelcontent.setImage_name(rs.getString("image_name"));
					panelcontent.setBase_format(rs.getString("base_format"));
					panelcontent.setContent_type(rs.getString("content_type"));
					panelcontent.setStatus(rs.getInt("status"));
					panelcontent.setLanguage(rs.getString("language"));
					panelcontent.setVideo_type(rs.getString("video_type"));
					panelcontent.setPublisher(rs.getString("publisher"));
					
						System.out.println("------------------------" + panelcontent);
					return panelcontent;
					
					
				}

				return null;
			}
		});
	}

}
