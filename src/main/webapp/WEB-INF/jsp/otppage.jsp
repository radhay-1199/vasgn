<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>OTP</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
   <link rel="stylesheet" href="./resources/css/vastoimage.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

</head>
<body >

<div class="container" style="width:500px ; height: 689px;  border: solid #8a4664;">

                        <img id="content-img"  src="./resources/images/wwemen.jpg" style="background-position:center; background-size:cover;"class="img-responsive" >


<div class="container" style="width:100%;height:35px;background-color: #c34473;">
	<h2 style=" color: white;text-align: -webkit-center; margin-top: 3px;">Welcome to WWE</h2>
</div>

  <form action="./otp" method="post" >
  <p class="col-xs-10 col-xs-offset-2" style="text-align:-webkit-centre; font-size: 172%;  margin-top: 40px;     margin-left: 100px;"><small>charges 2500fils/30 days</small></p>
  <br>
 
    
    <div class="container" style="width:400px;     height: 95px; margin-left: 118px;">
    <div class="col-xs">
                
                    <div class="col-xs-3">
                        <p class="text" style=" margin: -1px -35px 12px;font-size: 23px;">OTP</p>
                    </div>
                    <div class="col-xs-9" style="    width: 44%;">
                   
                        <input type="text" name="otp" class="form-control" value="" size="10" maxlength="10" style="background-color: #efdee4; width: 85%; margin-left: -74px;     font-size: 24px;color: black;" required>
                    </div>
                    
                </div>
            </div>
<br>
    <div class="form-group col-xs-10 col-xs-offset-2" style="width: 150.333333%;     margin-left: 4.666667%;">
        <button type="submit" class="btn btn-success col-xs-10 col-xs-offset-1" style=" width: 40%;">Subscribe</button>
    </div>
  
  
</div>


</body>
</html>