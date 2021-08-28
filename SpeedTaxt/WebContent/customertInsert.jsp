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
	<br />
	<br />

	<div class="bg-img1">

		<form action="insert" class="container" method="post">
			<center>
				<h1>************* Insert data *****************</h1>
			</center>

			<h2>User name</h2>
			<input type="text" placeholder="Enter user name" name="UserName">

			<h2>Pickup location</h2>
			<input type="text" placeholder="Enter pickup location"
				name="plocation">

			<h2>Drop location</h2>
			<input type="text" placeholder="Enter drop location" name="dlocation">

			<h2>Email</h2>
			<input type="text" placeholder="Enter Email" name="email">

			<h2>
				Pickup date
				</h4>
				<h5>
					Use like year-month-day Ex :2020-10-10
					</h4>
					<input type="date" placeholder="2020-01-01" name="date">

					<h2>Time</h2>
					<h4>Use 24hr time hour:minute:seconds Ex :00:00:00</h4>
					<input type="time" placeholder="00:00:00" name="time"> <<img
						src="vehi.jpg" style="height: 200px; width: 900px">

					<center>
						<label>Choose a vehicle :</label> 
						<select name="Vcategory"
							value="choose a vehicle">
							<option value="Three">Three weel</option>
							<option value="Car">Car</option>
							<option value="Van">Van</option>
						</select>
					</center>

					<!--   <h1><b>Phone number </b></h1>
			 <input type="text" placeholder="Enter phone number" name="Pnum" required>-->
					<br />
					<button type="submit" class="btn">Create a booking</button>
		</form>

		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
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