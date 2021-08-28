<!--
IT19182360	
R.M.S.T. Rathnayake

  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
	<link rel="stylesheet" type= "text/css" href="css/main.css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
	<meta charset="ISO-8859-1"name="viewport" content="width=device-width, initial-scale=1">
	<title>SpeedTaxi online vehicle rental</title>
	<style>
	input[type=submit] {
  	width: 100%;
  	height: 200px;
  	background-color: #005ce6;
  	color: white;
  	padding: 14px 20px;
  	margin: 8px 0;
  	border: none;
  	border-radius: 4px;
  	cursor: pointer;
}

input[type=submit]:hover {
  background-color: #4d94ff;
}</style>
</head>

<body class = "body">
<%      
		String username = (String)request.getSession().getAttribute("UserName");
 		if(username ==null){
       out.println("<script>alert('Please login..!!');</script>");
       out.println("<script>location= 'Login.jsp';</script>");
      
      }
  %>
		
	
	
		<p id = "name" >SpeedTaxi </p>
		<p id = "name1"> Welcome <%=username%> </p> 
		

        <br></br> <br></br> <br></br>
        


 <div class="row">
        
    <div class="col-md-3"></div>

    <div class="col-md-5 formBackground" >
    <br>
    
    <div class="row">
	<div class="col-xs-12 col-md-6">
    <input type="submit" name="commit" value="Edit Profile" onclick="window.location.href='Edit.jsp'">
    </div>
    <div class="col-xs-12 col-md-6">
    <input type="submit" name="commit" value="Home" onclick="window.location.href='Home.jsp'">
	</div>
    </div>

 	</div>
    </div>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>




<div class = "footer">
	<br/>
	<div class="button">
	<button onclick="document.location = 'payment.jsp'">Payment</button>
			<button onclick="document.location = 'AboutUs.jsp'">About us</button>
			<button onclick="document.location = 'Contactus.jsp'">Contact us</button>
			
	</div>
	
	
	
	<div class="media">
		<ul>
			<li><i class="fa fa-facebook-f"aria-hidden="true"></i></li>
			<li><i class="fa fa-instagram"></i></li>
			<li><i class="fa fa-twitter"></i></li>
		</ul>
	</div>

<hr/>
	<p style= "text-align:center ;color:#bfbfbf">© 2020 Copyright:SpeedTaxi.com</p>
</div>

</body>
</html>