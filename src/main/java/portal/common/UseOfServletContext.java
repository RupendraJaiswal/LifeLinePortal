package portal.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portal.beans.AdminDetails;

/**
 * Servlet implementation class UseOfServletContext
 */
@WebServlet("/UseOfServletContext")
public class UseOfServletContext extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UseOfServletContext() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		ServletContext sc=getServletContext();
		AdminDetails ad=(AdminDetails)sc.getAttribute("admininfo");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<h3> admin is "+ad.getName()+"</h3>");
		out.println("<h3> qualification  is "+ad.getQualification()+"</h3>");
		
		
	}

		
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
