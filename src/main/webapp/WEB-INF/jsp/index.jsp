<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>VAS</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
   <link rel="stylesheet" href="./resources/css/vastoimage.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

</head>
<body background="red">

<div class="container" style="width:500px;  height: 689px;  border: solid #8a4664;">

                        <img id="content-img"  src="./resources/images/wwemen.jpg" style="background-position:center; background-size:cover;"class="img-responsive" >


<div class="container" style="width:100%;height:35px;background-color: #c34473;">
	<h2 style=" color: white;text-align: -webkit-center; margin-top: 3px;">Welcome to WWE</h2>
</div>

  <form:form action="./vasto" method="post" modelAttribute="otprequest">
  <p class="col-xs-10 col-xs-offset-2" style="text-align:-webkit-centre; font-size: 172%;  margin-top: 40px;"><small>Charges 2500 fils/30 days</small></p>
  <br>
  <p class="col-xs-12"><small><strong style="font-size: 172%;     margin-left: 19px;">Please confirm your viva Mobile Number</strong></small></p>
    
    <div class="container" style="width:500px;">
    <div class="col-xs">
                
                    <div class="col-xs-3">
                        <form:input type="text" path="countryCode" class="form-control" value="" size="3" maxlength="3" style="background-color: #efdee4; width:100%;    font-size: 24px; color: black;" />
                    </div>
                    <div class="col-xs-9">
                        <form:input type="text" path="msisdn" class="form-control" value="" size="10" maxlength="10" style="background-color: #efdee4; width: 85%;     font-size: 24px; color: black;" />
                    </div>
                   <form:input type="hidden" value="1" path="subscriptionId"/> 
                    <form:input type="hidden" value="10117" path="keyword"/> 
                </div>
            </div>
<br>
    <div class="form-group col-xs-10 col-xs-offset-2" style="width: 90.333333%;     margin-left: 3.666667%;">
        <button type="submit" class="btn btn-success col-xs-10 col-xs-offset-1" style="width:width: 360px">Subscribe</button>
    </div>
  
  </form:form>
</div>


</body>
</html>