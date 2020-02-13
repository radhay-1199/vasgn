<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>subscribe</title>
<link type="text/css" rel="stylesheet" charset="UTF-8" href="${context}/resources/css/translateelement.css">
</head>
<style>
body{
	width:100%;
	height:auto;
	margin:auto;
	background:#ccc;
	margin-top: 20px;
}
#main{
	width:90%;
	height:auto;
	margin:auto;
	background:#f3f3f3;
}
#bannerbox{
	width:100%;
	margin:auto;
	background:#5f5e5e;
	height:auto;
	box-sizing:border-box;
}
#banner{
	width: 100%;
	height: auto;
	margin: auto;
	text-align: center;
	background: #fff;
}
#bannerbox img{
	width:100%;
}
#close{
	position: absolute;
	z-index: 1;
	top:0;
	right:3%;
}
p{
	font-family: Arial, Helvetica, sans-serif;
	font-size:14px;
	color:#000;
	margin: 5px;
	text-align:center;
	line-height:1.5em;
}
h1{
	font-size:20px;
	font-weight:bold;
	text-align:center;
	color:#333;
	font-family:Arial, Helvetica, sans-serif;
	margin: 10px 0 10px 0;
}
h2{
	font-size:16px;
	font-weight:bold;
	text-align:center;
	color:#333;
	font-family:Arial, Helvetica, sans-serif;
	margin: 9px 0 10px 0;
	text-decoration:underline;
}
h3{
	font-size:12px;
	font-weight:bold;
	text-align:left;
	color:#333;
	font-family:Arial, Helvetica, sans-serif;
	margin: 15px 0 10px 0;
	text-decoration:underline;
}
form{
	width:90%;
	height:auto;
	margin:auto;
	text-align:center;
}
.formStyle{
	width:200px;
	height:30px;
	border:1px solid #CCC;
	border-radius:2px;
	padding-left:5px;
	font-size:14px;
}
/* .formButton {
   background-color:#1146c5;
	display: inline-block;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	margin-top: 10px;
	width: 125px;
	height: 30px;
	padding-top: 2px;
	border-radius: 2px;
	text-decoration: none;
} */
.formButton {
    background-color: #1146c5;
    display: inline-block;
    color: #fff;
    font-size: 35px;
    font-weight: 500;
    margin-top: 10px;
    width: 200px;
    height: 55px;
    x: ;
    padding-top: 2px;
    border-radius: 2px;
    text-decoration: none;
}
.formButton:hover {
	color:#ffffff;
	text-decoration:underline;
}
.formButton:active {
	position:relative;
	top:3px;
}
.warning{
	font-size:12px;
	text-align:center;
	color:red;
	font-family:Arial, Helvetica, sans-serif;
	margin: 15px 0 10px 0;
}
.loginbar{
	width:100%;
	margin:auto;
	text-align:center;
}
img#banner-img {
    height: 645px;
}
.loginbttn {
    background-color:#d41d95;
    display: inline-block;
    color: #fff;
    font-size: 18px;
    font-weight: 500;
    margin-top: 10px;
    width: 75px;
    height: 25px;
    padding-top: 5px;
    border-radius: 2px;
    text-decoration: none;
}
.loginbttn:hover {
	color:#ffffff;
	text-decoration:underline;
}
.loginbttn:active {
	position:relative;
	top:3px;
}
.warning{
	font-size:12px;
	text-align:center;
	color:red;
	font-family:Arial, Helvetica, sans-serif;
	margin: 15px 0 10px 0;
}
.content{
	width:80%;
	height:auto;
	margin:auto;
	margin-bottom:20px;
	padding-bottom:10px;
}
.smalltxt{
	font-size:12px;
	font-weight:bold;
	text-align:center;
	color:#333;
	font-family:Arial, Helvetica, sans-serif;
	margin: 10px 0 10px 0;
}
.select{
	width: 60%;
    height: 30px;
    border-radius: 5px;
    border: 1px solid #a2a2a2;
}
@media only screen and (max-width: 800px) {
#close{
	position: absolute;
	z-index: 1;
	top:0;
	right:0;
	cursor:pointer;
}
}
</style>
<body data-gr-c-s-loaded="true">
<div id="main">
	<div id="bannerbox">
      <a href="https://www.google.com"><span id="close"><img src="${context}/resources/images/close.png"></span></a>
      <img src="${context}/resources/images/banner.jpg" id="banner-img">
	</div><br>
	<div class="content">
        	<p>
				<font style="vertical-align: inherit;">
				บริการ Cute Girl สุดเอ็กครูซีฟ <br><br>
				 ค่าบริการ 10 บาท / SMS รับ 1SMS / วัน <br>
				 อัตราค่าบริการดังกล่าว ไม่รวมภาษีมูลค่าเพิ่ม <br>(VAT 7%) และค่าบริการอินเตอร์เน็ต
				</font>
			</p><br>       
        <div class="loginbar">
			<a href="http://13.127.243.248:9001/confirmsub" class="formButton">
				<font style="vertical-align: inherit;">
				สมัครบริการ
    
				</font>
			</a>
		</div><br>
			 <p>
				 <font style="vertical-align: inherit;">
				 	วิธีการสมัครและยกเลิกบริการ<br>
					สมัครบริการ พิมพ์ 1 ส่งไปที่ 4215135<br>
					 หรือกด * 421513501 <br>
					หรือ กด *421513501 โทรออก
				</font>
				<br><br>
				<font style="vertical-align: inherit;">
					ยกเลิก พิมพ์ C 1 ส่งไปที่ 4215135<br>
   					 สอบถามข้อมูลเพิ่มเติมหรือยกเลิกบริการได้ที่ศูนย์บริการ<br>
					โทร 02-026-3317 ทุกวัน ตลอด 24 ชั่วโมง  
			</font>
		</p>
	  </div>
</div>
<div id="goog-gt-tt" class="skiptranslate" dir="ltr"><div style="padding: 8px;">
	<div>
		<div class="logo">
			<img src="${context}/resources/images/translate_24dp.png" width="20" height="20" alt="Google Translate">
		</div></div>
</div>
<div class="top" style="padding: 8px; float: left; width: 100%;">
	<h1 class="title gray">Original text</h1>
</div>
<div class="middle" style="padding: 8px;"><div class="original-text"></div></div><div class="bottom" style="padding: 8px;"><div class="activity-links"><span class="activity-link">Contribute a better translation</span><span class="activity-link"></span></div><div class="started-activity-container"><hr style="color: #CCC; background-color: #CCC; height: 1px; border: none;"><div class="activity-root"></div></div></div><div class="status-message" style="display: none;"></div></div>
<div class="goog-te-spinner-pos"><div class="goog-te-spinner-animation"><svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66"><circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle></svg></div></div>
</body>
</html>