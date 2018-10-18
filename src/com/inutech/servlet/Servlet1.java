package com.inutech.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inutech.dao.UtilisateurDao;
import com.inutech.model.Utilisateur;

/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String ATT_USER ="utilisateur";
	public static final String ATT_FORM = "form";
	public static final String ATT_INTERVALLE_CONNEXIONS ="intervalleConnexions";
	public static final String ATT_SESSION_USER ="sessionUtilisateur";
	public static final String COOKIE_DERNIERE_CONNEXION ="derniereConnexion";
	public static final String FORMAT_DATE ="dd/MM/yyyy HH:mm:ss";
	public static final String VUE = "/Login.jsp"; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String derniereConnexion = getCookieValue( request,COOKIE_DERNIERE_CONNEXION );
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UtilisateurDao user=new UtilisateurDao();
		Utilisateur us=new Utilisateur();
	    String action=request.getParameter("operation");
	    HttpSession s=request.getSession();
	    
		
	    if(action.equalsIgnoreCase("login")){
	    	String login=request.getParameter("loginname");
	    	String pass=request.getParameter("password");
	    	 List<Utilisateur> tt=user.allUtilisateur();
	    	 for(Utilisateur u:tt){
	    		 if(login.equals(u.getLogin()) && pass.equals(u.getPassword())){
	    			 us.setId(u.getId());
	    			 us.setLogin(u.getLogin());
	    			 us.setNom(u.getNom());
	    			 us.setPrenom(u.getPrenom());
	    			 us.setPassword(u.getPassword());
	    		 } 
	    	 }
	    	 if(login.equals(us.getLogin()) && pass.equals(us.getPassword())){
	    		s.setAttribute("sessionUtilisateur", us);
	    		request.setAttribute("sessionUtilisateur", us);
	    		 getServletContext().getRequestDispatcher("/restraint/Connection1.jsp").forward(request, response);
                 //response.sendRedirect("restraint/Connection1.jsp");
	    		//request.getRequestDispatcher("restraint/Connection1.jsp").forward(request, response);
	    	 }else{
	    		 request.setAttribute("erreur","Mot de pass ou login incorrect");
	    		 request.getRequestDispatcher("Login.jsp").forward(request, response);
	    	 }
	    	
	    }
	    if(action.equalsIgnoreCase("inscrire")){
	    	String pass=request.getParameter("password");
			String conf=request.getParameter("confirmer");
			  if(pass.equals(conf)){
				 String nom=request.getParameter("nom");
				 String prenom=request.getParameter("prenom");
				 String login=request.getParameter("login");
				 user.addUtilisateur(new Utilisateur(nom,prenom,login,pass));
				 
				 request.setAttribute("erreur",nom+" "+prenom);
	             request.getRequestDispatcher("Login.jsp").forward(request, response);
			  }else{
				  request.setAttribute("Ereur","Mot de pass de confirmation incorrect");
	              request.getRequestDispatcher("inscrire.jsp").forward(request, response);
			  }
	    }
	    if(action.equalsIgnoreCase("UPDATE")){
	    	int i=Integer.parseInt(request.getParameter("idm"));
	    	String nom=request.getParameter("nom");
	    	String prenom= request.getParameter("prenom");
	    	String login= request.getParameter("login");
	    	String password= request.getParameter("password");
	    	user.updateUtilisateur(new Utilisateur(i,nom,prenom,login,password));
	    	response.sendRedirect("restraint/Utilisateur.jsp");
	    }
        if(action.equalsIgnoreCase("REMOVE")){
	    	int i=Integer.parseInt(request.getParameter("idm"));
	    	user.removeUtilisateur(i);
	    	response.sendRedirect("restraint/Utilisateur.jsp");
	    } 
        if(action.equalsIgnoreCase("FIND")){
        	int i=Integer.parseInt(request.getParameter("idseach"));
        	Utilisateur uuu=user.findUtilisateur(i);
        	request.setAttribute("userFind", uuu);
        	response.sendRedirect("restraint/Utilisateur.jsp");
        	
        } 
		
		
		
    }

}
