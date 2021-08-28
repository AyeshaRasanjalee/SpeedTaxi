<%--
	author K.G. Rajapakse
	IT19014814
	Kandy-weekday
	G1_G8_vehicle rental system
 --%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel  = "stylesheet" href="admin.css">
<title>Select driver</title>
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
		
		<div id = "data"><br>
		
			<div id = "form">
				<form method = "post" action="select">
				
				
				<label>NIC</label><br>
				<input type ="text" name="nic">
				<br>
				<br>
				<input type="submit" name="submit" value="select driver">
				
				</form>
			</div>
		</div>
</body>
</html>