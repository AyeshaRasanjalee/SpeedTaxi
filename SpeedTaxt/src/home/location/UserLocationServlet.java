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

/**
 * Servlet implementation class UserLocationServlet
 */
@WebServlet("/UserLocationServlet")
public class UserLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// catch the forms pickup location
		String cusNme = request.getParameter("UserName");
		String email = request.getParameter("email");

		try {
			// make list object
			List<Cpackage> cusPackDetails = locationUtil.check(cusNme, email); // (cusNme,Pnum)set the details
			request.setAttribute("cusPackDetails", cusPackDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// redirect to the values to another page servlet-> to view
		RequestDispatcher dis = request.getRequestDispatcher("UserPackage.jsp");
		dis.forward(request, response);
	}

}
