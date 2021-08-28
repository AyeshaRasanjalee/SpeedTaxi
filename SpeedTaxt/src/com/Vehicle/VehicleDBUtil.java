
//	author K.G. Rajapakse
//	IT19014814
//	Kandy-weekday
//	G1_G8_vehicle rental system

package com.Vehicle;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import home.location.DBconnect;
import com.Vehicle.Vehicle;

public class VehicleDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//insert new vehicle details to the vehicle table
	public static boolean insertvehicle(String vehicleNo, String vehicleType, String vehiclePrice, String maxPassengers){
		
		boolean isSuccess = false;
		
		float convertedPrice = Float.parseFloat(vehiclePrice);
		int conevertedMax = Integer.parseInt(maxPassengers); 
		
		try{

			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into vehicle values(0,'"+vehicleNo+"','"+vehicleType+"','"+vehiclePrice+"','"+maxPassengers+"')";
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

	//select vehicle details 
	public static List<Vehicle> validate (String vNo){
		
		ArrayList<Vehicle> vehi = new ArrayList<>();
		
		//validate
			try{
				 con = DBconnect.getConnection();
				 stmt = con.createStatement();
				 String sql = "select * from vehicle_ where vehicleNo='"+vNo+"'";
				 rs = stmt.executeQuery(sql);
				 
				 if(rs.next()){
					 
					int vehicleId = rs.getInt(1);
					String vehicleNo = rs.getString(2);
					String vehicleType = rs.getString(3);
					float vehiclePrice = rs.getFloat(4);
					int maxPassengers = rs.getInt(5);
				
					Vehicle v = new Vehicle(vehicleId,vehicleNo,vehicleType,vehiclePrice, maxPassengers);
					vehi.add(v);
				 
				 }
				 
				
				
			}
			catch(Exception e){
				e.printStackTrace();
				
			}
			
			return vehi;
			
		}
	//display details of the vehicle
	public static List<Vehicle> getVehicleDetails(String id){
		
		int convertedID = Integer.parseInt(id);
		
		ArrayList <Vehicle> vehi = new ArrayList<>();
		
		try{
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from vehicle_ where vehicleId = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				
					int vehicleId = rs.getInt(1);
					String vehicleNo  = rs.getString(2);
					String vehicleType  = rs.getString(3);
					float vehiclePrice = rs.getFloat(4);
					int maxPassengers = rs.getInt(5);
					
					Vehicle v = new Vehicle(vehicleId,vehicleNo, vehicleType, vehiclePrice, maxPassengers );
					vehi.add(v);
					}
			}
			catch(Exception e){
				e.printStackTrace();
			}
				
			
			return vehi;
			
		}
		
	
	//implementation of update function for vehicle
	public static boolean updateveicle(String id, String vNo, String type, String price, String max ){
		
		try{
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "update vehicle_ set vehicleNo='"+vNo+"', vehicleType='"+type+"', vehiclePrice='"+price+"',maxPassengers='"+max+"'"
					+"where vehicleId='"+id+"'";
			int rs=stmt.executeUpdate(sql);
			
			//updation success
			if(rs>0){
				
				isSuccess = true;
				
			}
			//updation fail
			else{
				
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return isSuccess;
	}
	
		
	//implementation of delete function for vehicle
	public static boolean deletevehicle(String vehicleId){
		
		int convId = Integer.parseInt(vehicleId);
		
		try{
			
			con=DBconnect.getConnection();
			stmt=con.createStatement();
			String sql="delete from vehicle_ where vehicleId='"+convId+"'";
			int rs = stmt.executeUpdate(sql);
			
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
