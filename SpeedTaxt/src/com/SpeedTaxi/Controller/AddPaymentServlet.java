/* -- author W.M.S.T Wijekoon

	IT19210452
	kandy weekday
	G1_G8_vehicle rental system -- */

package com.SpeedTaxi.Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.SpeedTaxi.Model.AddPaymentDetailsDB;


/**
 * Servlet implementation class AddPaymentServlet
 */

@WebServlet("/AddPaymentServlet")
public class AddPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cardname =request.getParameter("cardname");
		String cardNo =request.getParameter("cardNo");
		String expdate =request.getParameter("expdate");
		String secCode =request.getParameter("secCode");

		boolean isTrue;
		isTrue= AddPaymentDetailsDB.insertPayment(cardname, cardNo, expdate, secCode);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success-pay.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("success-pay.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
