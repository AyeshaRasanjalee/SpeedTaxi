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
 * Servlet implementation class UpdateVehicleServlet
 */
@WebServlet("/UpdateVehicleServlet")
public class UpdateVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateVehicleServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("vid");
		String vNo = request.getParameter("vNo");
		String type = request.getParameter("vtype");
		String price = request.getParameter("vprice");
		String max= request.getParameter("vmax");
		
		boolean isTrue;
		
		isTrue = VehicleDBUtil.updateveicle(id, vNo, type, price, max);
		
		
		if(isTrue==true){
			
			List<Vehicle> vehiDetails = VehicleDBUtil.getVehicleDetails(id);
			request.setAttribute("vehiDetails", vehiDetails);
			
			//if upation is success navigates to admin panel
			RequestDispatcher dis = request.getRequestDispatcher("vehicleDetails.jsp");
			dis.forward(request, response);
			
		}
		else{
			List<Vehicle> vehiDetails = VehicleDBUtil.getVehicleDetails(id);
			request.setAttribute("vehiDetails", vehiDetails);
			
			//if updation fails navigates to vehicleDetails page
			RequestDispatcher dis = request.getRequestDispatcher("vehicleDetails.jsp");
			dis.forward(request, response);
			
		}
		
	}

}
