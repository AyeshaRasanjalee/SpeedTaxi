<%--
	author K.G. Rajapakse
	IT19014814
	Kandy-weekday
	G1_G8_vehicle rental system
 --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel  = "stylesheet" href="admin.css">
<title>Delete vehicle details</title>
</head>
<body>
		<div id = "header">
		
			<img src = "avatar.png" alt = "admin logo" id = "adminlogo">
			
			<p id = "name" >SpeedTaxi </p>
			<p id = "name1"> QUICKER , EASIER , SMARTER </p>
			
		</div>
		<div id = "sidebar" style= "height:1000px">
			<ul>
			<li><a href = "addDriver.jsp" style = "color: white; text-decoration: none">Add New Driver</a></li>
			<li><a href = "addVehicle.jsp" style = "color: white; text-decoration: none">Add New Vehicle</a></li>
			<li><a href = "selectDriver.jsp" style = "color: white; text-decoration: none">Select a driver</a></li>
			<li><a href = "selectVehicle.jsp" style = "color: white; text-decoration: none">Select a vehicle</a></li>
			<li><a href = "Login.jsp" style = "color: white; text-decoration: none">Log off</a></li>
			
			</ul>
		</div>
		
		<%
			String id =request.getParameter("id");
			String vNo= request.getParameter("no");
			String vtype = request.getParameter("type");
			String vprice = request.getParameter("price");
			String vmax = request.getParameter("max");
		%>
		
		<div id = "data"><br>
	
	<!-- delete form with current vehicle details -->
	<!-- user can delete  vehicle details -->
	
		<div id = "form">
		
			<form action="delete2" method="post">
			
			<h4>Delete Vehicle Details</h4>
	
			
			<label>Vehicle ID </label>
			<br>
			<input type="text" name="vid" value="<%=id %>" readonly>
			<br>
			<br>
			
			<label>Vehicle No</label>
			<br>
			<input type="text" name="vNo" value="<%=vNo%>" readonly>
			<br>
			<br> 
			
			<label>Vehicle Type</label>
			<br>
			<input type="text" name="vtype" value="<%=vtype%>" readonly>
			<br>
			<br>
			
			<label>Vehicle Price</label>
			<br>
			<input type="text" name="vprice" value="<%=vprice%>" readonly>
			<br>
			<br>
			
			<label>Maximum passengers</label>
			<br>
			<input type="text" name="vmax" value="<%=vmax%>" readonly>
			<br>
			<br>
			
			<input type="submit" name="submit" value="delete vehicle details"><br>
			</form>
		</div>
	</div>
		

</body>
</html>