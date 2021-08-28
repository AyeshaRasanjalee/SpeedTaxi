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

<meta charset="ISO-8859-1">
<title>SpeedTaxi online vehicle rental</title>
</head>

<body class="body">

	<div id="Mysidenav">
		<a href="Home.jsp" id="home"> Home </a> 
		<a href="Login.jsp" id="login">Login </a>
		 <a href="Signup.jsp" id="SignUp"> Sign up </a> 
		 <a href="payment.jsp"id="Payment"> Payment </a>
		  <a href="AboutUs.jsp" id="AboutUs"> About us </a>
		   <a href="Contactus.jsp" id="ContactUs"> Contact us </a>
		   
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

	<div class="bg-img">
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />

		<form action="location" class="container" method="post">
			<center>
				<h1>Enter your user name and email to see your booking details
				</h1>
			</center>

			<h2>User name</h2>
			<input type="text" placeholder="Enter user name" name="UserName"
				required>

			<h2>Email</h2>
			<input type="text" placeholder="Enter Email" name="email" required>

			<!--   <h1><b>Phone number </b></h1>
			 <input type="text" placeholder="Enter phone number" name="Pnum" required>-->

			<button type="submit" class="btn">Show booking details</button>
		</form>
		<button type="button" class="btn1" 
			onclick="document.location = 'customertInsert.jsp'">Add new
			booking</button>
	</div>
	<br />
	<br />
	<br />
	<br />

	<div class="row">
		<div class="column">
			<div class="pic">
				<img src="kandy.jpg" style="width: 63%">
				<div class="name1">
					<h1>Kandy</h1>
				</div>
			</div>
		</div>
		<div class="column">
			<div class="pic">
				<img src="anu.jpg" style="width: 75%">
				<div class="name2">
					<h1>Anuradhapura</h1>
				</div>
			</div>
		</div>

	</div>
	<div class="row">
		<div class="column">
			<div class="pic1">
				<img src="col.jpg" style="width: 60%">
				<div class="name3">
					<h1>Colombo</h1>
				</div>
			</div>
		</div>
		<div class="column">
			<div class="pic1">
				<img src="sigi.jpg" style="width: 70%">
				<div class="name4">
					<h1>Sigiriya</h1>
				</div>
			</div>
		</div>
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
	<br />
	<br />
	<br />
	<br />


	<div class="footer">
		<br />
		<div class="button">
			<button onclick="document.location = 'payment.jsp'">Payment</button>
			<button onclick="document.location = 'AboutUs.jsp'">About us</button>
			<button onclick="document.location = 'Contactus.jsp'">Contact us</button>
			
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