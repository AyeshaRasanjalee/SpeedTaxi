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

<title>Add new Driver</title>

	<script type="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js">
		function validate(){
			
			var a = document.forms["myForm"]["nic"].value;
			var b = document.forms["myForm"]["name"].value;
			var c = document.forms["myForm"]["phn"].value;
			var d = document.forms["myForm"]["accept"].value;
			
			if(a== " "||a=="null"){
				alert("NIC must be filled");
				return false;
			}
			if(a.length()!==10){
				alert("NIC should have 10 characters");
				return false;
			}
			if(b==" "||b=="null"){
				alert("Name must be filled");
				return false;
			}
			if(c==" "||c=="null"){
				alert("phone number must be filled");
				return false;
			}
			if(c.length()!==10){
				alert("phone number should have 10 digits");
				return false;	
			}
			if(d==" "||d=="null"){
				alert("admin id must be filled");
				return false;
			}
			
			
		}
	</script>
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
       
       <!-- insert new driver details -->
       
        <form name="myForm"  action="insert-D" onsubmit="return validate()" method ="POST" >
			
		<div id="form">	
		<h4>Add New Driver</h4>
		<br>
		<br>
		
		<label>NIC:</label>
		<br>
		<input type = "text" name= "nic" id="dp">
		<br>
		<br>
		
		<label>Driver name:</label>
		<br>
		<input type="text" name="name" id="dp" >
		<br>
		<br>
		
		
		<label>Phone Number:</label>
		<br>
		<input type = "text" name= "phn" id="dp">
		<br>
		<br>
		
		<label>Accepted_by adminId:</label>
		<br>
		<input type = "text" name= "accept" id="dp">
		<br>
		<br>
		
		
		<input type="submit"  name = "submit"  value="Add driver"  required>
		
		
		</div>
	
	
		</form>
		</div>
	

		
		

</body>
</html>