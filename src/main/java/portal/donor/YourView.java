package portal.donor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import portal.dbtask.DbConnection;

/**
 * Servlet implementation class YourView
 */
@WebServlet("/YourView")
public class YourView extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public YourView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String views = request.getParameter("txtview");
		con = DbConnection.openConnection();
		java.util.Date d=new java.util.Date();
		long dt=d.getTime() ;
		java.sql.Date sd=new java.sql.Date(dt);
		HttpSession hs =request.getSession(false);
		String userid=(String)hs.getAttribute("sessionKey");
		String strinsert="insert into views(donor_id, remarks, date) values(?,?,?)";
        PreparedStatement ps=null;
		
		try 
		{
			ps=con.prepareStatement(strinsert);//it passes the query to RDBMS and RDBMS compiler->compile the query and stores the query into buffer and assign the address or reference to ps
			ps.setString(1, userid);
			ps.setString(2, views);
			ps.setDate(3, sd);
			
		
		System.out.println(ps);
			
			int row_status=ps.executeUpdate();//it will again  passes the query to dbms
			System.out.println("insert status "+row_status);
			if(row_status>0)
			{
				System.out.println("Your Views Posted Successfully");
				request.setAttribute("message", "Your Views Posted Successfully");
				RequestDispatcher rd = request.getRequestDispatcher("/donor/view.jsp");
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
	
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
