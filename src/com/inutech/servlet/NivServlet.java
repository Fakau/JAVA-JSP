package com.inutech.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inutech.dao.NiveauDao;
import com.inutech.dao.VacationDao;
import com.inutech.model.Niveau;
import com.inutech.model.Vacation;

/**
 * Servlet implementation class NivServlet
 */
@WebServlet("/NivServlet")
public class NivServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NivServlet() {
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
		NiveauDao dao=new NiveauDao();
        //EtudiantDao etudiant=new EtudiantDao();
		String action=request.getParameter("operation");
		
	        if(action.equalsIgnoreCase("ADD")){
	        	String desc=request.getParameter("desc");
	        	String code=request.getParameter("code");
	        	dao.addNiveau(new Niveau(desc,code));
	            response.sendRedirect("restraint/Niveau.jsp");
	        }
	        if(action.equalsIgnoreCase("REMOVE")){
	        	int i=Integer.parseInt(request.getParameter("idm"));
	        	dao.removeNiveau(i);
	            response.sendRedirect("restraint/Niveau.jsp");
	        }
	        if(action.equalsIgnoreCase("UPDATE")){
	        	int i=Integer.parseInt(request.getParameter("idm"));
	        	String desc=request.getParameter("descm");
	        	String code=request.getParameter("codem");
	        	dao.updateNiveau(new Niveau(i,desc,code));
	            response.sendRedirect("restraint/Niveau.jsp");
	        }
	        if(action.equalsIgnoreCase("FIND")){
	        	int i=Integer.parseInt(request.getParameter("idseach"));
	        	Niveau y=dao.findNiveau(i);
	        	request.setAttribute("seach",y);
	            response.sendRedirect("restraint/Niveau.jsp");
	        }
	}

}
