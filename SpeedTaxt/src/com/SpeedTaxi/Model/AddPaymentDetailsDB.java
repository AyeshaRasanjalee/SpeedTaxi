/* -- author W.M.S.T Wijekoon
	IT19210452
	kandy weekday
	G1_G8_vehicle rental system -- */


package com.SpeedTaxi.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.SpeedTaxi.Bean.AddPaymentDetailsBean;
import home.location.DBconnect;

public class AddPaymentDetailsDB {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static Statement stmt1 = null;
	private static Statement stmt2 = null;
	private static Statement stmt3 = null;
	private static ResultSet rs = null;
	private static ResultSet resultSet = null;
	private static ResultSet re1 = null;
	private static ResultSet re2 = null;
	
    public static boolean insertPayment(String cardname, String cardNo, String expdate, String secCode) {
    	
    	boolean isSuccess = false;
    	
    	
    	
    	try {
    		
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	    
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		stmt1 = con.createStatement();
    		stmt2 = con.createStatement();
    		stmt3 = con.createStatement();
    		
    		
    		String sql2="select * from booking where bookingId=(select max(bookingId) from booking)";
    		resultSet = stmt1.executeQuery(sql2);
    		
    		while(resultSet.next()) {
    		
    		String sql3 = "select * from package_ where pkLocation = '"+resultSet.getString("pickupLocation")+"' AND drLocation = '"+resultSet.getString("dropupLocation")+"'";
    		
    		re1 = stmt2.executeQuery(sql3);
  
    		while(re1.next()) {
    		
    		
    		String sql4 = "select * from vehicle_ where vehicleType = '"+resultSet.getString("vehicleType")+"'";
    		re2 = stmt3.executeQuery(sql4);
    		
    		while(re2.next()) {
    		
    		String amount1 = re1.getString("packagePrice");
    		String amount2 = re2.getString("vehiclePrice");
    		
    		
    		
    		Double d1 = Double.valueOf(amount1);
    		Double d2 = Double.valueOf(amount2);
    		
    		Double tot = d1 + d2;
    		
    		
    		String sql = "insert into payment values (0,'"+cardNo+"','"+tot+"','"+cardname+"','"+expdate+"','"+secCode+"')";
    		int rs = stmt.executeUpdate(sql);

    		
    		if(rs > 0) {
    			
    			
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		}
    		}
    		}
    		
    		resultSet.close();
    		re1.close();
    		re2.close();
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	
    	return isSuccess;
    	
    	
    }

	
	
	
}
