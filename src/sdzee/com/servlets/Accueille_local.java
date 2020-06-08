package sdzee.com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sdzee.com.bdd.Database;
import sdzee.com.beans.Admin_local;
import sdzee.com.beans.Chambre;
import sdzee.com.beans.Hoteldata;

/**
 * Servlet implementation class Accueille_local
 */
@WebServlet("/Accueille_local")
public class Accueille_local extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accueille_local() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

    	if ( session.getAttribute("session_local") == null ) {
    			
	         	response.sendRedirect( request.getContextPath() +"/Loginusers");
	        } else {
    	Database d=new Database();
    	//HashMap<String,List<String>> VilleHotel= d.ShowHotelVille();
    	//request.setAttribute("VilleHotel", VilleHotel);
		Admin_local r =(Admin_local)session.getAttribute("session_local");
    	ArrayList<Chambre> receptionniste=d.getAllchambres(d.getId_hotelDb(r.getVille_hotel(), r.getNom_hotel()));
    	request.setAttribute("receptionniste",receptionniste);
    	d.annuler_reservation(d.getId_hotelDb(r.getVille_hotel(), r.getNom_hotel()));
    	Hoteldata hoteldata=d.getHotelData(d.getId_hotelDb(r.getVille_hotel(), r.getNom_hotel()));
    	request.setAttribute("hoteldata",hoteldata);
    	HashMap<Integer, Integer> map=d.statotalmois(d.getId_hotelDb(r.getVille_hotel(), r.getNom_hotel()));
    	request.setAttribute("statotalmois",map);
    	HashMap<Integer, Integer> map2=d.statotalmoislaste(d.getId_hotelDb(r.getVille_hotel(), r.getNom_hotel()));
    	request.setAttribute("statotalmoislaste",map2);
    	for(int i=0;i<12;i++) {
    		System.out.println(map2.get(i+1));
    	}
    	HashMap<String, Integer> map3=d.typereserver(d.getId_hotelDb(r.getVille_hotel(), r.getNom_hotel()));
    	request.setAttribute("alllaste",map3);
    	response.setHeader("Cache-Control","no-cache , no-store ,must-revalidate");
    	this.getServletContext().getRequestDispatcher( "/WEB-INF/acceuilAdmin_local.jsp" ).forward( request, response );
	        }	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
