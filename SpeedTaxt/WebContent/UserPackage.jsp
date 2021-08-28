<%--
	author KA Rasanjalee
	IT19150444
	kandy weekday
	G1_G8_vehicle rental system
	
 --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- to connect jsp and call to java class using jstl -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1" name="viewport"
	content="width=device-width, initial-scale=1">
<title>SpeedTaxi online vehicle rental</title>
</head>

<body class="body">

	<div id="Mysidenav">
		<a href="Home.jsp" id="home">Home</a>
		 <a href="login.jsp" id="login">login </a> <a href="Signup.jsp" id="SignUp"> Sign up </a> <a
			href="payment.jsp" id="Payment"> Payment </a> <a href="AboutUs.jsp"
			id="AboutUs">About us </a> <a href="Contactus.jsp" id="ContactUs">
			Contact us </a>
	</div>

	<p id="name">SpeedTaxi</p>
	<p id="name1">QUICKER , EASIER , SMARTER</p>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />


	<!--a loop for print the values  -->
	<!--use the name when we used to set attribute -->
	<c:forEach var="Cpack" items="${cusPackDetails}">

		<c:set var="id" value="${Cpack.id}" />
		<c:set var="name" value="${Cpack.name}" />
		<c:set var="date" value="${Cpack.date}" />
		<c:set var="ploc" value="${Cpack.pickLoca}" />
		<c:set var="dloc" value="${Cpack.dropLoca}" />
		<c:set var="vehi" value="${Cpack.vehicle}" />
		<c:set var="time" value="${Cpack.time}" />
		<c:set var="mail" value="${Cpack.mail}" />

		<!-- Internally calling  Cpackage class getName method -->
		<p style="position: absolute; left: 200px; font-size: 25px">
			Booking ID: ${Cpack.id}<br /> Name : ${Cpack.name}<br /> Pickup
			date:${Cpack.date}<br /> Pickup location :${Cpack.pickLoca}<br />
			Drop location :${Cpack.dropLoca}<br /> Vehicle type:${Cpack.vehicle}<br />
			Time :${Cpack.time}<br /> Mail :${Cpack.mail}
		</p>

		<br />
		<br />
	</c:forEach>

	<c:url value="UpdateBooking.jsp" var="cusUpdate">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="date" value="${date}" />
		<c:param name="ploc" value="${ploc}" />
		
		<c:param name="dloc" value="${dloc}" />
		<c:param name="vehi" value="${vehi}" />
		<c:param name="time" value="${time}" />
		<c:param name="mail" value="${mail}" />
	</c:url>

	<a href="${cusUpdate}"> <input type="button" name="update"
		value="Update booking details" id="update">
	</a>
	</br>
	</br>


	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<div class="footer">
		<br />
		<div class="button">
			<button onclick="document.location = 'payment.jsp'">Payment</button>
				<button onclick="document.location = 'AboutUs.jsp'">About us</button>
				<button onclick="document.location = 'Contactus.jsp.jsp'">Contact us</button>
				
		</div>



		<div class="media">
			<ul>
				<li><i class="fa fa-facebook-f" aria-hidden="true"></i></li>
				<li><i class="fa fa-instagram"></i></li>
				<li><i class="fa fa-twitter"></i></li>
			</ul>
		</div>

		<hr />
		<p style="text-align: center; color: #bfbfbf">© 2020
			Copyright:SpeedTaxi.com</p>
	</div>

</body>
</html>