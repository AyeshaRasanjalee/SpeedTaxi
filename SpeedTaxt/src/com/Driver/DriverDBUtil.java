
//	author K.G. Rajapakse
//	IT19014814
//	Kandy-weekday
//	G1_G8_vehicle rental system

package com.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import home.location.DBconnect;

public class DriverDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
//returns details of driver if user entered NIC is valid.
	public static List<Driver> validate (String Nic){
		
	ArrayList<Driver> dr = new ArrayList<>();
		try{
			 con = DBconnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "select * from driver where NIC='"+Nic+"'";
			 rs = stmt.executeQuery(sql);
			 
			 if(rs.next()){
				 
				int driverId = rs.getInt(1);
				String NIC = rs.getString(2);
				String driverName = rs.getString(3);
				String phn = rs.getString(4);
				String accept = rs.getString(5);
				
				Driver d = new Driver(driverId, NIC, driverName,phn,accept);
				dr.add(d); 
			
			 }
			
			
		}
		catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		return dr;
		
	}
	
	//implementation of insert function for driver.
	public static boolean insertdriver(String NIC, String Name, String Phone, String Accept){
		
		boolean isSuccess = false;
		
		
		
		try{

			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into driver values(0,'"+NIC+"','"+Name+"','"+Phone+"','"+Accept+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0){
				
				isSuccess = true;
				}
			else{
				
				isSuccess = false;
			}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			
			
			
		}
		
		
		return isSuccess;
		
	}
	
	//display details list of the driver
	 public static List<Driver> getDriverDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Driver> dr = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from driver where driverId = '"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int driverId = rs.getInt(1);
	    			String NIC = rs.getString(2);
	    			String driverName = rs.getString(3);
	    			String phnNumber = rs.getString(4);
	    			String acceptedBY = rs.getString(5);
	    			
	    			
	    		Driver d = new Driver(driverId,NIC,driverName,phnNumber,acceptedBY);
	    		dr.add(d);
	    			
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return dr;	
	    }
	
	 //implementation of update function for driver details
	 public static boolean updatedriver(String driverId,String NIC, String driverName, String phnNumber, String acceptedBy){
		 
		 try{
			 
			 con=DBconnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "update driver set NIC='"+NIC+"',driverName='"+driverName+"',phnNumber='"+phnNumber+"',acceptedBy_userId='"+acceptedBy+"'"
			 +"where driverId='"+driverId+"'";
			 int rs=stmt.executeUpdate(sql);
			 
			 if(rs>0){
				 
				 isSuccess = true;
				  
			 }
			 else{
				 
				 isSuccess=false;
			 }
			 
			 
		 }
		 catch(Exception e){
			 
			 e.printStackTrace();
			 
			 
		 }
		 
		 
		 return isSuccess;
		 
	 }
	 
	 //implementation of delete function for driver 
	 public static boolean deletedriver(String driverId){
		 
		 int convdriverId = Integer.parseInt(driverId);
		 
		 try{
			 con=DBconnect.getConnection();
			 stmt=con.createStatement();
			 String sql="delete from  driver where driverId='"+convdriverId+"'";
			 int rs=stmt.executeUpdate(sql);
			 
			 //delete query successful
			 if(rs>0){
				 
				  isSuccess = true;
			 }
			 //delete query fail
			 else{
				 
				 isSuccess = false;
			 }
			 
			 
			 
		 }
		 catch(Exception e){
			 e.printStackTrace();
			 
		 }
		 
		 return isSuccess;
		 
	 }
	

}
