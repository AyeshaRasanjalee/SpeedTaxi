//
//IT19182360	
//R.M.S.T. Rathnayake
//
package auth;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.location.DBconnect;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null; 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        
    	con=new DBconnect().getConnection();
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String PRESS=request.getParameter("PRESS");
		PrintWriter out=response.getWriter();
		
		String Name =request.getParameter("Name");
        String Phone =request.getParameter("Phone");
       	String Email =request.getParameter("Email");
       	String UserName=request.getParameter("UserName");
        String Password=request.getParameter("Password");
        
        System.out.println(Name);
        System.out.println(Phone);
        System.out.println(UserName);
        System.out.println(Email);
	
if(PRESS.equals("REGISTER")) 
    {
    	String sql = "insert into users(Name,Phone,Email,UserName,Password) values(?,?,?,?,?)";
    	
    	try {
    	
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, Name);
		ps.setString(2, Phone);
		ps.setString(3, Email);
		ps.setString(4, UserName);
		ps.setString(5, Password);
	
	
		ps.executeUpdate();
		
		out.println("<script type=\"text/javascript\">");
		out.println("alert('SUCCCESSFULLY REGISTERED..!!');");
		out.println("location='Login.jsp';");
		out.println("</script>");
		
    	}
    	catch(Exception e) {
    		
    	}
    }

}
}
