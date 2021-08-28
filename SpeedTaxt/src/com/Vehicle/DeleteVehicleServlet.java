
//	author K.G. Rajapakse
//	IT19014814
//	Kandy-weekday
//	G1_G8_vehicle rental system

package com.Vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Vehicle.Vehicle;
import com.Vehicle.VehicleDBUtil;

/**
 * Servlet implementation class DeleteVehicleServlet
 */
@WebServlet("/DeleteVehicleServlet")
public class DeleteVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteVehicleServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//store vehicle Id send through delete button
		String vehicleId = request.getParameter("vid");
		
		boolean isTrue;
		
		isTrue = VehicleDBUtil.deletevehicle(vehicleId);
		
		if(isTrue == true){
			
			//navigates to admin panel if delete operation is successful.
			RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
			dis.forward(request, response);
					
		}
		else{
			
			
			List <Vehicle> vehiDetails = VehicleDBUtil.getVehicleDetails(vehicleId);
			request.setAttribute("vehiDetails",vehiDetails );
			
			//navigates to driverDetails page f delete operation is not successful.
			RequestDispatcher dis = request.getRequestDispatcher("vehicleDetails.jsp");
			dis.forward(request, response);
			
		}
		
	}

}
