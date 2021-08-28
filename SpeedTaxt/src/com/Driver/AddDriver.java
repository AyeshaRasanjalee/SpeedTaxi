//	author K.G. Rajapakse
//	IT19014814
//	Kandy-weekday
//	G1_G8_vehicle rental system

 package com.Driver;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddDriver
 */
@WebServlet("/AddDriver")
public class AddDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDriver() {
        super();
        
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String NIC = request.getParameter("nic");
		String Name = request.getParameter("name");
		String Phone = request.getParameter("phn");
		String Accept = request.getParameter("accept");
		
	
		
		boolean isTrue;
		
		isTrue = DriverDBUtil.insertdriver(NIC, Name, Phone, Accept);
		
		
			if(isTrue == true){
				
			
				//navigates to admin panel page if insertion is successful.
				RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
				dis.forward(request, response);
				
			}
			else{
				
				//navigates to addDricver page if insertion is not successful.
				RequestDispatcher dis2 = request.getRequestDispatcher("addDriver.jsp");
				dis2.forward(request, response);
				
			}
		
		

	}
}
