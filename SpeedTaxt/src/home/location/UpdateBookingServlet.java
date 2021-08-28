/*

	author KA Rasanjalee
	IT19150444
	kandy weekday
	G1_G8_vehicle rental system
	
*/
package home.location;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String id = request.getParameter("id");
	 String name=request.getParameter("UserName");
	 String ploc =request.getParameter("plocation");
	 String dloc =request.getParameter("dlocation");
	 String email = request.getParameter("email");
	 String date =  request.getParameter("date"); 
	 String time = request.getParameter("time");
	 String vehi = request.getParameter("vehi");
	 
	 boolean isTrue;
	 
	 isTrue = locationUtil.UpdateBooking(id, name, ploc, dloc, email, date, time, vehi);
	 
	 //isTrue is getting the vale of true or false when the updating data
	 
	 
	 if(isTrue==true) {
		 List<Cpackage> cusPackDetails = locationUtil.getcustomerDetails(id);
		 request.setAttribute("cusPackDetails", cusPackDetails);
		 
		 RequestDispatcher dis = request.getRequestDispatcher("UserPackage.jsp");
		 dis.forward(request,response);
	 }
	 else {
		 
		 List<Cpackage> cusPackDetails = locationUtil.getcustomerDetails(id);
		 request.setAttribute("cusPackDetails", cusPackDetails);
		 
		 
		 RequestDispatcher dis = request.getRequestDispatcher("UserPackage.jsp");
		 dis.forward(request,response);
	 }
	}
}
