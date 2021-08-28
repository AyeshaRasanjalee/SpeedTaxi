
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
 * Servlet implementation class SelectDriver
 */
@WebServlet("/SelectDriver")
public class SelectDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectDriver() {
        super();
       
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Nic = request.getParameter("nic");
		
		try{
		List<Driver> driverDetails = DriverDBUtil.validate(Nic);
		request.setAttribute("drDetails", driverDetails);
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		//display driver details in driverDetails page
		RequestDispatcher dis = request.getRequestDispatcher("driverDetails.jsp");
		dis.forward(request, response);
	}

}
