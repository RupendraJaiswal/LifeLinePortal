package portal.common;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portal.beans.AdminDetails;

/**
 * Servlet implementation class ContextDemo
 */

@WebServlet (name="ContextDemo",urlPatterns = "/ContextDemo",loadOnStartup=1)
public class ContextDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContextDemo() {
        super();
     
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub

   	 AdminDetails admin=new AdminDetails();
   	 admin.setName("Rupendra Jaiswal");
   	 admin.setEmail("jaiswalrupendra8055@gmail.com");
   	 admin.setPhone("8601519080");
   	 admin.setQualification("B.tech");
   	 admin.setWorkdone("various social work to raise the society");
   	 
   	 
   	 ServletContext sc=getServletContext();//it return the reference of ServletContext
   	 sc.setAttribute("admininfo",admin);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	/* AdminDetails admin=new AdminDetails();
	 admin.setName("Rupendra Jaiswal");
	 admin.setEmail("jaiswalrupendra8055@gmail.com");
	 admin.setPhone("8601519080");
	 admin.setQualification("B.tech");
	 admin.setWorkdone("various social work to raise the society");
	 
	 
	 ServletContext sc=getServletContext();//it return the reference of ServletContext
	 sc.setAttribute("admininfo",admin);
	// response.sendRedirect("/LifeLinePortal/UseOfServletContext");
	 response.sendRedirect("/LifeLinePortal/jsp/contextdemo.jsp");
	}*/}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
