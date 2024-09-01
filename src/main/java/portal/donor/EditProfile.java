package portal.donor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import portal.dbtask.DbConnection;

/**
 * Servlet implementation class EditProfile
 */
@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfile() {
        super();
        // TODO Auto-generated constructor stub
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		String email = request.getParameter("txtemail").trim();// trim is used to remove leading and triming space
		String city = request.getParameter("txtcity");
		String phone = request.getParameter("txtphone");
		System.out.println(email+city+phone);
		con = DbConnection.openConnection();
		HttpSession hs =request.getSession(false);
		String userid=(String)hs.getAttribute("sessionKey");
		
		String strsql = "update donor set email = ?, city = ?, phone = ? where donor_id=?";
		PreparedStatement ps = null;
	
		
		try {

			ps = con.prepareStatement(strsql);
			ps.setString(1, email);
			ps.setString(2, city);
			ps.setString(3, phone);
			ps.setString(4, userid);
			int rs= ps.executeUpdate();
			if(rs>0) {
				request.setAttribute("Message", " Profile Updated Successfully");
				RequestDispatcher rd = request.getRequestDispatcher("/donor/donor_viewprofile.jsp");
																					
				rd.forward(request, response);
			}
			
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (ps != null)
			{
				try {
			
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