package portal.admin;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import portal.dbtask.DbConnection;

/**
 * Servlet implementation class Notice
 */
@WebServlet("/Notice")
public class Notice extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Notice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String notice = request.getParameter("txtmessage");
		String venue = request.getParameter("txtvenue");
		String dt=request.getParameter("txtdate");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date d=null;
		try {
		d=sdf.parse(dt);//it is used to parse a string into date and it generate parse exception
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long date_value=d.getTime();
		java.sql.Date sd=new java.sql.Date(date_value);
		
		
		
		con = DbConnection.openConnection();
		String strinsert="insert into notice (message, venue, date) values(?,?,?)";
        PreparedStatement ps=null;
		
		try 
		{
			ps=con.prepareStatement(strinsert);
			ps.setString(1, notice);
			ps.setString(2, venue);
			ps.setDate(3, sd);
			
		
		System.out.println(ps);
			
			int row_status=ps.executeUpdate();
			System.out.println("insert status "+row_status);
			if(row_status>0)
			{
				System.out.println("Your Notice Posted Successfully");
				request.setAttribute("message", "Your Notice Posted Successfully");
				RequestDispatcher rd = request.getRequestDispatcher("/admin/notice.jsp");
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
