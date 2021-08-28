/*
	author KA Rasanjalee
	IT19150444
	kandy weekday
	G1_G8_vehicle rental system
	
*/
package home.location;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertBooking")
public class InsertBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("UserName");
		String Date	= request.getParameter("date");
		String PickLoca = request.getParameter("plocation");
		String DropLoca = request.getParameter("dlocation");
		String vehicle = request.getParameter("Vcategory");
		String email = request.getParameter("email");
		String Time =request.getParameter("time");
		
		boolean isTrue;
		isTrue = locationUtil.insertBooking(name,Date,PickLoca, DropLoca, Time, vehicle,email);
		
		if(isTrue == true) {
				
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
					dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
