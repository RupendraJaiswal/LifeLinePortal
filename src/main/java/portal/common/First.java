package portal.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/First")           //it is read by the webcontainer    //@is used for annotation
public class First extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       

    public First() {
        super();
        System.out.println("Constructor is invoked");
       
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		 PrintWriter pw=response.getWriter();
	        response.setContentType("text/html");
	        pw.println("Hello Browser I am Servlet....");
	        String name="Rupendra";
	        pw.println("<h1> Hello "+name+"</h1>");
	        
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	}

}
