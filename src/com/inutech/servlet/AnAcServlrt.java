package com.inutech.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inutech.dao.AnneeAcademiqueDao;
import com.inutech.dao.EtudiantDao;
import com.inutech.model.AnneeAcademique;
import com.inutech.model.Etudiant;

/**
 * Servlet implementation class AnAcServlrt
 */
@WebServlet("/AnAcServlrt")
public class AnAcServlrt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnAcServlrt() {
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
        AnneeAcademiqueDao dao=new AnneeAcademiqueDao();
        //EtudiantDao etudiant=new EtudiantDao();
		String action=request.getParameter("operation");
		
	        if(action.equalsIgnoreCase("ADD")){
	        	String desc=request.getParameter("descadd");
	        	String code=request.getParameter("codeadd");
	            dao.addAnneeAcademique(new AnneeAcademique(desc,code));
	            response.sendRedirect("restraint/Anneeacademique.jsp");
	        }
	        if(action.equalsIgnoreCase("REMOVE")){
	        	int i=Integer.parseInt(request.getParameter("idm"));
	        	dao.removeAnneeAcademique(i);
	            response.sendRedirect("restraint/Anneeacademique.jsp");
	        }
	        if(action.equalsIgnoreCase("UPDATE")){
	        	int i=Integer.parseInt(request.getParameter("idm"));
	        	String desc=request.getParameter("descm");
	        	String code=request.getParameter("codem");
	        	dao.updateAnneeAcademique(new AnneeAcademique(i,desc,code));
	            response.sendRedirect("restraint/Anneeacademique.jsp");
	        }
	        if(action.equalsIgnoreCase("FIND")){
	        	int i=Integer.parseInt(request.getParameter("idseach"));
	        	AnneeAcademique y=dao.findAnneeAcademique(i);
	        	request.setAttribute("seach",y);
	            response.sendRedirect("restraint/Anneeacademique.jsp");
	        }
	}

}
