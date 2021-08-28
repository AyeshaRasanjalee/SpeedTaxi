//
//IT19182360	
//R.M.S.T. Rathnayake
//
package auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.location.DBconnect;

/**
 * Servlet implementation class Edit
 */
@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit() {
        //super();
        // TODO Auto-generated constructor stub
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
		// TODO Auto-generated method stub
		//doGet(request, response);
String PRESS=request.getParameter("PRESS");
		
        PrintWriter out=response.getWriter();
		
        String Name =request.getParameter("Name");
        String Phone =request.getParameter("Phone");
       	String Email =request.getParameter("Email");
       	String UserName=request.getParameter("UserName");
        String Password=request.getParameter("Password");
        
        
        if(PRESS.equals("UPDATE")) 
        {
        	try {
        		String sql = "update users set Name=?,Phone=?,Email=?,Password=? where UserName ='"+UserName+"' ";
                
            	
        		PreparedStatement ps = con.prepareStatement(sql);
        
        		ps.setString(1, Name);
        		ps.setString(2, Phone);
        		ps.setString(3, Email);
        		ps.setString(4, Password);
        	
        		ps.executeUpdate();
        		
        		out.println("<script type=\"text/javascript\">");
        		out.println("alert('PROFILE SUCCCESSFULLY UPDATED..!!');");
        		out.println("location='CusPanel.jsp';");
        		out.println("</script>");
        		
        	}
     
		catch(Exception e) {
    		out.println(e);
    	}
        	
        	
        }
        else if (PRESS.equals("DELETE")) {
        	
        	String sql = "delete from users where UserName='"+UserName+"'";
        	try {
        	
        		PreparedStatement ps = con.prepareStatement(sql);
        		ps.execute();
        		
        		out.println("<script type=\"text/javascript\">");
        		out.println("alert('SUCCCESSFULLY DELETED..!!');");
        		out.println("location='Login.jsp';");
        		out.println("</script>");
        	}
        	catch(Exception e) {
        		
        	}
        	
        	
        	
        }
	}

}
