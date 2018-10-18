package com.inutech.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inutech.dao.EtudiantDao;
import com.inutech.dao.OptionDao;
import com.inutech.model.Etudiant;
import com.inutech.model.Option;

/**
 * Servlet implementation class EtuServlet
 */
@WebServlet("/EtuServlet")
public class EtuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EtuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EtudiantDao dao=new EtudiantDao();
        //EtudiantDao etudiant=new EtudiantDao();
		String action=request.getParameter("operation");
		
		String nom=request.getParameter("nom");
    	String prenom=request.getParameter("prenom");
    	String code=request.getParameter("code");
    	int option=Integer.parseInt(request.getParameter("option"));
    	int niveau=Integer.parseInt(request.getParameter("niveau"));
    	int vacation=Integer.parseInt(request.getParameter("vacation"));
    	int anaca=Integer.parseInt(request.getParameter("anneeacademique"));
    	int type=Integer.parseInt(request.getParameter("type"));
    	String debut=request.getParameter("debut");
    	String cours=request.getParameter("cours");
    	
    	  if(action.equalsIgnoreCase("ADD")){
	        	dao.addEdutiant(new Etudiant(nom, prenom, code, debut, cours), option, niveau, vacation, type, anaca);
	            response.sendRedirect("restraint/Etudiant.jsp");
	        }
	        if(action.equalsIgnoreCase("REMOVE")){
	        	int i=Integer.parseInt(request.getParameter("idm"));
	        	dao.removeEdutiant(i);
	            response.sendRedirect("restraint/Etudiant.jsp");
	        }
	        if(action.equalsIgnoreCase("UPDATE")){
	        	int i=Integer.parseInt(request.getParameter("idm"));
	        	dao.updateEdutiant(new Etudiant(i , nom, prenom, code, debut, cours), option, niveau, vacation, type , anaca);
	            response.sendRedirect("restraint/Etudiant.jsp");
	        }
	        
	}

}
