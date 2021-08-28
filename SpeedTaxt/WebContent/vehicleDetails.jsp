<%--
	author K.G. Rajapakse
	IT19014814
	Kandy-weekday
	G1_G8_vehicle rental system
 --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel  = "stylesheet" href="admin.css">
<title>Select a vehicle</title>
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
		
		<div id ="data">
		
		<!-- display vehicle details relevant to the vehicle no -->
		
		<div id = "form">
		<center>
		<table >

		<c:forEach var="vehi" items="${vehiDetails}">
		
		<c:set var="vehicleId" value="${vehi.vehicleId}"/>
		<c:set var="vehicleNo" value="${vehi.vehicleNo}"/>
		<c:set var="vehicleType" value="${vehi.vehicleType}"/>
		<c:set var="vehiclePrice" value="${vehi.vehiclePrice}"/>
		<c:set var="maxPassengers" value="${vehi.maxPassengers}"/>
		
		<tr>
			<td>Vehicle ID:</td>
			<td>${vehi.vehicleId}</td>
		</tr>
		<tr>
			<td>Vehicle Number:</td>
			<td>${vehi.vehicleNo}</td>
		</tr>
		<tr>
			<td>Vehicle Type:</td>
			<td>${vehi.vehicleType}</td>
		</tr>
		<tr>
			<td>Vehicle Price:</td>
			<td>${vehi.vehiclePrice}</td>
		</tr>
		<tr>
			<td>Maximum Passengers:</td>
			<td>${vehi.maxPassengers}</td>
		</tr>
		
		</c:forEach>
		</table>
		</center>
		
		<br><br>
		
		<!-- store vehicle details in parameters and navigate to updateVehicle page with vehicle details -->
		<c:url value="updateVehicle.jsp" var="vehiupdate">
		
		<c:param name="id" value="${vehicleId}"/>
		<c:param name="no" value="${vehicleNo}"/>
		<c:param name="type" value="${vehicleType}"/>
		<c:param name="price" value="${vehiclePrice}"/>
		<c:param name="max" value="${maxPassengers}"/>
		
	
		</c:url>
		
		<a href="${vehiupdate}" style = "color: black; text-decoration: none; ">update vehicle</a>
		
		<br><br>
		
		<!-- store vehicle details in parameters and navigate to deleteVehicle page with vehicle details -->
	
		<c:url value="deleteVehicle.jsp" var="vehidelete">
		
		<c:param name="id" value="${vehicleId}"/>
		<c:param name="no" value="${vehicleNo}"/>
		<c:param name="type" value="${vehicleType}"/>
		<c:param name="price" value="${vehiclePrice}"/>
		<c:param name="max" value="${maxPassengers}"/>
		</c:url>
		
		<a href="${vehidelete}" style = "color: black; text-decoration: none">delete vehicle</a>
		
		</div>
		</div>



</body>
</html>