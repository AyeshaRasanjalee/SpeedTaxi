<%-- author W.M.S.T Wijekoon
	IT19210452
	kandy weekday
	G1_G8_vehicle rental system --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.DriverManager"%>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!---------------------------update payment Details------------------------------------------------------------------>
    
    <%
	String payId = request.getParameter("payId");
	String driver = "com.mysql.cj.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "speedtaxi";
	String userid = "root";
	String password = "11111";
		try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
    
    <%
		try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from payment where payId="+payId;
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
	%>
    
    
<!DOCTYPE html>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Average Sans' rel='stylesheet'>
	<link rel="stylesheet" type= "text/css" href="css/main.css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
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
		
		
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="updateProcessPay.jsp" method="post">
      
          <div class="col-50">
            <h1  style = "font-family: 'Average Sans';"><i><b>Payment</b></h1><br/>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-credit-card" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <input type="hidden" name = "payId" value="<%=resultSet.getString("payId") %>">
            <label for="cname">Name on Card</label>
            <input type="text" id="cardname" name="cardname" required="required" value="<%=resultSet.getString("cardname") %>">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="cardNo" name="cardNo"  required="required" value="<%=resultSet.getString("cardNo") %>">
            <label for="expmonth">Expiry Date</label>
            <input type="date" id="expdate" name="expdate" required="required" value="<%=resultSet.getString("expdate") %>">
            <label for="cvv">Security code</label>
            <input type="text" id="secCode" name="secCode"  required="required"  value="<%=resultSet.getString("secCode") %>">
   
       
        <input type="submit" name="Submit" value="Submit" class="btn" >
      </form>
    </div>
    
      	 <%
		}
				connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}		
				
  	 %>
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


