<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Inutech</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
   .collapse ul li a, .navbar-brand{
     text-decoration: none;
   }
</style>
<body>
<!-- fin du bar de navigation -->  
   <div class="navbar navbar-inverse navbar-fixed-top no-margin" role="navigation">
      <div class="container">
       
	       <div class="navbar-hearder">
	       	 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		       	 <span class="icon-bar"></span>	
		       	 <span class="icon-bar"></span>
		       	 <span class="icon-bar"></span>
	       	 </button>
	       	 <img src="img/logo copy.gif" alt="logo" height="50px" class="pull-left mgn-right"> 
	       	 <a href="inutech.jsp" class="navbar-brand" >INUTECH</a>
	       	 
	       </div>

	        <div class="navbar-collapse collapse navbar-right">
		        <ul class="nav navbar-nav">
		           <li>
		           	  <a href="index.jsp">Acceil</a>
		           </li>
		           <li >
		           	  <a href="restraint/Connection1.jsp">Entite</a>
		           </li>
		           <li>
		           	  <a href="inscrire.jsp">Inscrire</a>
		           </li>
		           <li>
		           	 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Visualiser<span class="caret"></span></a>
		              <ul class="dropdown-menu">
			               <li><a href="restraint/Option.jsp">Option</a></li>
			               <li><a href="restraint/Anneeacademique.jsp">Annee academique</a></li>	
			               <li><a href="restraint/Etudiant.jsp">Etudiant</a></li>
			               <li><a href="restraint/Niveau.jsp">Niveau</a></li>
			               <li><a href="restraint/Vacation.jsp">Vacation</a></li>
			               <li><a href="restraint/Typeacademique.jsp">Type academique</a></li>
			               <li><a href="restraint/Utilisateur.jsp">Utilisateur</a></li>
		              </ul>
		           </li>
		           <li>
		           	 <a href="Login.jsp">Connecter</a>
		           </li>
		           <li class="active">
		           	 <a href="Contact.jsp">Contact</a>
		           </li>
	        	
	           </ul>
	       	
          </div>
      </div>
   	
   </div>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>		

</body>
</html>