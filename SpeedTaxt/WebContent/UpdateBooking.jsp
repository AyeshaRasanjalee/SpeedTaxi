<%--
	author KA Rasanjalee
	IT19150444
	kandy weekday
	G1_G8_vehicle rental system
	
 --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<a href="Home.jsp" id="home">Home</a> <a href="login.jsp" id="login">
			login </a> <a href="Signup.jsp" id="SignUp"> Sign up </a> <a
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

	<!-- catch the details in passed by UserPackage.jsp -->

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		String ploc = request.getParameter("ploc");
		String dloc = request.getParameter("dloc");
		String vehi = request.getParameter("vehi");
		String time = request.getParameter("time");
		String mail = request.getParameter("mail");
	%>
	<div class="bg-img1">
		<form action="update" class="container" method="post">
			<center>
				<h1>************* Update booking data *****************</h1>
			</center>

			<label><b>Booking id </b></label> <input type="text"
				value="<%=id%>" name="id" readonly> <label><b>User
					name </b></label> <input type="text" value="<%=name%>" name="UserName">

			<label><b>Pickup location</b></label> <input type="text"
				value="<%=ploc%>" name="plocation" id="plocation"> <label><b>Drop
					location</b></label> <input type="text" value="<%=dloc%>" name="dlocation">

			<label><b>Email </b></label> <input type="text" value="<%=mail%>"
				name="email"> <label><b>Pickup date</b></label>
			<h5>Use like year-month-day Ex :2020-10-10</h5>
			<input type="date" value="<%=date%>" name="date"><br /> <label><b>Time
			</b></label>
			<h4>Use 24hr time hour:minute:seconds Ex :00:00:00</h4>
			<input type="time" value="<%=time%>" name="time"> <img
				src="vehi.jpg" style="height: 200px; width: 900px"><br /> <label><b>
					vehicle type(Threeweel , car, van) :</b></label> <input type="text"
				value="<%=vehi%>" name="vehi"> </br>
			</br>
			<button type="submit" class="btn">Update booking data</button>
		</form>

	</div>


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