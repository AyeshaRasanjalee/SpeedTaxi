<%-- author W.M.S.T Wijekoon
	IT19210452
	kandy weekday
	G1_G8_vehicle rental system --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

    
<%

String payId = request.getParameter("payId");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "speedtaxi";
String userid = "root";
String password = "11111";

try {
Class.forName(driver);
} 

catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>

      
<!DOCTYPE html>
<html>
<head>


<link href='https://fonts.googleapis.com/css?family=Balsamiq Sans' rel='stylesheet'>
	<link rel="stylesheet" type= "text/css" href="css/main.css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
<!-- 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	 -->
	<meta charset="ISO-8859-1"name="viewport" content="width=device-width, initial-scale=1">
	<title>SpeedTaxi online vehicle rental</title>
</head>

<body class = "body">
		
	<div id="Mysidenav" >
		<a href="Home.jsp"  id ="home"> Home </a>
		<a href="Login.jsp"  id ="login"> login </a>
		<a href="Signup.jsp"  id ="SignUp"> Sign up </a>
		<a href="payment.jsp"  id ="Payment"> Payment </a>
		<a href="AboutUs.jsp"  id ="AboutUs"> About us </a>
		<a href="Contactus.jsp"  id ="ContactUs"> Contact us </a>
	
	</div>
	
		<p id = "name" >SpeedTaxi </p>
		<p id = "name1"> QUICKER , EASIER , SMARTER </p>
		
			<div class="col-25">
    <div class="container">
    
      <!------------------------------------------- Display Payment details------------------------------------------------------------------------------ -->
    
      
		<h1><b>Payment Details</h1><br/></br>
		
		<table>
		<tbody>
				
			
			<%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from payment where payId=(select max(payId) from payment)";    
				
				
				
				resultSet = statement.executeQuery(sql);
				System.out.print("testtt");
				
				int j = 0;
				
				while(resultSet.next()){
			
			
			%>
			<tr style ="color : #03396c; font-size:20px;font-family: 'Balsamiq Sans';" >
				<th >Name on card</th>
				<td></td>
				<td>:</td>
					<td></td>
				<td></td>
				<td ><%=resultSet.getString("cardname") %></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<tr>
				<th></th>
				<td></td>
			</tr>
					<tr>
				<th></th>
				<td></td>
			</tr>
			
			<tr style ="color : #03396c; font-size:20px;font-family: 'Balsamiq Sans';" >
				<th >Card No</th>
				<td></td>
				<td>:</td>
					<td></td>
				<td></td>
				<td><%=resultSet.getString("cardNo") %></td>
			</tr>
				<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<tr>
				<th></th>
				<td></td>
			</tr>
					<tr>
				<th></th>
				<td></td>
			</tr>
			
			<tr style ="color : #03396c; font-size:20px;font-family: 'Balsamiq Sans';" >
				<th>Expiry date</th>
				<td></td>
				<td>:</td>
					<td></td>
				<td></td>
				<td><%=resultSet.getString("expdate") %></td>
			</tr>
				<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<tr>
				<th></th>
				<td></td>
			</tr>
					<tr>
				<th></th>
				<td></td>
			</tr>
			
			<tr style ="color : #03396c; font-size:20px; font-family: 'Balsamiq Sans';" >
				<th>Security code</th>
				<td></td>
				<td>:</td>
					<td></td>
				<td></td>
				<td ><%=resultSet.getString("secCode") %></td>
			</tr>
				<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
					<tr>
				<th></th>
				<td></td>
			</tr>
				<tr>
				<th></th>
				<td></td>
			</tr>
			
			<tr style ="color : #03396c; font-size:20px;  font-family: 'Balsamiq Sans';" >
				<th >Amount</th>
				<td></td>
				<td>:</td>
					<td></td>
				<td></td>
				<td ><%=resultSet.getDouble("amount") %></td>
			</tr>
				<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<tr>
				<th></th>
				<td></td>
			</tr>
					<tr>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th></th>
				<td></td>
			</tr>
			
			
			</tbody>
			</table>
			
		 
      <br/>	
		
      <hr>
      <br/>
    
	
	<p style ="font-size:17px;"><b>Press Confirm if above details are correct</p><br/>
      
 <div class="w3-show-inline-block">
  <div class="w3-bar">
    <a class="btn "  href="updatePayment.jsp?payId=<%=resultSet.getString("payId")%>">Update</a>
    <a class="btn "  href="deletePayment.jsp?payId=<%=resultSet.getString("payId")%>">Delete</a>
    <a class="btn "  href ='Home.jsp'>Confirm</a>
 
 <%
			
			j++;
				}
				
				connection.close();
			
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			%>
 
  </div>
  </div>
      <br/>
<br/>
    </div>
    <br/>
<br/>
  </div> 

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>


<div class = "footer">
	<br/>
	<div class="button">
		<button onclick="document.location = 'payment.jsp'">Payment</button> 
		<button onclick="document.location = 'AboutUs.jsp'"> About us</button>
		<button onclick="document.location = 'Contactus.jsp'">Contact us</button>
		
	</div>
	
	
	
	<div class="media">
		<ul>
			<li><i class="fa fa-facebook-f"aria-hidden="true"></i></li>
			<li><i class="fa fa-instagram"></i></li>
			<li><i class="fa fa-twitter"></i></li>
		</ul>
	</div>

<hr/>
	<p style= "text-align:center ;color:#bfbfbf">© 2020 Copyright:SpeedTaxi.com</p>
</div>

</body>
</html>