
//	author K.G. Rajapakse
//	IT19014814
//	Kandy-weekday
//	G1_G8_vehicle rental system

package com.Vehicle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddVehicleServlet
 */
@WebServlet("/AddVehicleServlet")
public class AddVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVehicleServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vNo = request.getParameter("vno");
		String vehicleType = request.getParameter("vtype");
		String vehiclePrice = request.getParameter("vprice");
		String maxPassengers = request.getParameter("vmax");
		
		boolean isTrue;
		
		isTrue=VehicleDBUtil.insertvehicle(vNo, vehicleType, vehiclePrice, maxPassengers);
		
		if(isTrue == true){
			
			//navigates to admin panel page if insertion is successful
			RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
			dis.forward(request, response);	
		}
		else{
			
			//navigates to addVehicle page if insertion is not successful.
			RequestDispatcher dis2 = request.getRequestDispatcher("addVehicle.jsp");
			dis2.forward(request, response);
			
		}
		
		
	}

}
