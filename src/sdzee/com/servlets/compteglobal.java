package sdzee.com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sdzee.com.bdd.Database;
import sdzee.com.beans.Admin_global;
import sdzee.com.beans.Admin_global;

/**
 * Servlet implementation class compteglobal
 */
@WebServlet("/compteglobal")
public class compteglobal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public compteglobal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

    	if ( session.getAttribute("session_global") == null ) {
    			
	         	response.sendRedirect( request.getContextPath() +"/Loginusers");
	        } else {
    	Database d=new Database();
    	//HashMap<String,List<String>> VilleHotel= d.ShowHotelVille();
    	//request.setAttribute("VilleHotel", VilleHotel);
		Admin_global r =(Admin_global)session.getAttribute("session_global");
		response.setHeader("Cache-Control","no-cache , no-store ,must-revalidate");
    	this.getServletContext().getRequestDispatcher( "/WEB-INF/compte_global.jsp" ).forward( request, response );
		  }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
    	if ( session.getAttribute("session_global") == null ) {
    			
	         	response.sendRedirect( request.getContextPath() +"/Loginusers");
	        } else {
	      
    	Database d=new Database();
		Admin_global r =(Admin_global)session.getAttribute("session_global");

		String telephone=request.getParameter("tele");
		String email=request.getParameter("email");
		String addresse=request.getParameter("addresse");
		String mot_passe=request.getParameter("pass");
		String mot_passe2=request.getParameter("pass2");
		if(mot_passe.equals(mot_passe2)) {
		System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
		d.changeAdminglobal(r.getCin(),telephone,email,addresse,mot_passe);
		r=d.getAdmin_global(r.getCin());
		session.setAttribute( "session_global",r);
		
    	}
		else {
			System.out.println("llllllllllllllllll");
			String s="probl�me de confirmation de mot de passe !!";
			request.setAttribute("erreur",s);
		}
		this.getServletContext().getRequestDispatcher( "/WEB-INF/compte_global.jsp" ).forward( request, response );
	        }
	}

}
