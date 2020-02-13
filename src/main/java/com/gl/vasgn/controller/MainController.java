package com.gl.vasgn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gl.vasgn.modelandview.HttpResponse;
import com.gl.vasgn.modelandview.OtpRequest;
import com.gl.vasgn.util.HttpClient;
import com.google.gson.Gson;


@Controller
//@RequestMapping("content_provider")
public class MainController {
	

	@RequestMapping(value="/vasto",method=RequestMethod.GET)
	public ModelAndView view(Model  model) throws Exception
	{	
		  model.addAttribute("otprequest", new OtpRequest());
		  
		System.out.println("reaching1");
		return new ModelAndView("index");
	}

	@RequestMapping(value="/vasto")
	public ModelAndView test( @ModelAttribute("otprequest") OtpRequest otpRequest) throws Exception
	{
		try {

			System.out.println(otpRequest);
	
			HttpClient httpClient = new HttpClient();
			Gson gson = new Gson();
				
			
			String requestOtpurl = "http://52.66.84.67:8090/vas/wap/request_otp";

			 HttpResponse httpResponse = httpClient.sendPost(requestOtpurl, gson.toJson(otpRequest));
			
			if(httpResponse.getErrorCode()==200)
			return new ModelAndView("otppage");
			
			else {
				return new ModelAndView("error"); 
			}
				
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}

	
	@RequestMapping(value="/otp",method=RequestMethod.POST)
	public ModelAndView test() throws Exception
	{
		System.out.println(" this is otp page ");
		return new ModelAndView("otppage");
	}
	
	@GetMapping("/success")
	public ModelAndView successControl(@RequestParam(required=false) String txn_id, @RequestParam(required=false) String status) {
		//transactionservice.updateCgTransaction("success", status, txn_id);
		return new ModelAndView("success");
	}
	
	@GetMapping("/cancel")
	public ModelAndView cancelControl(@RequestParam(required=false) String txn_id, @RequestParam(required=false) String status) {
		return new ModelAndView("cancel");
	}

}
