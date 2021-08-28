
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
 * Servlet implementation class UpdateDriver
 */
@WebServlet("/UpdateDriver")
public class UpdateDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDriver() {
        super();
       
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String driverId = request.getParameter("did");
		String NIC = request.getParameter("nic");
		String driverName = request.getParameter("name");
		String phnNumber = request.getParameter("phn");
		String acceptedBy = request.getParameter("accept");
		
		boolean isTrue;
		
		isTrue = DriverDBUtil.updatedriver(driverId, NIC, driverName, phnNumber, acceptedBy);
		
		if(isTrue == true)
		{
			List<Driver> drDetails = DriverDBUtil.getDriverDetails(driverId);
			request.setAttribute("drDetails", drDetails);
			
			//navigates to driverDetails page with updated details if updation successful.
			RequestDispatcher dis = request.getRequestDispatcher("driverDetails.jsp");
			dis.forward(request, response);
		}
		
		else{
			List<Driver> drDetails = DriverDBUtil.getDriverDetails(driverId);
			request.setAttribute("drDetails", drDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("driverDetails.jsp");
			dis.forward(request, response);
		}
	}

}
