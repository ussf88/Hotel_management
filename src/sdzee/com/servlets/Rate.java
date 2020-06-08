package sdzee.com.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sdzee.com.bdd.*;
import sdzee.com.beans.*;
/**
 * Servlet implementation class Rate
 */
@WebServlet("/Rate")
public class Rate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    int id_reservation =Integer.parseInt(request.getParameter("id")); 
	    Database d=new Database();
	    ReservationHotel r=d.ShowoneReservation(id_reservation);
	    ArrayList<Reclamation> reclamations=d.getreclamation(id_reservation);
	    boolean existe=false;
	    if(reclamations!=null) {
	    	existe=true;
	    	request.setAttribute("reclamations",reclamations);
	    }
	    System.out.println(existe);
	    request.setAttribute("existe",existe);
	    request.setAttribute("r",r);
	    
		this.getServletContext().getRequestDispatcher("/WEB-INF/reclamation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("type");
		Database d=new Database();
		String s_id=request.getParameter("id");
		int id_reservation =Integer.parseInt(s_id);
		if(type.equals("rate")) {
		float rating =Float.parseFloat(request.getParameter("rating"));
		d.addRating(id_reservation,rating);
		response.setHeader("Cache-Control","no-cache , no-store ,must-revalidate");	
		response.sendRedirect( request.getContextPath() +  "/reservationuser?type=true");
		}
		if(type.equals("reclamation")) {
			String type_reclamation=request.getParameter("type_reclamation");
			String text=request.getParameter("text"); 
			d.addreclamation(type_reclamation,text,id_reservation);
			response.setHeader("Cache-Control","no-cache , no-store ,must-revalidate");	
			response.sendRedirect( request.getContextPath() +  "/Rate?id="+s_id);
		}
		if(type.equals("change_reclamation")) {
			String type_reclamation=request.getParameter("type_reclamation");
			String text=request.getParameter("text");
			int id_reclamation =Integer.parseInt(request.getParameter("id_reclamation"));
			Reclamation r=new Reclamation(id_reclamation,0, type_reclamation,text);
			d.changeReclamation(r);
			response.setHeader("Cache-Control","no-cache , no-store ,must-revalidate");	
			response.sendRedirect( request.getContextPath() +  "/Rate?id="+s_id);
		}
		if(type.equals("cancel_reclamation")) {
			int id_reclamation =Integer.parseInt(request.getParameter("id_reclamation"));
			d.cancelReclamation(id_reclamation);
			response.setHeader("Cache-Control","no-cache , no-store ,must-revalidate");	
			response.sendRedirect( request.getContextPath() +  "/Rate?id="+s_id);
		}
	}

}
