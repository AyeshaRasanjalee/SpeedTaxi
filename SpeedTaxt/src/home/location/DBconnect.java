/*
	author KA Rasanjalee
	IT19150444
	kandy weekday
	G1_G8_vehicle rental system
	
*/
package home.location;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {

	private static String url="jdbc:mysql://localhost:3306/SpeedTaxi?useSSL=false";
	private static String userName ="root";
	private static String password = " ";
	
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con=DriverManager.getConnection(url, userName, password);
					
		}
		catch(Exception e) {
			
			System.out.println("database connection is not success");
		}
		return con;
	}
}
