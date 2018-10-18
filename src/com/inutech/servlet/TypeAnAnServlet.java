package com.inutech.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inutech.dao.NiveauDao;
import com.inutech.dao.TypeAnneeAcademiqueDao;
import com.inutech.model.Niveau;
import com.inutech.model.TypeAcademique;

/**
 * Servlet implementation class TypeAnAnServlet
 */
@WebServlet("/TypeAnAnServlet")
public class TypeAnAnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeAnAnServlet() {
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
		TypeAnneeAcademiqueDao  dao=new TypeAnneeAcademiqueDao();
        //EtudiantDao etudiant=new EtudiantDao();
		String action=request.getParameter("operation");
		
	        if(action.equalsIgnoreCase("ADD")){
	        	String desc=request.getParameter("desc");
	        	String code=request.getParameter("code");
	        	dao.addTypeAcademique(new TypeAcademique(desc,code));
	        	response.sendRedirect("restraint/Typeacademique.jsp");
	        }
	        if(action.equalsIgnoreCase("REMOVE")){
	        	int i=Integer.parseInt(request.getParameter("idm"));
	        	dao.removeTypeAcademique(i);
	            response.sendRedirect("restraint/Typeacademique.jsp");
	        }
	        if(action.equalsIgnoreCase("UPDATE")){
	        	int i=Integer.parseInt(request.getParameter("idm"));
	        	String desc=request.getParameter("descm");
	        	String code=request.getParameter("codem");
	        	dao.updateTypeAcademique(new TypeAcademique(i,desc,code));
	            response.sendRedirect("restraint/Typeacademique.jsp");
	        }
	        if(action.equalsIgnoreCase("FIND")){
	        	int i=Integer.parseInt(request.getParameter("idseach"));
	        	TypeAcademique y=dao.findTypeAcademique(i);
	        	request.setAttribute("seach",y);
	            response.sendRedirect("restraint/Typeacademique.jsp");
	        }
	}

}
