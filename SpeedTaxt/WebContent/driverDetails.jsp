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
<title>Driver details</title>
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

			<div id="form">
				<center>
				<table>
				<c:forEach var="dr" items="${drDetails}">
					
				<c:set var="driverId" value ="${dr.driverId}"/>
				<c:set var="NIC" value="${dr.NIC}"/> 
				<c:set var= "driverName" value ="${dr.driverName}"/>
				<c:set var = "phnNumber" value="${dr.phnNumber}"/>
				<c:set var = "acceptedBy_userId" value="${dr.acceptedBY}"/>
		
	
				<tr>
					<td>Driver ID:</td>
					<td>${dr.driverId}</td>
				</tr>
				
				<tr>
					<td>Driver NIC:</td>
					<td>${dr.NIC}</td>
				</tr>
					
				<tr>
					<td>Driver Name:</td>
					<td>${dr.driverName}</td>
				</tr>
				
				<tr>
					<td>Phone Number:</td>
					<td>${dr.phnNumber}</td>
				</tr>
				
				<tr>
					<td>Accepted by userID:</td>
					<td>${dr.acceptedBY}</td>
				</tr>
		
				</c:forEach>
				</table>
				</center>
				
				<br><br>
				
				<c:url value="updateDriver.jsp" var="drupdate">
					<c:param name="driverId" value="${driverId}"></c:param>
					<c:param name="NIC" value="${NIC}"></c:param>
					<c:param name="driverName" value="${driverName}"></c:param>
					<c:param name="phn" value="${phnNumber}"></c:param>
					<c:param name="accept" value="${acceptedBy_userId}"></c:param>
				</c:url>
			
				<a href="${drupdate}" style = "color: black; text-decoration: none;" >update driver details</a>		
				
				<br><br>
			 
				<c:url value="deleteDriver.jsp" var="drdelete">
					<c:param name="driverId" value="${driverId}"></c:param>
					<c:param name="NIC" value="${NIC}"></c:param>
					<c:param name="driverName" value="${driverName}"></c:param>
					<c:param name="phn" value="${phnNumber}"></c:param>
					<c:param name="accept" value="${acceptedBy_userId}"></c:param>
				</c:url>
			
				<a href="${drdelete}" style = "color: black; text-decoration: none; float:right 80px;">delete driver details</a>
		</div>
		
	</div>

</body>
</html>