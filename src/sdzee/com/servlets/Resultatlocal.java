package sdzee.com.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sdzee.com.bdd.Database;
import sdzee.com.beans.Admin_global;
import sdzee.com.beans.Admin_local;
import sdzee.com.beans.Chambre;
import sdzee.com.beans.Receptionniste;

/**
 * Servlet implementation class Resultatlocal
 */
@WebServlet("/Resultatlocal")
public class Resultatlocal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Resultatlocal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setHeader("Cache-Control","no-cache , no-store ,must-revalidate");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Database chambres =new Database();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date Dated=null;
		try {
			Dated=sdf.parse(request.getParameter("date_debut"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date datedebut=new java.sql.Date(Dated.getTime());
		
		java.util.Date Datef=null;
		try {
			Datef=sdf.parse(request.getParameter("date_fin"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date datefin=new java.sql.Date(Datef.getTime());
		System.out.println(datedebut);
		System.out.println(datefin);
		
		HttpSession session = request.getSession();
    	Admin_local r=(Admin_local)session.getAttribute("session_local");
		sdzee.com.beans.Reservation reservation =new sdzee.com.beans.Reservation();
	    reservation.setDate_debut(datedebut);
		reservation.setDate_fin(datefin);
		reservation.setCin_client(request.getParameter("cin_client"));
		reservation.setValidation("false");
		session.setAttribute( "reservation", reservation );
		List<Chambre> liste_chambres=chambres.recupererchambres(r.getVille_hotel(),r.getNom_hotel(),datedebut, datefin);
		List<Chambre> liste_types=chambres.nombrechambres(r.getVille_hotel(),r.getNom_hotel(),datedebut, datefin);
		System.out.println("liste des types des chambres :"+liste_types);
		System.out.println("liste des chambres :"+liste_chambres);
		HashMap<Integer, String[]> id_types = new HashMap<Integer, String[]>();
		String [] l=new String[3];
		for(int i=0;i<liste_types.size();i++) {
			l[0]=liste_types.get(i).getType_chambre();
			l[1]=Integer.toString(liste_types.get(i).getNombre_place());
			l[2]=Double.toString(liste_types.get(i).getPrix_jour());
			id_types.put(i,l);
			
			
		}
		session.setAttribute("id_types",id_types);
		request.setAttribute("chambres",liste_types);
		session.setAttribute("liste_chambres",liste_chambres);
		session.setAttribute("liste_types",liste_types);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/resultatlocal.jsp").forward(request, response);
	}
	

}
