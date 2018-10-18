<%@page import="com.inutech.model.TypeAcademique"%>
<%@page import="com.inutech.model.AnneeAcademique"%>
<%@page import="com.inutech.dao.TypeAnneeAcademiqueDao"%>
<%@page import="com.inutech.dao.AnneeAcademiqueDao"%>
<%@page import="com.inutech.model.Vacation"%>
<%@page import="com.inutech.dao.VacationDao"%>
<%@page import="com.inutech.model.Niveau"%>
<%@page import="com.inutech.dao.NiveauDao"%>
<%@page import="com.inutech.model.Option"%>
<%@page import="com.inutech.dao.OptionDao"%>
<%@page import="com.inutech.dao.EtudiantDao"%>
<%@page import="com.inutech.model.Etudiant"%>
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
    width: 78%;
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
    OptionDao optiondao=new OptionDao();
    NiveauDao niveaudao=new NiveauDao();
    VacationDao vacationdao=new VacationDao();
    AnneeAcademiqueDao anneeacademiquedao=new AnneeAcademiqueDao();
    TypeAnneeAcademiqueDao typeacademiquedao=new TypeAnneeAcademiqueDao();

    List<Etudiant> etudiants ;
    Etudiant select = null;
    EtudiantDao met = new EtudiantDao();
	
    etudiants= met.allEdutiant();
	if(request.getParameter("id")!=null){
		for(Etudiant annn : etudiants){
			if(annn.getId()==Integer.parseInt(request.getParameter("id"))){
				select = annn;
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
         <h1>Ajouter un etudiant</h1>
         <hr>
				<form  action="<%=request.getContextPath()%>/etudiant" method="POST">
					  <div class="form-group">
					    <label for="Nom">Nom</label>
					    <input type="text" class="form-control" id="description" placeholder="Enter nom" name="nom" required>
					  </div>
					  <div class="form-group">
					    <label for="code description">Prenom</label>
					    <input type="text" class="form-control" id="code" placeholder="Prenom" name="prenom" required>
					  </div>
					  <div class="form-group">
					    <label for="code description">Code</label>
					    <input type="text" class="form-control" id="code" placeholder="Prenom" name="code" required>
					  </div>
					  <div class="form-group">
					    <label for="code description">Option</label>
					    <select name="option" class="form-control">
					         <%for(Option opt:optiondao.allOption()){ %>
                                 <option value="<%=opt.getId()%>"><%=opt.getDescription()%></option>
                             <%} %>
                                 
					    </select>
					  </div>
					  <div class="form-group">
					    <label for="code description">Niveau</label>
					    <select name="niveau" class="form-control">
					         <%for(Niveau n:niveaudao.allNiveau()){
					         %>
					          <option value="<%=n.getId()%>"><%=n.getDescription() %></option>
					         <% 
					         } %>
					    </select>
					  </div>
					  <div class="form-group">
					    <label for="code description">Vacation</label>
					    <select name="vacation" class="form-control">
					         <%for(Vacation n:vacationdao.allVacation()){
					         %>
					          <option value="<%=n.getId()%>"><%=n.getDescription() %></option>
					         <% 
					         } %>
					    </select>
					  </div>
					  <div class="form-group">
					    <label for="code description">Annee academique</label>
					    <select name="anneeacademique" class="form-control">
					         <%for(AnneeAcademique ana:anneeacademiquedao.allAnneeAcademique()){
					         %>
					          <option  value="<%=ana.getId()%>"><%=ana.getDescription() %></option>
					         <% 
					         } %>
					    </select>
					  </div>
					  <div class="form-group">
					    <label for="code description">Type d'annee academique</label>
					    <select name="type" class="form-control">
					         <%for(TypeAcademique ana:typeacademiquedao.allTypeAcademique()){
					         %>
					          <option value="<%=ana.getId()%>"><%=ana.getDescription() %></option>
					         <% 
					         } %>
					    </select>
					  </div>
					  <div class="form-group">
					    <label for="code description">Annee academique debut</label>
					    <input type="text" class="form-control" id="code" placeholder="Annee debut" name="debut" required>
					  </div>
					  <div class="form-group">
					    <label for="code description">Annee academique en cours</label>
					    <input type="text" class="form-control" id="code" placeholder="Annee en cours" name="cours" required>
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
             Liste des Etudiants
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
		    <input type="hidden" name="operation" value="FINDET" />
		 </form>
         </div>
         <!-- fin form recherche -->
         
         <!--  TABLE -->
         <div class="fr">
	          <div class="table-responsive">
	            <table class="table table-bordered table-hover table-condensed">
	              <tr>
	                 <td>Id</td>
	                 <td>Nom</td>
	                 <td>Prenom</td>
	                 <td>Code</td>
	                 <td>Option</td>
	                 <td>Niveau</td>
	                 <td>Vacation</td>
	                 <td>annee Academique</td>
	                 <td>type Academique</td>
	                 <td>Annee Debut</td>
	                 <td>Annee en Cours</td>
	                 <td>Action</td>
	                 
	               </tr>
	                    <%
	                     if(request.getAttribute("etuseach")==null){
	                      int count = 0;
					      List<Etudiant> ans=met.allEdutiant();
			              for(Etudiant annee : ans){
	                     %>
	                  <tr class="<%=count%2==0?"":"success" %>">
	                   <td><%=annee.getId() %></td>
	                   <td><%=annee.getNom()%></td>
	                   <td><%=annee.getPrenom()%></td>
	                   <td><%=annee.getCode()%></td>
	                   <td><%=annee.getOption().getDescription()%></td>
	                   <td><%=annee.getNiveau().getDescription()%></td>
	                   <td><%=annee.getVacation().getDescription()%></td>
	                   <td><%=annee.getAnneeAcademique().getDescription()%></td>
	                   <td><%=annee.getTypeAcademique().getDescription()%></td>
	                   <td><%=annee.getAnneeAcademiqueDebut()%></td>
	                   <td><%=annee.getAnneeAcademiqueCours()%></td>
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
	                	  Etudiant annee=(Etudiant)request.getAttribute("etuseach");
	                	  %>
		               <tr >
	                   <td><%=annee.getId() %></td>
	                   <td><%=annee.getNom()%></td>
	                   <td><%=annee.getPrenom()%></td>
	                   <td><%=annee.getCode()%></td>
	                   <td><%=annee.getOption().getDescription()%></td>
	                   <td><%=annee.getNiveau().getDescription()%></td>
	                   <td><%=annee.getVacation().getDescription()%></td>
	                   <td><%=annee.getAnneeAcademique().getDescription()%></td>
	                   <td><%=annee.getTypeAcademique().getDescription()%></td>
	                   <td><%=annee.getAnneeAcademiqueDebut()%></td>
	                   <td><%=annee.getAnneeAcademiqueCours()%></td>
	                   <td><a href="Etudiant.jsp?id=<%=annee.getId()%>&operation=UPDATE"
													class="btn btn-info btn-xs" data-toggle="modal">
													<i class="fa fa-pencil"></i> Modifier </a> 
						   <a href="Etudiant.jsp?id=<%=annee.getId()%>&operation=REMOVE" 
													class="btn btn-danger btn-xs " data-toggle="modal">
													<i class="fa fa-trash-o"></i>Supprimer </a>
						</td>
	                   </tr>
		                  <%
		                  request.setAttribute("etuseach",null);
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
                <span id="titre">Modifier un etudiant</span>
               </h4>
            </div>
            <div class="modal-body">
				<form class="form-horizontal form-label-left"
						action="<%=request.getContextPath()%>/etudiant"
						method="post" name="ajouterGroupeform">
						
<input type="hidden" id="operation" name="operation" value="<%=request.getParameter("operation")!=null?request.getParameter("operation"):"ADD"%>" />  
<input type="hidden" id="id" name="id" value="<%=request.getParameter("id")!=null?request.getParameter("id"):"" %>" />
					
                         <div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								ID <span class="required">*</span>
							</label>
							<input name="idm" id="idm" type="text" value="<%=select!=null?select.getId():"" %>" required="required" class="form-control" />	
					    </div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								Nom <span class="required">*</span>
							</label>
						    <input type="text" name="nom"  value="<%=select!=null?select.getNom():"" %>" required="required" class="form-control">
						</div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								Prenom <span class="required">*</span>
							</label>
							<input type="text" name="prenom" id="codem" value="<%=select!=null?select.getPrenom():"" %>" required="required" class="form-control">
						</div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								Code <span class="required">*</span>
							</label>
							<input type="text" name="code" id="codem" value="<%=select!=null?select.getCode():"" %>" required="required" class="form-control">
						</div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label" for="id">
								Option <span class="required">*</span>
							</label>
							<select id="sexe" name="option" class="form-control">
							    <%for(Option optio:optiondao.allOption()){ %>
 								 <option value="<%=optio.getId()%>" <%=select!=null&&select.getOption().getDescription().equals(optio.getDescription())?"selected='selected'":"" %> > <%=optio.getDescription()%> </option>
                                 <%} %>
                            </select>
						</div>
					   <div class="form-group col-md-12 col-sm-12 col-xs-12">
					    <label for="code description" class="control-label">
					     Niveau <span class="required">*</span>
					    </label>
					    <select name="niveau" class="form-control">
					         <%for(Niveau n:niveaudao.allNiveau()){
					         %>
					          <option value="<%=n.getId()%>" <%=select!=null&&select.getNiveau().getDescription().equals(n.getDescription())?"selected='selected'":"" %> ><%=n.getDescription() %></option>
					         <% 
					         } %>
					    </select>
					  </div>
					  <div class="form-group col-md-12 col-sm-12 col-xs-12">
					    <label for="code description" class="control-label">
					     Vacation<span class="required">*</span>
					    </label>
					    <select name="vacation" class="form-control">
					         <%for(Vacation n:vacationdao.allVacation()){
					         %>
					          <option value="<%=n.getId()%>" <%=select!=null&&select.getVacation().getDescription().equals(n.getDescription())?"selected='selected'":"" %> ><%=n.getDescription() %></option>
					         <% 
					         } %>
					    </select>
					  </div>
					  <div class="form-group col-md-12 col-sm-12 col-xs-12">
					    <label for="code description" class="control-label">
					     Annee academique<span class="required">*</span>
					    </label>
					    <select name="anneeacademique" class="form-control">
					         <%for(AnneeAcademique ana:anneeacademiquedao.allAnneeAcademique()){
					         %>
					          <option  value="<%=ana.getId()%>" <%=select!=null&&select.getAnneeAcademique().getDescription().equals(ana.getDescription())?"selected='selected'":"" %> ><%=ana.getDescription() %></option>
					         <% 
					         } %>
					    </select>
					  </div>
					  <div class="form-group col-md-12 col-sm-12 col-xs-12">
					    <label for="code description" class="control-label">
					     Type d'annee academique<span class="required">*</span>
					    </label>
					    <select name="type" class="form-control">
					         <%for(TypeAcademique ana:typeacademiquedao.allTypeAcademique()){
					         %>
					          <option value="<%=ana.getId()%>" <%=select!=null&&select.getTypeAcademique().getDescription().equals(ana.getDescription())?"selected='selected'":"" %>><%=ana.getDescription() %></option>
					         <% 
					         } %>
					    </select>
					  </div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label" for="id">
								Annee de debut <span class="required">*</span>
							</label>
						    <input type="text" name="debut"  value="<%=select!=null?select.getAnneeAcademiqueDebut():"" %>" required="required" class="form-control">
						</div>
						<div class="form-group col-md-12 col-sm-12 col-xs-12">
							<label class="control-label " for="id">
								Annee en cours <span class="required">*</span>
							</label>
						    <input type="text" name="cours"  value="<%=select!=null?select.getAnneeAcademiqueCours():"" %>" required="required" class="form-control">
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
<div class="navbar navbar-inverse  ">
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
					$("#titre").text("Supprimer un etudiant");
				}
				$('<a href=\"#updateItem\" id=\"grid\" role=\"button\"  data-toggle="modal"><i class="fa fa-pencil"></i></a>').appendTo('body');
	  			document.getElementById('grid').click();
	  			$('#grid').remove();
        	}
			
		});

</script>
</body>
</html>