package com.gl.vasgn.controller;

import java.io.File;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gl.vasgn.dao.BilerDAo;
import com.gl.vasgn.dao.Landingpage_Dao;
import com.gl.vasgn.dao.PanelDao;
import com.gl.vasgn.modelandview.BillerModal;
import com.gl.vasgn.modelandview.PanelContentModal;
import com.gl.vasgn.modelandview.SubscribeModal;
import com.gl.vasgn.modelandview.landingPageModel;
import com.gl.vasgn.util.Download;
import com.gl.vasgn.util.Util;


@Controller

public class WifiFlowControler {

	@Autowired
	Landingpage_Dao landingpae_dao;

	@Autowired
	PanelDao panel;

	@Autowired
	BilerDAo bilerdao;

	@Value("${importer.imei.sample.filePath}")
	private String importerImeiSampleFilename;
	@Value("${customs.imei.sample.filePath}")
	private String customsImeiSampleFilename;

	/*
	 * @Autowired Way2adDao way2ad;
	 */

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView view() throws Exception {
		System.out.println("reaching in biller or publisher details");
		return new ModelAndView("billerpage");
	}
	
	@RequestMapping(value = "/indexpage", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView indexpage(@RequestParam(required = false, name = "bp") String bp,
			@RequestParam(required = false, name = "publisher") String publisher,
			@RequestParam(required = false, name = "tokenid") String tokenid) throws Exception {
		List<PanelContentModal> list = panel.allPanelData();
		System.out.println();
	System.out.println("complete list......................"+list);
	System.out.println("tokenid........."+tokenid);
		Util util=new Util();
		HashMap<String, List<PanelContentModal>> category=util.getCategoryWiseContent(list);

		ModelAndView mv = new ModelAndView("panel", "list",list );
	    mv.addObject("category", category);
		
	    
		if (publisher != null && !tokenid.isEmpty()  && bp != null) {
			System.out.println("token id is blank....");
			Base64.Decoder decoder = Base64.getDecoder();
			String dcodenumber = new String(decoder.decode(tokenid));
			System.out.println("tokenid after decodeing.."+dcodenumber);
			BillerModal dbpublishers = bilerdao.bilerDetails(dcodenumber);
			if(dbpublishers != null)
			{
			if (dbpublishers.getStatus()==1) {
				mv.addObject("publisher", publisher);
				mv.addObject("bp", bp);
				mv.addObject("status", "true");
			} else {
			
				mv.addObject("status", "false");
				
			}
			}
			else {

				System.out.println("error............");
				mv.setViewName("tokenError");
			}
			
			} 
		else if( bp != null && publisher != null && tokenid.isEmpty() )
		{
			System.out.println("else if condition");
			mv.addObject("publisher", publisher);
			mv.addObject("bp", bp);
			mv.addObject("status", "false");
		}
		
		else  
		{
			String bpp="th";
			String pbl="Jovial Digital";
			System.out.println("else condition");
			mv.addObject("od", bpp);
			mv.addObject("pbl", pbl);
		}
		return mv;
	}
	
	@RequestMapping(value = "/Subscribe/bp={bp}/publisher={publisher}", method = RequestMethod.GET)
	public ModelAndView subcribe(@PathVariable String bp,@PathVariable String publisher) {
		
		
		System.out.println("in subscribe page.... ");
		System.out.println("in subscribe page....$$$$$ biller "+bp + "publisher" + publisher);
		
		List<SubscribeModal> subscribe=bilerdao.subscribrdetails(bp, publisher);
		
		System.out.println("in subscribe page details..... "+subscribe);
		return new ModelAndView("subscribe","subscribe",subscribe);
		
	}
	
	@RequestMapping(value = "/Subscriberdetail/bp={od}/publisher={pbl}", method = RequestMethod.GET)
	public ModelAndView subcribepage(@PathVariable String od,@PathVariable String pbl) {
		
		List<SubscribeModal> subscribe=bilerdao.subscribrdetails(od,pbl);
		System.out.println("in  subscribe page without tokenid.... ");
		System.out.println("in  subscribe details default  "+subscribe);
		return new ModelAndView("subscribe","subscribe",subscribe);
		
	}

	@RequestMapping(value = "/videopanelplayer/cnt_Id={id}", method = RequestMethod.GET)
	public ModelAndView player(@PathVariable int id) throws Exception {
		System.out.println("reaching in player page..");
		PanelContentModal paneel = panel.panelvideo(id);

		
		// System.out.println("video content id..."+id);

		// System.out.println("contents ......."+paneel);
		// String contentname=paneel.getContent_name();
		//String imagename = paneel.getImage_name();
		String baseformate = paneel.getBase_format();
		
		System.out.println("baseformate video ......." +baseformate );
		
		// String baseurl=baseformate.replaceFirst("176x144", "320x240");
		/* imagename.replaceAll("420x280", "320x240"); */

		//String imageurl = imagename.replaceFirst("420x280", "320x240");

		//System.out.println("replace character=== ......." + imageurl);
		ModelAndView mv = new ModelAndView("videopanelplayer", "imagename", baseformate);

		return mv;
	}

	@RequestMapping(value = "/samples/{imagename:.+}", method = RequestMethod.GET)
	public ResponseEntity<?> imeiSampleFiles(@PathVariable String imagename, HttpServletRequest request,HttpServletResponse response) {
		
		System.out.println("content type is video");

		String fileURL = "http://s3.ap-south-1.amazonaws.com/way2ad/ContentVideos/"+imagename;
        String saveDir = "/var/www/html/Newcontents/temp_content/";
        
        String donwload="/var/www/html/Newcontents/temp_content/"+imagename;

    	System.out.println("complete path is="+fileURL);
        
	try {
        
		//UtilityDownload.downloadFile(fileURL, saveDir);
        Download.saveImage(fileURL,saveDir);
        System.out.println("file uploaded on server .");
        
        Util util =new Util();
        File downloadFile = new File(donwload);
        System.out.println("in file download  code url="+donwload);
        
        if (downloadFile.exists()) 
        {
			util.downloadFileProperties(request, response, donwload, downloadFile);
			System.out.println("this is  video download condition");
			
			util.delete(downloadFile);
			System.out.println("after video delete condition");
			return new ResponseEntity<>("Success", HttpStatus.OK);
			
		} 
        else {
			
			
			return new ResponseEntity<>("Requested Video File Not Found At The Server ....!", HttpStatus.NOT_FOUND);
		}
        
        
	
	} catch (Exception e) {
		// logger.error(e);
		System.out.println(e);
	}
		return new ResponseEntity<>("Fail", HttpStatus.CONFLICT);
		
		
	}

	@RequestMapping(value = "/landingpage", method = RequestMethod.GET)
	public ModelAndView vieww(@ModelAttribute landingPageModel landingpagemodal,
			@RequestParam("pack_id") String pack_id) throws Exception {

		landingPageModel lpm = landingpae_dao.landing_serviceId1(pack_id);
		ModelAndView mv = null;
		landingpagemodal.setPack_id(pack_id);
		String i = landingpagemodal.getPack_id();

		System.out.println("landing page dataa" + lpm);
		System.out.println("landing page id" + i);
		if (lpm == null) {
			mv = new ModelAndView("errorpage");
			System.out.println("thai");
			return mv;
		}

		String landingpagemsg = lpm.getLanding_page_message();

		System.out.println("+++**++-" + landingpagemsg);
		// String serviceid = lpm.getService_id();
		mv = new ModelAndView("game");
		mv.addObject("serviceid", i);
		mv.addObject("Aocpage", landingpagemsg);

		return mv;
	}
	
	
	
	@RequestMapping(value = "/category/{category}", method = RequestMethod.GET)
	public ModelAndView category(@PathVariable String category) 
	{
		System.out.println("in  scategory page "+category);
		
		List<PanelContentModal> morecategory=panel.categorydetail(category);
		System.out.println("single category details "+morecategory);
		return new ModelAndView("categorypage","list",morecategory);
	
	}

	
	
	
	@RequestMapping(value = "/aocpage", method = RequestMethod.GET)
	public ModelAndView view(@ModelAttribute landingPageModel landingpagemodal, @RequestParam("pack_id") String pack_id)
			throws Exception {
		landingpagemodal.setPack_id(pack_id);
		// String editorid = landingpagemodal.getService_id();

		landingPageModel lpm = landingpae_dao.landing_serviceId1(pack_id);
		landingPageModel compack = landingpae_dao.datafromCompack(landingpagemodal);

		ModelAndView mv = null;

		if (lpm == null) {
			mv = new ModelAndView("errorpage");
			System.out.println("thai");
			return mv;
		}

		String m = lpm.getAoc_page_message();
		System.out.println("+++++++++++++++" + m);
		String packdesc = lpm.getPack_description();
		String productid = lpm.getProduct_id();
		String packid = lpm.getPack_id();

		String serviceid = compack.getService_id();

		mv = new ModelAndView("gameaoc");
		System.out.println("in if condition");
		mv.addObject("Aocpage", m);
		mv.addObject("serviceid", packid);

		mv.addObject("packdesc", packdesc);
		mv.addObject("productid", productid);
		mv.addObject("service_id", serviceid);

		return mv;
	}
}

/*
 * @ResponseBody
 * 
 * @RequestMapping(value="/messageEditor",method=RequestMethod.GET) public
 * ModelAndView messageEditor(@ModelAttribute landingPageModel
 * landingPageModel,@RequestParam("service_id") String service_id) throws
 * Exception {
 * 
 * landingPageModel.setService_id(service_id);
 * 
 * String toid=landingPageModel.getService_id();
 * 
 * System.out.println(":::::::::::::::::::"+toid);
 * 
 * String bhel=req.getParameter("service_id");
 * 
 * 
 * landingpagemodal.setService_id(service_id); String
 * editorid=landingpagemodal.getService_id();
 * System.out.println("*+++++++++++++++++**"+editorid); ModelAndView mv = new
 * ModelAndView("messageEditor"); mv.addObject("toid",toid); return mv;
 * 
 * 
 * }
 */
