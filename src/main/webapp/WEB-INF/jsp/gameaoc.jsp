<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>VASAOC</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://github.com/Pyo25/Phonegap-SMS-reception-plugin/blob/master/www/SmsInboxPlugin.js"></script>
   <link rel="stylesheet" href="./resources/css/vastoimage.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

</head>
<body background="red">

<div class="container" style="width:500px;  height: 450px;  border: solid #8ab9e0;">


	
	<table><thead>
	
	<h1 style="color:red">${packdesc}</h1>
 						<h2>${Aocpage} </h2>
 						
	
<%-- 			         	<c:forEach items="${Aocpage}" var="aocpage">
			         	
			         <th id="${aocpage. getAoc_page_message()}">${aocpage. getAoc_page_message()} </th>
			         	</c:forEach> 
 --%>
</thead></table>
      

		
	 			
 
		<button type="submit"  id="mylink" name=""value="${productid}" style="text-align: -webkit-center;    color: white; text-align: -webkit-center; margin-top: 30px; background-color: #006cda; width: 41%;font-size: 22px;height: 33px; margin-left:  54px;font-style: oblique; ">สมัครเป็นสมาชิก
</button>
		<button onclick="myFunction()" style=" text-align: -webkit-center; color: white; text-align: -webkit-center; margin-top: 30px; background-color: #006cda; width: 25%;font-size: 22px;height: 33px; margin-left: 40px;font-style: oblique; ">ยกเลิก</button>


<!-- <p>Open <a href="#" id="mysms">SMS</a>.</p>
<p>Open <a href="#" id="myLink">smseditor</a>.</p> -->

	<div >	
	</div>
</div>
<!-- <script>
    $('#mysms').click(function () {
    alert("weryui")
    var smsInboxPlugin = cordova.require('cordova/plugin/smsinboxplugin');
    	smsInboxPlugin.isSupported ((function(supported) {
    		
    	    if(supported) 
    	      alert("SMS supported !");
    	    else
    	      alert("SMS not supported");
    	  }), function() {
    	    alert("Error while checking the SMS support");
    	  });
    });
</script> -->


<script>
    $('#mylink').click(function () {
        window.open('sms:${productid}?body=${service_id}', '_self');
        return false;
    });
</script>

<script>
function myFunction() {
    var myWindow = window.open("", "_self");
    myWindow.document.write("");
}
</script>
</body>
</html>