//	author K.G. Rajapakse
//	IT19014814
//	Kandy-weekday
//	G1_G8_vehicle rental system

package com.Driver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteDriverServlet
 */
@WebServlet("/DeleteDriverServlet")
public class DeleteDriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDriverServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//store driver Id send through delete button
		String driverId = request.getParameter("did");

		
		boolean isTrue;
		
		isTrue = DriverDBUtil.deletedriver(driverId);
		
		if(isTrue==true){
		
			
			//navigates to admin panel if delete operation is successful.
			RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
			dis.forward(request, response);
		}
		else{
			
		
			List <Driver> drDetails = DriverDBUtil.getDriverDetails(driverId);
			request.setAttribute("drDetails", drDetails);
			
			//navigates to driverDetails page f delete operation is not successful.
			RequestDispatcher dis = request.getRequestDispatcher("driverDetails.jsp");
			dis.forward(request, response);
			
			
			
		}
		
		
	}

}
