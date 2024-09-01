package portal.admin;

import java.sql.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import portal.dbtask.DbConnection;

/**
 * Servlet implementation class login
 */
@WebServlet("/Admin_Login")
public class Admin_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin_Login() {
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
		String adminid = request.getParameter("txtadminid").trim();// trim is used to remove leading and triming space
		String userpass = request.getParameter("txtuserpass");
		System.out.println("Id is " + adminid + " and password is " + userpass);

		con = DbConnection.openConnection();
		String strsql = "select * from admin where admin_id=? and password=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {

			ps = con.prepareStatement(strsql);
			ps.setString(1, adminid);
			ps.setString(2, userpass);
			rs = ps.executeQuery();
			if (rs.next()) {
				HttpSession hs = request.getSession();// create the session
				hs.setAttribute("sessionKey2", adminid);// setting the value in session
				hs.setAttribute("userRole", "admin");
				System.out.println("Session ID is " + hs.getId());
				response.sendRedirect("/LifeLinePortal/admin/admin_home.jsp");
				System.out.println(ps);
			}

			else {
//			response.sendRedirect("/LifeLinePortal/jsp/login.jsp");
				request.setAttribute("errorMessage", "Invalid Credentials");// set the value in request scope
				RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp"); // it returns the reference of
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
