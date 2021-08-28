<%-- author W.M.S.T Wijekoon
	IT19210452
	kandy weekday
	G1_G8_vehicle rental system --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<%------------------------------------ Delete payment details -------------------------------------------------------------------%>


<%
String payId=request.getParameter("payId");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/speedtaxi", "root", "11111");
Statement st=conn.createStatement();

int j=st.executeUpdate("DELETE FROM payment WHERE `payId`="+payId);

response.sendRedirect("payment.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>