<!--
IT19182360	
R.M.S.T. Rathnayake

  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="home.location.DBconnect"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type= "text/css" href="css/main.css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
	<script>
	var check = function() {
		  if (document.getElementById('password').value ==
		    document.getElementById('confirm_password').value) {
		    document.getElementById('message').style.color = 'green';
		    document.getElementById('message').innerHTML = 'PASSWORD MATCHING';
		  } else {
		    document.getElementById('message').style.color = 'red';
		    document.getElementById('message').innerHTML = 'PASSWORD NOT MATCHING';
		  }
		}
	
	</script>
	
	<meta charset="ISO-8859-1"name="viewport" content="width=device-width, initial-scale=1">
	<title>SpeedTaxi online vehicle rental</title>
	<%      
		String username = (String)request.getSession().getAttribute("UserName");
 		if(username ==null){
       out.println("<script>alert('Please login...!');</script>");
       out.println("<script>location= 'Login.jsp';</script>");
      
      }
 		
 		 else{
  	     	try{
  	     		Class.forName("com.mysql.cj.jdbc.Driver");
  	 			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/speedtaxi?useSSL=false","root","11111");	
  	             Statement st = con.createStatement();
  	             String sql = "SELECT * from users where UserName = ('"+username+"')";
  	             ResultSet rs = st.executeQuery(sql);
  	             while(rs.next()){
  	           
  %>
</head>

<body class = "body">
		
	
	
		<p id = "name" >SpeedTaxi </p>
		<p id = "name1"> QUICKER , EASIER , SMARTER </p> 
		

        <br></br> <br></br> <br></br>
        


 <div class="row">
        
    <div class="col-md-3"></div>

    <div class="col-md-5 formBackground2" >

    <form action="edit" method="post" >
        <br/>
        
        <p id = "ustr" >NAME</p> <input class="form-control" type="text" name="Name" value='<%=rs.getString("Name")%>' required="required"><br></br>
        <p id = "ustr" >PHONE NUMBER</p>  <input class="form-control"  type="tel" name="Phone" value='<%=rs.getString("Phone")%>'required="required"><br></br>
        <p id = "ustr" >EMAIL</p> <input class="form-control" type="email" name="Email"  value='<%=rs.getString("Email")%>' required="required"><br></br>
       	<p id = "ustr" >USER NAME</p> <input class="form-control"  type="text" name="UserName"  value='<%=rs.getString("UserName")%>' required="required"><br></br>
        <p id = "ustr" >PASSWORD</p><input class="form-control" id="password" type="password" name="Password"  value='<%=rs.getString("Password")%>' required="required" onkeyup='check();'><br></br>
        <p id = "ustr" >RETYPE PASSWORD</p><input class="form-control" id="confirm_password"  type="password"  name="retypepassword" value='<%=rs.getString("Password")%>' required="required" onkeyup='check();'>
        
        <span id='message' ></span><br></br>
  		

        
        <input class="btn btn-primary btn-block"  type="submit" name="PRESS" value="UPDATE">
      	<input class="btn btn-primary btn-block"  type="submit" name="PRESS" value="DELETE">        
                
                
             
                
                
                
                
          </form>
                              <%
}     
                
            }catch(Exception ex){
                out.println(ex);
            }
        }
        %>
        <br>
        <input class="btn btn-primary btn-block" type="submit" name="commit" value="Back To Customer Menu" onclick="window.location.href='CusPanel.jsp'">  
 	</div>
    </div>

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
			<button onclick="document.location = 'AboutUs.jsp'">About us</button>
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