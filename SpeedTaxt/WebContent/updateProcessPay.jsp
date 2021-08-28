<%-- author W.M.S.T Wijekoon
	IT19210452
	kandy weekday
	G1_G8_vehicle rental system --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/speedtaxi";%>
<%!String user = "root";%>
<%!String psw = "11111";%>

<%
String payId = request.getParameter("payId");
String cardname = request.getParameter("cardname");
String cardNo=request.getParameter("cardNo");
String expdate=request.getParameter("expdate");
String secCode=request.getParameter("secCode");

if(payId != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(payId);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update payment set `cardname`=?,`cardNo`=?,`expdate`=?,`secCode`=? where `payId`="+payId;
ps = con.prepareStatement(sql);
ps.setString(1,cardname);
ps.setString(2, cardNo);
ps.setString(3, expdate);
ps.setString(4, secCode);

int i = ps.executeUpdate();
if(i > 0)
{
	
	response.sendRedirect("success-pay.jsp");

}
else
{
	out.print("There is a problem in updating Record.");
} 
}
	catch(SQLException sql)
{
	request.setAttribute("error", sql);
	out.println(sql);
}
}
%>