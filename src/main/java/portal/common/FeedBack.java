package portal.common;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portal.dbtask.DbConnection;

/**
 * Servlet implementation class FeedBack
 */
@WebServlet("/FeedBack")
public class FeedBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedBack() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		response.setContentType("text/html");
		
		String userid=request.getParameter("txtname");
		String email=request.getParameter("txtemail");
		String feedback=request.getParameter("txtfeedback");
		String rating=request.getParameter("cmbrating");
		
		
//	System.out.println("User id is "+userid);
//	System.out.println("Email is "+email);
//	System.out.println("Feedback  is "+feedback);
//	System.out.println("Rating is "+rating);
		
          con=DbConnection.openConnection ();
		
		String strinsert="insert into feedback(name, email, feedback, rating) values(?,?,?,?)";
		
	
		PreparedStatement ps=null;
		
		try 
		{
			ps=con.prepareStatement(strinsert);//it passes the query to RDBMS and RDBMS compiler->compile the query and stores the query into buffer and assign the address or reference to ps
			ps.setString(1, userid);
		
			ps.setString(2, email);
			ps.setString(3, feedback);
			ps.setString(4, rating);
		
		
	     	System.out.println(ps);
			
			int row_status=ps.executeUpdate();//it will again  passes the query to dbms
			System.out.println("insert status "+row_status);
			if(row_status>0)
			{
				System.out.println("Donor Details has been stored succesfully");
				request.setAttribute("feedbackMessage", "Thanks for your valuable feedback");//set the value in request scope
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/feedback.jsp"); //it returns the reference of RequestDispatcher
				rd.forward(request, response)	;
				
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


