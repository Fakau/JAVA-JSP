<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.inutech.model.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Inutech</title> 
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
	<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />
</head>
<style>
   .collapse ul li a, .navbar-brand{
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
     text-decoration: none;
    }
    .col a:HOVER{
    text-decoration: none;
    padding: 1px;
    border-radius:4px;
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
  .clear{
  clear:both;
  }
  .coll p{
  padding: 10px;
  }
  .coll table{
  padding-left: 5px;
  padding-right: 5px;
  margin-left: auto;
  margin-right: auto;
  }
  .online{
   text-align: center;
  }
  .online .vert{
    color:green;
  }
</style>
<body>
<%session.setAttribute("online", request.getAttribute("erreur")); %>
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
	       	 <a href="<c:url value="/inutech.jsp"/>" class="navbar-brand" >INUTECH</a>
	       	 
	       </div>

	        <div class="navbar-collapse collapse navbar-right">
		        <ul class="nav navbar-nav">
		           <li>
		           	  <a href="<c:url value="/index.jsp"/>">Acceil</a>
		           </li>
		           <li class="active">
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
		           <li>
		           	 <a href="<c:url value="/Login.jsp"/>">Connecter</a>
		           </li>
		           <li>
		           	 <a href="<c:url value="/Contact.jsp"/>">Contact</a>
		           </li>
	        	
	           </ul>
	       	
          </div>
      </div>
   	
   </div>
 <div class="mgn-top">
   <div class="container">
     <div class="row">
       <div class="col">
         <h1>Choisir votre entite</h1>
         <hr>
         <a href="<c:url value="/restraint/Option.jsp"/>"> <button class="btn btn-default"> Option</button></a>
		 <a href="<c:url value="/restraint/Anneeacademique.jsp"/>"><button class="btn btn-default">Annee academique</button></a>	
		 <a href="<c:url value="/restraint/Etudiant.jsp"/>"><button class="btn btn-default">Etudiant</button></a>
	     <a href="<c:url value="/restraint/Niveau.jsp"/>"><button class="btn btn-default">Niveau</button></a>
	     <a href="<c:url value="/restraint/Vacation.jsp"/>"><button class="btn btn-default">Vacation</button></a>
	     <a href="<c:url value="/restraint/Typeacademique.jsp"/>"><button class="btn btn-default">Type academique</button></a>
	     <a href="<c:url value="/restraint/Utilisateur.jsp"/>"><button class="btn btn-default">Utilisateur</button></a>
       </div>
       <div class="coll">
         <div class="con">
            <p>Bienvenue, maintenant vous etre eligible pour faire des operation sur les entite</p>
             <a href="<c:url value="/out.jsp"/>"> <button class="btn btn-warning">Deconnecter</button> </a>
         </div>
         <div class="clear"></div>
         <br>
           <%Utilisateur util=(Utilisateur)session.getAttribute("sessionUtilisateur"); 
             if(util!=null){
             %>
             <h2 class="online"><span class="glyphicon glyphicon-certificate vert"></span> <%=util.getNom()+" "+util.getPrenom()+" "+util.getLogin() %></h2>
            <%
             }
            %>
       </div>
       
     </div>
   </div>
 </div>
 
 
 <br>
<div class="navbar navbar-inverse navbar-fixed-bottom">
</div>
<script src="<c:url value="/js/jquery.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>		

</body>
</html>