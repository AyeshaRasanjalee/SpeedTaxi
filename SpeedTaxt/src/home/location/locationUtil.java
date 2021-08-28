/*
	author KA Rasanjalee
	IT19150444
	kandy weekday
	G1_G8_vehicle rental system
	
*/
package home.location;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import home.location.DBconnect;
import home.location.Cpackage;

public class locationUtil{
	
	private static boolean isSuccess;
	private static Connection con= null;
	private static Statement stat= null;
	private static ResultSet rs= null;
	
	
		public static List<Cpackage> check(String name ,String email) {
		
			//to store the all the values and return the single array
			ArrayList<Cpackage> Cpack =new ArrayList<>();
			
			
			//validate
			try {
				
			con = DBconnect.getConnection();//call to DBconnection class and get that method
			stat= con.createStatement();
			
				//select the price of package
				String sql="select * from booking where cusName ='"+name+"' and Email ='"+email+"'"; //and phoneNumber ='"+phone+"'";
			rs = stat.executeQuery(sql);
			
				if(rs.next()) {
					int id = rs.getInt(1);
					String Uname = rs.getString(2);
					String date =rs.getString(3);
					String pickUpLocation = rs.getString(4);
					String dropLocation = rs.getString(5);
					String ptime =rs.getString(6);
					String type =rs.getString(7);
					String cmail =rs.getString(8);
		
					
				Cpackage cP = new Cpackage(id,Uname,date,pickUpLocation,dropLocation,type,ptime,cmail );
				//pass the values in cP to Cpack array
				Cpack.add(cP);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			//return the Cpack array object
			return Cpack;
		}
		
		//return true for false
		public static boolean insertBooking(String name,String Date,String PickLoca,String  DropLoca, String Time,String  vehicle,String email){
			
			boolean isSuccess = false;
			
		
			try {
			con = DBconnect.getConnection();
			stat =con.createStatement();
			
;				String sql ="insert into speedtaxi.booking values(0,'"+name+"','"+Date+"','"+PickLoca+"','"+DropLoca+"','"+Time+"','"+vehicle+"','"+email+"')";
				int rs = stat.executeUpdate(sql);//executeUpdate method return integer value (1,0)
				
				//check the query is success or not
				if(rs>0) {
					isSuccess=true;
				}else {
					isSuccess = false;
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
					return isSuccess;
			
		}
		
		//update
		public static boolean UpdateBooking(String id,String name, String ploc,String dloc,String email, String date ,String time ,String vehicle) {
			
			try {
				
				con = DBconnect.getConnection();
				stat =con.createStatement();
				
				String sql="update booking set cusName ='"+name+"',bookingDate='"+date+"',pickupLocation='"+ploc+"',dropupLocation='"+dloc+"'"
						+ ",pickupTime='"+time+"',vehicleType='"+vehicle+"',Email='"+email+"' where bookingId='"+id+"'";
				
				int rs=stat.executeUpdate(sql);
				
				if(rs> 0){
					isSuccess=true;
									}
				else {
					isSuccess = false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
			
		}
		//retrive
		public static List<Cpackage> getcustomerDetails(String Id){
			
			//convert into int
			int convertedID = Integer.parseInt(Id);
			//making list to pass details 
			ArrayList<Cpackage> cus = new ArrayList<>();
			
			try {
				
				con =DBconnect.getConnection();
				stat=con.createStatement();
				String sql="select * from booking where bookingId ='"+convertedID+"'";
				rs = stat.executeQuery(sql);
				
				//if next method return true store value
				while (rs.next()){
					int id =rs.getInt(1);
					String name = rs.getString(2);
					String date =rs.getString(3);
					String pLoc =rs.getString(4);
					String dLoc =rs.getString(5);
					String time = rs.getString(6);
					String type =rs.getString(7);
					String email =rs.getString(8);
				
					Cpackage c = new Cpackage(id,name, date,pLoc,dLoc,type,time,email);
					cus.add(c);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return cus;
		}
		public static boolean deleteBooking(String id) {
			
			int convertedID = Integer.parseInt(id);
			
			try {
				con =DBconnect.getConnection();
				stat=con.createStatement();
				
				String sql ="delete from booking where bookingId ='"+convertedID+"'";
				int r = stat.executeUpdate(sql);
				
				
				if(r > 0) {
					isSuccess = true;
					
				}
				else {
					isSuccess = false;
					
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
		
		}
}
