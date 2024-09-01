package portal.common;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portal.dbtask.DbConnection;

/**
 * Servlet implementation class ContactUs
 */
@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection con;

	public ContactUs() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("txtname");
		String email = request.getParameter("txtemail");
		String phone = request.getParameter("txtphone");
		String question = request.getParameter("txtquestion");

		con = DbConnection.openConnection();
		System.out.println(con);

		String insert = "insert into contact(name,email,phone,question,date)values(?,?,?,?,?)";
		java.util.Date d = new java.util.Date();// it will return current date
		long dt = d.getTime();// it will give long value of today's date
		java.sql.Date sd = new java.sql.Date(dt);// util date gets converted into sql date by creating Date Class object
													// of SQL Package
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(insert);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, phone);
			ps.setString(4, question);
			ps.setDate(5, sd);

			int status = ps.executeUpdate();
			if (status > 0) {
				System.out.println("Conatct Saved Successfully...");
				request.setAttribute("message", "Thanks for your interest.....");
				RequestDispatcher rd = request.getRequestDispatcher("/jsp/contactus.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
	}

}
