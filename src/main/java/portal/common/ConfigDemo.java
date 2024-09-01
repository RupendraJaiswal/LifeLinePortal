package portal.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConfigDemo
 */
@WebServlet(
		urlPatterns = { "/ConfigDemo" }, 
		initParams = { 
				@WebInitParam(name = "color", value = "cyan"), 
				@WebInitParam(name = "picname", value = "b2.jpg")
		})
public class ConfigDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfigDemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		ServletConfig sc=getServletConfig();
		String cl=sc.getInitParameter("color");
		String pic=sc.getInitParameter("picname");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<body bgcolor="+cl+">");
		out.println("<img src='/LifeLinePortal/images/"+pic+"'>");
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
