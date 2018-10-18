<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Inutech</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
	<title>Connexion</title>
</head>
<style>
   .collapse ul li a, .navbar-brand, .coli a{
     text-decoration: none;
   }
   .mgn-top{
   margin-top: 80px;
   }
   .col a{
   display: block;
   }
   .col{
    border: 1px solid;
    border-radius: 5px;
    padding: 10px;
    width: 250px;
    float: left;
    }
   .col h1{
     font-size: 20px;
   }
    .col a{
     font-size: 25px;
     
    }
    .col a:HOVER{
    background-color: black;
    color: white;
    }
   .coll{
    width: 70%;
    border: 1px solid;
    border-radius: 5px;
    margin: ;
    padding: 0px;
    float:right;
   }
   .coll .con{
    background-color:#F5F5F5;
		border:1px solid #CCC;
    padding: 20px;
    margin: auto;
   }
   .coll .con p{
   text-align:center;
   font-size: 20px;
  }
  thead{
  background-color:#F5F5F5;
  }
  .clear{
  clear:both;
  }
  .coll p{
  padding: 10px;
  }
  .fr{
   padding: 20px;
   margin: auto;
  }
  .fr h2{
  color: red;
  text-align: center;
  font-size: 20px;
  }
  .coli{
  float: right;
  
  
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
	       	 <img src="<c:url value="/img/logo copy.gif"/>" alt="logo" height="50px" class="pull-left mgn-right"> 
	       	 <a href="inutech.jsp" class="navbar-brand" >INUTECH</a>
	       	 
	       </div>

	        <div class="navbar-collapse collapse navbar-right">
		        <ul class="nav navbar-nav">
		           <li>
		           	  <a href="<c:url value="/index.jsp"/>"> Acceil</a>
		           </li>
		           <li>
		           	  <a href="<c:url value="/restraint/Connection1.jsp"/>">Entite</a>
		           </li>
		           <li>
		           	  <a href="<c:url value="/inscrire.jsp"/>">Inscrire</a>
		           </li>
		           <li>
		           	 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Visualiser<span class="caret"></span></a>
		              <ul class="dropdown-menu">
			               <li><a href="<c:url value="/restraint/Option.jsp"/>">Option</a></li>
			               <li><a href="<c:url value="/restraint/Anneeacademique.jsp"/>">Annee academique</a></li>	
			               <li><a href="<c:url value="/restraint/Etudiant.jsp"/>">Etudiant</a></li>
			               <li><a href="<c:url value="/restraint/Niveau.jsp"/>">Niveau</a></li>
			               <li><a href="<c:url value="/restraint/Vacation.jsp"/>">Vacation</a></li>
			               <li><a href="<c:url value="/restraint/Typeacademique.jsp"/>">Type academique</a></li>
			               <li><a href="<c:url value="/restraint/Utilisateur.jsp"/>">Utilisateur</a></li>
		              </ul>
		           </li>
		           <li class="active">
		           	 <a href="<c:url value="/Login.jsp"/>">Connecter</a>
		           </li>
		           <li>
		           	 <a href="<c:url value="/Contact.jsp"/>">Contact</a>
		           </li>
	        	
	           </ul>
	       	
          </div>
      </div>
  </div>
  
  <div class="container">
	
<br>

 <!-- CORP -->
  <div class="mgn-top">
   <div class="container">
     <div class="row">
     
     <!-- form ajouter -->
       <div class="col">
         <h1>Login</h1>
         <hr>
				<form action="<%=request.getContextPath()%>/class1" method="POST">
					  <div class="form-group">
					    <label for="loginname">Login name</label>
					    <div class="input-group">
					      <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
					      <input type="text" class="form-control" id="Loginname" placeholder="Login name" name="loginname" required>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="Password">Password</label>
					     <div class="input-group">
					      <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
					      <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
					     </div>
					  </div>
					  <div class="form-group">
                       <div class="checkbox">
				        <label>
				          <input type="checkbox"> Garder une session
				        </label>
					   </div>
					  </div>
					  <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock"></span>Login</button>
					  <button type="reset" class="btn btn-warning"><span class="glyphicon glyphicon-arrow-left"></span>Annuler</button>
				  <input type="hidden" name="operation" value="login" />
				</form>
       </div>
        <div class="coll">
          <div class="clear"></div>
         <br>
         

         
         <div class="fr">
           <h2><%=request.getAttribute("erreur")!=null? request.getAttribute("erreur"):"" %></h2>
	    </div>
	    <div class="coli">Cliquez ici pour <a href="<c:url value="/inscrire.jsp"/>" class="btn btn-primary"><span class="glyphicon glyphicon-user"></span> Inscrire</a></div>
      </div>
     </div>
   </div>
 </div>
 <!-- CORT -->
   
<div class="navbar navbar-inverse navbar-fixed-bottom">
</div> 
<script src="<c:url value="/js/jquery.js"/>"></script>
<script src="js/jquery.js"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script src="js/bootstrap.min.js"></script>		

</body>
</html>