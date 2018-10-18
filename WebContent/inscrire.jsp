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
   .erreur .text-center h3{
      color:red;
   }
   .form-bg{
    padding:15px;
    background-color:#F5F5F5;
	border:1px solid #CCC;
   }
   .form-bg h1{
   text-align: center;
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
		           <li class="active">
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
		           <li>
		           	 <a href="Contact.jsp">Contact</a>
		           </li>
	        	
	           </ul>
	       	
          </div>
      </div>
   	
   </div>
   <div class="container">
	
	
	<!-- CORP -->
  <div class="mgn-top">
   <div class="container">
     <div class="row">
     
     <!-- form ajouter -->
       <div class="col">
         <h1>Inscrire</h1>
         <hr>
				<form action="<%=request.getContextPath()%>/class1" method="POST">
					 <div class="form-group">
                       <label for="nom">Nom</label>
                       <input type="text" class="form-control" id="nom_u" placeholder="Enter nom" name="nom" required>
                     </div>
					 <div class="form-group">
					    <label for="prenom">Prenom</label>
					    <input type="text" class="form-control" id="prenom_u" placeholder="Enter prenom" name="prenom" required>
					  </div>
					  <div class="form-group">
					    <label for="login">Login</label>
					    <input type="text" class="form-control" id="login_u" placeholder="Enter login" name="login" required>
					  </div>
					  <div class="form-group">
					    <label for="Password">Password</label>
					    <input type="password" class="form-control" id="password1_u" placeholder="Password" name="password" required>
					  </div>
					  <div class="form-group">
					    <label for="Password">Confirmer</label>
					    <input type="password" class="form-control" id="password2_u" placeholder="Confirmer" name="confirmer" required>
					  </div>
					  <button type="submit" class="btn btn-primary">Enregistrer</button>
					  <button type="reset" class="btn btn-warning">Annuler</button>
					<input type="hidden" name="operation" value="inscrire" />
				</form>
       </div>
        <div class="coll">
         <div class="con">
           <%if(request.getAttribute("Ereur")==null){
		
	         }else{%>
	    	<div class="erreur">
		    <div class="text-center">
		   <h3><%= request.getAttribute("Ereur")%> <span class="glyphicon glyphicon-remove"></span></h3>
		  </div>
		</div>
	<%} %>
         </div>
        </div>
      </div>
   </div>
 </div>
 <!-- CORT -->
	
</div>
<div class="navbar navbar-inverse navbar-fixed-bottom">
</div> 
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>		

</body>
</html>