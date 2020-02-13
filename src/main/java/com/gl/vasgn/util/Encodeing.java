package com.gl.vasgn.util;

import java.util.Base64;

public class Encodeing {

	public static void main(String[] args) 
	{
		String encodetext="96550706362";
		
		 
		
		   Base64.Encoder encoder= Base64.getEncoder();
		   String s=encoder.encodeToString(encodetext.getBytes());
		   
		   System.out.println( "hii"+s);
		   
		   Base64.Decoder decoder=Base64.getDecoder();
		   String d= new String (decoder.decode(s));
		   
		   System.out.println("this is decoded text"+d);

		   String url="http://localhost:8080/VASOTP/indexpage?billerid=od&publisher=way2sport&msisdn=6789645957";
		   Base64.Encoder urlencode= Base64.getUrlEncoder();
		   String Url=urlencode.encodeToString(url.getBytes());
		   System.out.println("encoded url  "+Url);
		   
		   
		   Base64.Decoder urldecoder=Base64.getUrlDecoder();
		   String deco=new String(urldecoder.decode(Url.getBytes()));
		   System.out.println("dcoded url  "+deco);
		   
		

		/*
		 * double rando = Math.random() * 49 + 1;
		 * System.out.print("this is random numbers"+rando);
		 */



		   
	}

}
