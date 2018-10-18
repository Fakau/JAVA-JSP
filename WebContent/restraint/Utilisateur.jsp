<%@page import="com.inutech.dao.UtilisateurDao"%>
<%@page import="com.inutech.model.Utilisateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Inutech</title>
	<link href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
   .collapse ul li a, .navbar-brand{
     text-decoration: none;
   }
   .mgn-top{
   margin-top: 80px;
   }
   .coll{
    width: 70%;
    border: 1px solid;
    border-radius: 5px;
    margin: ;
    padding: 0px;
    float:right;
   }
   .col h1{
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
</style>
<body>
<%
	
	
	List<Utilisateur> users ;
    Utilisateur selected = null;
    UtilisateurDao met = new UtilisateurDao();
	
    users= met.allUtilisateur();
	if(request.getParameter("id")!=null){
		for(Utilisateur annn : users){
			if(annn.getId()==Integer.parseInt(request.getParameter("id"))){
				selected = annn;
			}
		}
	}
	
%>
<!-- fin du bar de navigation -->  
   <div class="navbar navbar-inverse navbar-fixed-top no-margin" role="navigation">
      <div class="container">
       
	       <div class="navbar-hearder">
	       	 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		       	 <span class="icon-bar"></span>	
		       	 <span class="icon-bar"></span>
		       	 <span class="icon-bar"></span>
	       	 </button>
	       	 <img src="../img/logo copy.gif" alt="logo" height="50px" class="pull-left mgn-right"> 
	       	 <a href="../inutech.jsp" class="navbar-brand" >INUTECH</a>
	       	 
	       </div>

	        <div class="navbar-collapse collapse navbar-right">
		        <ul class="nav navbar-nav">
		           <li>
		           	  <a href="../index.jsp">Acceil</a>
		           </li>
		           <li >
		           	  <a href="Connection1.jsp">Entite</a>
		           </li>
		           <li>
		           	  <a href="../inscrire.jsp">Inscrire</a>
		           </li>
		           <li class="active">
		           	 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Visualiser<span class="caret"></span></a>
		              <ul class="dropdown-menu">
			               <li><a href="Option.jsp">Option</a></li>
			               <li><a href="Anneeacademique.jsp">Annee academique</a></li>	
			               <li><a href="Etudiant.jsp">Etudiant</a></li>
			               <li><a href="Niveau.jsp">Niveau</a></li>
			               <li><a href="Vacation.jsp">Vacation</a></li>
			               <li><a href="Typeacademique.jsp">Type academique</a></li>
			               <li><a href="Utilisateur.jsp">Utilisateur</a></li>
		              </ul>
		           </li>
		           <li>
		           	 <a href="../Login.jsp">Connecter</a>
		           </li>
		           <li>
		           	 <a href="../Contact.jsp">Contact</a>
		           </li>
	        	
	           </ul>
	       	
          </div>
      </div>
  </div>
<!--  corps   -->
   <div class="mgn-top">
   <div class="container">
     <div class="row">
           <div class="coll">
         <div class="con">
            <p>
             Liste des utilisateurs
            </p>
         </div>
         <div class="clear"></div>
         <br>
          
        <!--  form recherche -->
        <div class="fr">
         <form class="form-inline" action="Recherche.jsp" method="POST">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter id" name="idseach" required>
			</div>
			<button type="submit" class="btn btn-primary">Rechercher</button>
		    <input type="hidden" name="operation" value="FINDUT" />
		 </form>
         </div>
         <!-- fin form recherche -->
         
         <!--  TABLE -->
         <div class="fr">
	          <div class="table-responsive">
	            <table class="table table-bordered table-hover">
	              <tr>
	                 <td>Id</td>
	                 <td>Nom</td>
	                 <td>Prenom</td>
	                 <td>Login</td>
	                 <td>Password</td>
	                 <td>Action</td>
	               </tr>
	                    <%if(request.getAttribute("userseach")==null){
	                      int count = 0;
			              UtilisateurDao metier=new UtilisateurDao();
			              List<Utilisateur> ans=metier.allUtilisateur();
			              for(Utilisateur annee : ans){
	                     %>
	                  <tr class="<%=count%2==0?"":"success" %>">
	                   <td><%=annee.getId() %></td>
	                   <td><%=annee.getNom()%></td>
	                   <td><%=annee.getPrenom()%></td>
	                   <td><%=annee.getLogin()%></td>
	                   <td><%=annee.getPassword()%></td>
	                   <td><a href="?id=<%=annee.getId()%>&operation=UPDATE"
													class="btn btn-info btn-xs" data-toggle="modal">
													<i class="fa fa-pencil"></i> Modifier </a> 
						   <a href="?id=<%=annee.getId()%>&operation=REMOVE" 
													class="btn btn-danger btn-xs " data-toggle="modal">
													<i class="fa fa-trash-o"></i>Supprimer </a>
						</td>
	                   </tr>
	                  <%
	                  count++;
		             }
	                  %>
	                  <%}else{
	                	  Utilisateur yess=(Utilisateur)request.getAttribute("userseach");
	                	  %>
		                  <tr>
		                   <td><%=yess.getId() %></td>
		                   <td><%=yess.getNom()%></td>
		                   <td><%=yess.getPrenom()%></td>
		                   <td><%=yess.getLogin()%></td>
		                   <td><%=yess.getPassword()%></td>
		                   <td><a href="Utilisateur.jsp?id=<%=yess.getId()%>&operation=UPDATE"
														class="btn btn-info btn-xs" data-toggle="modal">
														<i class="fa fa-pencil"></i> Modifier </a> 
							   <a href="Utilisateur.jsp?id=<%=yess.getId()%>&operation=REMOVE" 
														class="btn btn-danger btn-xs " data-toggle="modal">
														<i class="fa fa-trash-o"></i>Supprimer </a>
							</td>
		                   </tr>
		                  <%
		                  request.setAttribute("userseach",null);
	                  } %>	
	            </table>
	          </div>
        </div>
         <!--  TABLE -->
         
       </div>
    </div>
  </div>
</div>
<br>
			

<!-- taget -->
<div id="updateItem" class="modal fade">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;
			   </button>
               <h4 class="modal-title" id="header">
                <span id="titre">Modifier une Annee academique</span>
               </h4>
            </div>
            <div class="modal-body">
				<form class="form-horizontal form-label-left"
						action="<%=request.getContextPath()%>/class1"
						method="post" name="ajouterGroupeform">
						
<input type="hidden" id="operation" name="operation" value="<%=request.getParameter("operation")!=null?request.getParameter("operation"):"ADD"%>" />  
<input type="hidden" id="id" name="id" value="<%=request.getParameter("id")!=null?request.getParameter("id"):"" %>" />
					
                         <div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								ID <span class="required">*</span>
							</label>
							<input name="idm" id="idm" type="text" value="<%=selected!=null?selected.getId():"" %>" required="required" class="form-control" />	
					    </div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								Nom <span class="required">*</span>
							</label>
						    <input type="text" name="nom" id="descm" value="<%=selected!=null?selected.getNom():"" %>" required="required" class="form-control">
						</div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								Prenom <span class="required">*</span>
							</label>
							<input type="text" name="prenom" id="codem" value="<%=selected!=null?selected.getPrenom():"" %>" required="required" class="form-control">
						</div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								Login <span class="required">*</span>
							</label>
							<input type="text" name="login" id="codem" value="<%=selected!=null?selected.getLogin():"" %>" required="required" class="form-control">
						</div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								Password <span class="required">*</span>
							</label>
							<input type="text" name="password" id="codem" value="<%=selected!=null?selected.getPassword():"" %>" required="required" class="form-control">
						</div>
						<div class="clearfix"></div>
						<div class="ln_solid"></div>
                        <div class="form-group">
							<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
								<button type="submit" class="btn btn-primary" id="sauvegarder">
									<i class="fa fa-pencil"></i><span id="labelMod">Sauvegarder</span>
								</button>
							</div>
						</div>
                        <p class="text-warning">
							<small>
							    Si vous ne sauvegardez pas, vos changements seront rejetés.
							</small>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
<!-- taget -->
  
<!--  fin corps   -->
<div class="navbar navbar-inverse navbar-fixed-bottom">
</div>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>		
<script type="text/javascript">
		$(document).ready(function () {
			if($("#id").val()!==''){
				if($("#operation").val()==="UPDATE"){
					$("#labelMod").text("Modifier");
				}else{
					$("#labelMod").text("Supprimer");
					$("#titre").text("Supprimer une Annee academique");
				}
				$('<a href=\"#updateItem\" id=\"grid\" role=\"button\"  data-toggle="modal"><i class="fa fa-pencil"></i></a>').appendTo('body');
	  			document.getElementById('grid').click();
	  			$('#grid').remove();
        	}
			
		});

</script>
</body>
</html>