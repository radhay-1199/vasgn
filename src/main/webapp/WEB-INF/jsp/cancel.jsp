<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>success</title>
</head>
<style>
#close {
    position: absolute;
    z-index: 1;
    top: 0;
    right: 3%;
    margin-top: 90px;
}
h1.head-content {
    font-size: 50px;
    font-style: oblique;
    text-align: center;
    color: #c30000;
    padding: 450px 0px 0px 0px;
}
h1.body-content {
    font-size: 50px;
    font-style: oblique;
    text-align: center;
    color: #c30000;
    padding: 10px 0px 0px 0px;
}
</style>
<body>
	<div>
      <a href="https://www.google.com/"><span id="close"><img src="${context}/resources/images/close.png"></span></a>
	</div>
	<div>
	<div>
		<h1 class="head-content">Your request has been cancelled.</h1>
	</div>

	<div >
		<h1 class="body-content">Please try again.</h1>
	</div>
</body>
</html>