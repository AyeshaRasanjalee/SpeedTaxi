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
<title>Delete driver account</title>
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
		String driverId = request.getParameter("driverId");
		String NIC = request.getParameter("NIC");
		String driverName = request.getParameter("driverName");
		String phnNumber = request.getParameter("phn");
		String acceptedBY = request.getParameter("accept");
		
	%>
	
	<div id = "data">
	
	<!-- display current details of the driver -->
	<!-- user can delete driver account -->	
	
		<div id = "form">	
	       
		    <form method ="POST" action="delete-D">
		
			
			<h4>Delete Driver Account</h4>
			
			<label>Driver ID:</label>
			<br>
			<input type = "text" name= "did"  value = "<%=driverId %>" readonly id="dp" >
			<br>
			<br>
			
			<label>NIC:</label>
			<br>
			<input type = "text" name= "nic"  value = "<%=NIC %>" readonly id="dp" >
			<br>
			<br>
			
			<label>Driver name:</label>
			<br>
			<input type="text" name="name" value="<%=driverName %>" readonly id="dp">
			<br>
			<br>
			
			
			<label>Phone Number:</label>
			<br>
			<input type = "text" name="phn" value="<%=phnNumber%>" readonly >
			<br>
			<br>
			
			<label>Accepted_by adminId:</label>
			<br>
			<input type = "text" name= "accept" value="<%=acceptedBY %>" readonly id="dp">
			<br>
			<br>
			
			
			<input type="submit"  name = "submit" value="delete driver account">
		
			</form>
		</div>
	</div>

</body>
</html>