//
//IT19182360	
//R.M.S.T. Rathnayake
//
package auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import home.location.DBconnect;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null; 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String press=request.getParameter("press");
		
try {
	if(press.equals("LOGIN")) {
			String UserName = request.getParameter("username");
			String Password = request.getParameter("password");
			String dbuserName = null;
			String dbpassword = null;
	
			
			
			String sql ="select * from users where UserName=? and Password=?";
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, UserName);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			PrintWriter out = response.getWriter();
			
			while(rs.next()) {
				dbuserName = rs.getString("UserName");
				dbpassword = rs.getString("Password");
			}
			
			
			if(UserName.equals(dbuserName)&&Password.equals(dbpassword)) {
				
				if(UserName.equals("admin"))
				{
					RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
					rd.include(request, response);
				}
				else 
				{

					HttpSession session = request.getSession();
					session .setAttribute("UserName", UserName);
					
					System.out.println("You Have Successfully Logged in");
					
					request.setAttribute("login", dbuserName);
					
					RequestDispatcher rd = request.getRequestDispatcher("CusPanel.jsp");
					rd.include(request, response);
				}
			}
			
			else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('INVALID USERNAME OR PASSWORD..!!');");
				out.println("location='Login.jsp';");
				out.println("</script>");
				
			}
			
			
	}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}


