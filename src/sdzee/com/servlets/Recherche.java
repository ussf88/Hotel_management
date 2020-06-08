package sdzee.com.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sdzee.com.bdd.Database;

/**
 * Servlet implementation class Recherche
 */
@WebServlet("/Recherche")
public class Recherche extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Recherche() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Database d=new Database();
		HttpSession session = request.getSession();
		HashMap<String,List<String>> VilleHotel= d.ShowHotelVille();
		request.setAttribute("VilleHotel", VilleHotel);
		boolean reserved;
    	if(session.getAttribute("reserved")==null){
    		reserved=false;
    	}
    	else {
    		reserved= (boolean)session.getAttribute("reserved");
    	}
    	System.out.println(reserved+"  reserved");
    	if(reserved==true) {
    		System.out.println(" true reserved");
    		request.setAttribute("message","reservation bien enregistrer");
    		session.removeAttribute("reserved");
    		session.removeAttribute("message");
    	}
    	else {
    		request.setAttribute("message",null);
    	}
		this.getServletContext().getRequestDispatcher("/WEB-INF/recherche.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}

