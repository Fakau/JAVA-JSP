<%@page import="com.inutech.model.Etudiant"%>
<%@page import="com.inutech.dao.EtudiantDao"%>
<%@page import="com.inutech.model.Vacation"%>
<%@page import="com.inutech.dao.VacationDao"%>
<%@page import="com.inutech.model.TypeAcademique"%>
<%@page import="com.inutech.dao.TypeAnneeAcademiqueDao"%>
<%@page import="com.inutech.model.Niveau"%>
<%@page import="com.inutech.dao.NiveauDao"%>
<%@page import="com.inutech.model.AnneeAcademique"%>
<%@page import="com.inutech.dao.AnneeAcademiqueDao"%>
<%@page import="com.inutech.model.Option"%>
<%@page import="com.inutech.dao.OptionDao"%>
<%@page import="com.inutech.model.Utilisateur"%>
<%@page import="com.inutech.dao.UtilisateurDao"%>
<%
 String action=request.getParameter("operation");
 int var=Integer.parseInt(request.getParameter("idseach"));
   if(action.equalsIgnoreCase("FINDUT")){
		UtilisateurDao dao=new UtilisateurDao();
		Utilisateur u=dao.findUtilisateur(var);
		request.setAttribute("userseach", u);
		request.getRequestDispatcher("Utilisateur.jsp").forward(request, response);
	 }
   if(action.equalsIgnoreCase("FINDOP")){
		OptionDao dao=new OptionDao();
		Option u=dao.findOption(var);
		request.setAttribute("optseach", u);
		request.getRequestDispatcher("Option.jsp").forward(request, response);
	 }
   if(action.equalsIgnoreCase("FINDAN")){
		AnneeAcademiqueDao dao=new AnneeAcademiqueDao();
		AnneeAcademique u=dao.findAnneeAcademique(var);
		request.setAttribute("aneseach", u);
		request.getRequestDispatcher("Anneeacademique.jsp").forward(request, response);
	 }
   if(action.equalsIgnoreCase("FINDNI")){
		NiveauDao dao=new NiveauDao();
		Niveau u=dao.findNiveau(var);
		request.setAttribute("nivseach", u);
		request.getRequestDispatcher("niveau.jsp").forward(request, response);
	 }
   if(action.equalsIgnoreCase("FINDTY")){
		TypeAnneeAcademiqueDao dao=new TypeAnneeAcademiqueDao();
		TypeAcademique u=dao.findTypeAcademique(var);
		request.setAttribute("typseach", u);
		request.getRequestDispatcher("Typeacademique.jsp").forward(request, response);
	 }
   if(action.equalsIgnoreCase("FINDVA")){
		VacationDao dao=new VacationDao();
		Vacation u=dao.findVacation(var);
		request.setAttribute("vacseach", u);
		request.getRequestDispatcher("Vacation.jsp").forward(request, response);
	 }
   if(action.equalsIgnoreCase("FINDET")){
		EtudiantDao dao=new EtudiantDao();
		Etudiant u=dao.findEdutiant(var);
		request.setAttribute("etuseach", u);
		request.getRequestDispatcher("Etudiant.jsp").forward(request, response);
	 }

%>