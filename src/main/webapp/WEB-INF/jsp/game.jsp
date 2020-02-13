<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  
   
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

</head>
<body background="red">

<div class="container" style="width:500px;  height: 700px;  border: solid #8ab9e0;">


	<%-- <c:forEach items="${Aocpage}" var="aocpage"> --%>



	
 <button onclick="document.getElementById('id01').style.display='block'" 
        class="w3-button w3-display-topright">&times;</button>
        
        
		 <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
  

      <img id="content-img"  src="./resources/images/games.jpg" style="background-position:center; background-size:cover; width: 100%;height: 322px; ;"class="img-responsive" >
<form action="./aocpage" method="get" modelAttribute="otprequest">

		<input type="text" name="pack_id" id="pack_id" style="display: none;" value="${serviceid}">
		<button type="submit" id="id" class="id" onclick="myFunction()" style=" text-align: -webkit-center;    color: white; text-align: -webkit-center; margin-top: 10px; background-color: #006cda; width: 58%;font-size: 22px;height: 33px; margin-left: 96px;font-style: oblique; ">สมัครเป็นสมาชิก
</button>
</form>
	<div >	
    <h>${Aocpage}</h>
	</div>
	<div>
	 <h4>${Aocpage}</h4>
	</div>
	
</div>
<!-- 
<script>
function myFunction() {
    var service_id=document.getElementById("service_id").value;
    alert("id is"+ service_id);
}
</script>
 -->
<script>
// Get the modal
var modal = ${Aocpage};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>