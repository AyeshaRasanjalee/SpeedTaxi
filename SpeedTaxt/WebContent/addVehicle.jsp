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
<title>Add new vehicle</title>
	<script type="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js">
		function validate(){
			
			var a = document.forms["form"]["vno"].value;
			var b = document.forms["form"]["vtype"].value;
			var c = document.forms["form"]["vprice"].value;
			
			if(a== " "||a=="null"){
				alert("vehicle no must be filled");
				return false;
			}
			if(a.length()!==6){
				alert("vehicle no should have 6 charaters");
				return false;
			}
			if(b==" "||b=="null"){
				alert("vehicle type must be filled");
				return false;
			}
			if(c==" "||c=="null"){
				alert("vehicle price must be filled");
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
       
       	<!-- enter new vehicle details -->
       	
        <form name="form" method ="POST" action="add" onsubmit="return validate()">

		<div id="form">	
		<h4>Add New Vehicle</h4>

		
		<label>Vehicle No:</label>
		<br>
		<input type = "text" name= "vno" id="dp">
		<br>
		<br>
		
		<label>Vehicle Type:</label>
		<br>
		<input type="text" name="vtype" id="dp">
		<br>
		<br>
		
		
		<label>Vehicle price:</label>
		<br>
		<input type = "text" name= "vprice" id="dp">
		<br>
		<br>
		
		<label>Maximum no of Passengers:</label>
		<br>
		<input type = "text" name= "vmax" id="dp">
		<br>
		<br>
		
		<input type="submit"  name = "submit" value="Add vehicle"  required>
		
		
		</div>
	
	
		</form>
		</div>
		
		

</body>
</html>