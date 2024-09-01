package portal.donor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portal.dbtask.DbConnection;

/**
 * Servlet implementation class DonorRegistration
 */
@WebServlet("/DonorRegistration")
public class DonorRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;

	public DonorRegistration() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String d_id =request.getParameter("id");
		System.out.println("donor id send via ajax"+d_id);
		con=DbConnection.openConnection();
		String strsql ="select donor_id from donor where donor_id=?";
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			ps=con.prepareStatement(strsql);
			ps.setString(1, d_id);
			rs=ps.executeQuery();
			if(rs.next())
			{
				response.setContentType("text/html");
				PrintWriter out =response.getWriter();
				out.print("donor_id already exists");
				/* out.print("<h2>donor_id already exists</h2>"); */
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
		finally {
			if (rs!=null||ps!=null)
			{
				try {
					rs.close();
					ps.close();
					DbConnection.closeConnection();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("txtuserid");
		String pass = request.getParameter("txtpass");
		String name = request.getParameter("txtname");
		String age = request.getParameter("txtage");
		int Age=Integer.parseInt(age);
		String email = request.getParameter("txtemail");
		String phone = request.getParameter("txtphone");
		String blood = request.getParameter("bloodgroup");
		String gender = request.getParameter("gender");
		String city = request.getParameter("cmbcity");
		String status = request.getParameter("chkagree");
	
	/*	
		System.out.println("User ID of user is " + userid);
		System.out.println("Password is " + pass);
		System.out.println("Name of the user is " + name);
		System.out.println("Age of user is " + age);
		System.out.println("Email of the user is " + email);
		System.out.println("Contact number is " + phone);
		System.out.println("Blood Group of user is " + blood);
		System.out.println("Gender of user is " + gender);
		System.out.println("City of user is " + city);
		*/
		con=DbConnection.openConnection ();//connection with lifeline_db has been established.....
		
		String strinsert="insert into donor(donor_id, password, name, email, phone, gender, age, bloodgroup, city, status, date) values(?,?,?,?,?,?,?,?,?,?,?)";
		
		java.util.Date d=new java.util.Date();//it will return date
		long dt=d.getTime() ;//it will  give long value of todays date
		java.sql.Date sd=new java.sql.Date(dt);// util date gets converted into sql date
		PreparedStatement ps=null;
		
		try 
		{
			ps=con.prepareStatement(strinsert);//it passes the query to RDBMS and RDBMS compiler->compile the query and stores the query into buffer and assign the address or reference to ps
			ps.setString(1, userid);
			ps.setString(2, pass);
			ps.setString(3, name);
			ps.setString(4, email);
			ps.setString(5, phone);
			ps.setString(6, gender);
			ps.setInt(7, Age);
			ps.setString(8, blood);
			ps.setString(9, city);
			ps.setString(10, status);
			ps.setDate(11, sd);
		
		System.out.println(ps);
			
			int row_status=ps.executeUpdate();//it will again  passes the query to dbms
			System.out.println("insert status "+row_status);
			if(row_status>0)
			{
				System.out.println("Donor Details has been stored succesfully");
				request.setAttribute("message", "Thanks for your registration...");
				RequestDispatcher rd = request.getRequestDispatcher("/jsp/registrationform.jsp");
				rd.forward(request, response);
			}
			
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
			
		}
		finally
		{
			if(ps!=null)
			{
				try 
				{
					ps.close();
					DbConnection.closeConnection();
				} 
				catch (SQLException e)
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		
	
	}

}
