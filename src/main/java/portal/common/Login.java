package portal.common;

import java.sql.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import portal.dbtask.DbConnection;

/**
 * Servlet implementation class login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("txtuserid").trim();// trim is used to remove leading and triming space
		String userpass = request.getParameter("txtuserpass");
		String check_cookie = request.getParameter("checkbox");
		System.out.println("Id is " + userid + " and password is " + userpass);

		con = DbConnection.openConnection();
		String strsql = "select * from donor where donor_id=? and password=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {

			ps = con.prepareStatement(strsql);// it passes the query to RDBMS and RDBMS compiler->compile the query and
												// stores the query into buffer and assign the address or reference to
												// ps
			ps.setString(1, userid);
			ps.setString(2, userpass);
			rs = ps.executeQuery();
			if (rs.next()) 
			{
				if(check_cookie.equals("yes"))	{
					String userinfo=userid+"@"+userpass;
					Cookie c=new Cookie("custom","userinfo");     //binding userid and password in cookie
					c.setMaxAge(2*60*60);        //in seconds converting into hours
					response.addCookie(c) ;     //sending cookie on client machine
					System.out.println(" donor cookie created");
				}
						
						
			   HttpSession hs = request.getSession();// create the session
				hs.setAttribute("sessionKey", userid);// setting the value in session
				hs.setAttribute("userRole", "donor");
				System.out.println("Session ID is " + hs.getId());
				response.sendRedirect("/LifeLinePortal/donor/donor_home.jsp");
				System.out.println(ps);
			}

			else {
//			response.sendRedirect("/LifeLinePortal/jsp/login.jsp");
				request.setAttribute("errorMessage", "Invalid Credentials");// set the value in request scope
				RequestDispatcher rd = request.getRequestDispatcher("/jsp/login.jsp"); // it returns the reference of
																						// RequestDispatcher
				rd.forward(request, response);
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (rs != null || ps != null)
			{
				try {
					rs.close();
					ps.close();
					DbConnection.closeConnection();
				} 
				catch (SQLException se)
				{
					// TODO Auto-generated catch block
					se.printStackTrace();
				}
			}
		}
	}

}
