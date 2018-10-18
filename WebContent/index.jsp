<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
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
		           <li class="active">
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
		           <li>
		           	 <a href="Contact.jsp">Contact</a>
		           </li>
	        	
	           </ul>
	       	
          </div>
      </div>
</div>
<!-- slide -->
<div class="container">
			<section>

				<div class="carousel slide " id="gallery-carousel" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#gallery-carousel" data-slide-to="0" class="active"></li>
						<li data-target="#gallery-carousel" data-slide-to="1"></li>
						<li data-target="#gallery-carousel" data-slide-to="2"></li>
						<li data-target="#gallery-carousel" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item">
							<img src="img/slide1.png" alt="slider image">
							<div class="carousel-caption"> <h1>Une education de qualité.</h1></div>
						</div>
						<div class="item ">
							<img src="img/slide3.png" alt="slider image">
							<div class="carousel-caption"> <h1>Nous construisons l'avenir.</h1></div>
						</div>
						<div class="item">
							<img src="img/slide2.png" alt="slider image">
							<div class="carousel-caption"> <h2>.</h2></div>
						</div>
						<div class="item active">
							<img src="img/slide4.png" alt="slider image">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<a href="#gallery-carousel"class="left carousel-control" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					<a href="#gallery-carousel"class="right carousel-control" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			
		</section>
	</div>
<!-- fin slide -->
<!-- app -->
<!-- <div class="container">
  <div class="row">
     <h1>Consulter</h1>
     <div class="col">
        <a href=""></a>
     </div>
     <div class="col">
       
     </div>
     <div class="col">
       
     </div>
  </div>
</div>
 -->
<!-- fin app -->
<div class="container">
  <div class="row mgn-top">
	    <div class="col-sm-4">
	    	<div class="panel panel-default text-center">
	          <div class="panel-body">
	            <span class="glyphicon glyphicon-user"></span>
	            <h2>Devenir etudiant</h2>
	          	<p>
	            	<a href="" class="success">INUTECH Universite</a> c'est une socialité qui a 
	            	été fondée en 1998 par 5 jeunes haitiens <a href="" class="success">Ing Laurent Kafka</a> PDG 
	            	, concepteur et programmeur, <a href=""class="success">Vernelus Jeff Colby</a>
	            	President, <a href=""class="success">Valcin Kervins</a> Analiste,
	            	nous somme la pour apporter un grand support a la communaute haitienne. 
	            </p>
	            <a href="" class="btn btn-default lg-btn"><-- Plus de detail --></a>
	          </div>
	    	</div>
	    </div>
	     <div class="col-sm-4">
	    	<div class="panel panel-default text-center">
	          <div class="panel-body">
	            <span class="glyphicon glyphicon-check"></span>
	          	<h2>Rechercher une entite</h2>
	          	<p> 
	          	    La location des vehicules c'est notre specialite
	          		Lorem ipsum dolor sit amet, consectetur adipisicing 
	          		elit. Ratione, pariatur. Ducimus, eaque delectus sed.
	          		Molestiae dolorem dolor cumque numquam delectus aut?
	          		Et aliquam quisquam voluptatum delectus atque aut 
	          		velit repudiandae.
	          	</p>
	          	 <a href="" class="btn btn-default lg-btn"><-- Plus de detail --></a>
	          </div>
	    	</div>
	    </div>
	     <div class="col-sm-4">
	    	<div class="panel panel-default text-center">
	          <div class="panel-body">
	          	<span class="glyphicon glyphicon-comment"></span>
	          	<h2>Voir nos options?</h2>
	          	<p>
	          		A Vertiere dans le cap-haitien nous somme present et attendons
	          		vos commande, vos desires, a Port-au-Prince nous somme a Turgeau
	          		et a Delmas 56, nous somme a Port-de-paix pres du College Notre-Dame 
	          		de Lourdes, Rue Benito Sylvain, au numero 45
	          	</p>
	          	 <a href="" class="btn btn-default"><-- Plus de detail --></a>
	          </div>
	    	</div>
	    </div>
  </div>
</div>
<div class="navbar navbar-inverse ">
</div>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>		

</body>
</html>