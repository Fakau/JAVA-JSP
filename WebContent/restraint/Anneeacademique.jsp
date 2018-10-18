<%@page import="java.util.List"%>
<%@page import="com.inutech.model.AnneeAcademique"%>
<%@page import="com.inutech.dao.AnneeAcademiqueDao"%>
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
</style>
<body>
<%
	
	
	List<AnneeAcademique> anneeaca ;
    AnneeAcademique selected = null;
    AnneeAcademiqueDao met = new AnneeAcademiqueDao();
	
    anneeaca= met.allAnneeAcademique();
	if(request.getParameter("id")!=null){
		for(AnneeAcademique annn : anneeaca){
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
   <!-- hhkl -->
   <div class="mgn-top">
   <div class="container">
     <div class="row">
     
     <!-- form ajouter -->
       <div class="col">
         <h1>Ajouter annee une academique</h1>
         <hr>
				<form action="<%=request.getContextPath()%>/AnAca" method="POST">
					  <div class="form-group">
					    <label for="description">Description</label>
					    <input type="text" class="form-control" id="description" placeholder="Enter description" name="descadd" required>
					  </div>
					  <div class="form-group">
					    <label for="code description">Code</label>
					    <input type="text" class="form-control" id="code" placeholder="Code" name="codeadd" required>
					  </div>
					  <button type="submit" class="btn btn-primary">Enregistrer</button>
					  <button type="reset" class="btn btn-warning">Annuler</button>
				  <input type="hidden" name="operation" value="ADD" />
				</form>
       </div>
       <!-- form ajouter -->
       
       <div class="coll">
         <div class="con">
            <p>
             Liste des annees academique
            </p>
         </div>
         <div class="clear"></div>
         <br>
         
        <!--  form recherche -->
        <div class="fr">
         <form class="form-inline" action="Recherche.jsp" method="POST">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter id" name="idseach">
			</div>
			<button type="submit" class="btn btn-primary">Rechercher</button>
		    <input type="hidden" name="operation" value="FINDAN" />
		 </form>
         </div>
         <!-- fin form recherche -->
         
         <!--  TABLE -->
         <div class="fr">
	          <div class="table-responsive">
	            <table class="table table-bordered table-hover">
	              <tr>
	                 <td>Id</td>
	                 <td>Description</td>
	                 <td>Code</td>
	                 <td>Action</td>
	               </tr>
	                    <%
	                      if(request.getAttribute("aneseach")==null){
	                      int count = 0;
						  AnneeAcademiqueDao metier=new AnneeAcademiqueDao();
			              List<AnneeAcademique> ans=metier.allAnneeAcademique();
			              for(AnneeAcademique annee : ans){
	                     %>
	                  <tr class="<%=count%2==0?"":"success" %>">
	                   <td><%=annee.getId() %></td>
	                   <td><%=annee.getDescription()%></td>
	                   <td><%=annee.getCodeAnneeAcademique() %></td>
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
	                	  AnneeAcademique yess=(AnneeAcademique)request.getAttribute("aneseach");
	                	  %>
		                  <tr>
		                   <td><%=yess.getId() %></td>
		                   <td><%=yess.getDescription()%></td>
		                   <td><%=yess.getCodeAnneeAcademique()%></td>
		                   <td><a href="Anneeacademique.jsp?id=<%=yess.getId()%>&operation=UPDATE"
														class="btn btn-info btn-xs" data-toggle="modal">
														<i class="fa fa-pencil"></i> Modifier </a> 
							   <a href="Anneeacademique.jsp?id=<%=yess.getId()%>&operation=REMOVE" 
														class="btn btn-danger btn-xs " data-toggle="modal">
														<i class="fa fa-trash-o"></i>Supprimer </a>
							</td>
		                   </tr>
		                  <%
		                  request.setAttribute("aneseach",null);
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
						action="<%=request.getContextPath()%>/AnAca"
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
								Description <span class="required">*</span>
							</label>
						    <input type="text" name="descm" id="descm" value="<%=selected!=null?selected.getDescription():"" %>" required="required" class="form-control">
						</div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								Code <span class="required">*</span>
							</label>
							<input type="text" name="codem" id="codem" value="<%=selected!=null?selected.getCodeAnneeAcademique():"" %>" required="required" class="form-control">
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

<!-- pied -->
<div class="navbar navbar-inverse navbar-fixed-bottom">
ghi
</div>
<!-- pied -->
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