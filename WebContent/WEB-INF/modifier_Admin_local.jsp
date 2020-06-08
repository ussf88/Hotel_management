<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/DataTables/datatables.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styleRecep.css">
<title>Modifier employee</title>


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/admistyle/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/admistyle/css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="${pageContext.request.contextPath}/admistyle/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="${pageContext.request.contextPath}/admistyle/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/admistyle/js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="${pageContext.request.contextPath}/admistyle/css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="${pageContext.request.contextPath}/admistyle/js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- chart -->
<script src="${pageContext.request.contextPath}/admistyle/js/Chart.js"></script>
<!-- //chart -->
<!--Calender-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/admistyle/css/clndr.css" type="text/css" />
<script src="${pageContext.request.contextPath}/admistyle/js/underscore-min.js" type="text/javascript"></script>
<script src= "${pageContext.request.contextPath}/admistyle/js/moment-2.2.1.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/admistyle/js/clndr.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/admistyle/js/site.js" type="text/javascript"></script>
<!--End Calender-->
<!-- Metis Menu -->
<script src="${pageContext.request.contextPath}/admistyle/js/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/admistyle/js/custom.js"></script>
<link href="${pageContext.request.contextPath}/admistyle/css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<form method="post" action="Loginusers" id="FormId">
<input type="hidden" name="deconnecterglobal" value="deconnecterglobal" />
</form>
	<div class="main-content">
	
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
						<li>
							<a href="Accueille_local" ><i class="fa fa-home nav_icon"></i>Dashboard</a>
						</li>
						<li>
							<a href="Modifier_adminlocal" class="active"><i class="fa fa-users nav_icon"></i>Gestion des admins locals</a>
						<!--	<ul class="nav nav-second-level collapse">
								<li>
									<a href="gestion_clientslocal">liste des Client</a>
								</li>
								<li>
									<a href="media.html">Ajouter un client</a>
								</li>
							</ul>  -->
							<!-- /nav-second-level -->
						</li>
						
						<li>
							<a href="Modifier_hotel"><i class="fa fa-th-large nav_icon"></i>Gestion des Hotels </a>
						</li>
                       
                       
					</ul>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="index.html">
						<h1>Hotel</h1>
						<span>GROUPS</span>
					</a>
				</div>
				<!--//logo-->
				<!--search-box-->
				<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
						<label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
							</svg>
						</label>
					</form>
				</div><!--//end-search-box-->
				<div class="clearfix"> </div>
			</div>
           
			<div class="header-right">
				
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="${pageContext.request.contextPath}/admistyle/images/a.png" alt=""> </span> 
									<div class="user-name">
										<p>${sessionScope.session_global.nom} ${sessionScope.session_global.prenom}</p>
										<span>Admin Global</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								
								<li> <a href="comptelocal"><i class="fa fa-user"></i> Profile</a> </li> 
							
								<li> <a href="#" onclick="document.getElementById('FormId').submit();"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
		<div class="card-body">
		<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Remplir les Formules</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-1">
        <form class="form-validate formi" method="post"
                                                    action="Modifier_adminlocal">
                                                    <div class="form-group container-add modalito">
                                                    <label for="cin">CIN :</label>
                                                        <input type="text" name="cin" />
                                                        <label for="nom_admin"><b>Nom</b></label>
                                                        <input type="text" placeholder="Entrer Un Nom" name="nom_admin"
                                                            >

                                                        <label for="prenom"><b>Prenom</b></label>
                                                        <input type="text" placeholder="Entrer un Prenom"
                                                            name="prenom" >

                                                        <label for="phone"><b>Telephone</b></label>
                                                        <input type="tel" placeholder="Entrer N° telephone"
                                                            name="telephone" min="1">

                                                        <label for="email"><b>Email</b></label>
                                                        <input type="text" placeholder="Entrer EMAIL"
                                                            name="email" min="1">
                                                        <label for="mdp"><b>Mot de passe</b></label>
                                                        <input type="text" placeholder="Entrer MOT DE PASSE"
                                                            name="mot_passe" min="1">
                                                            <label for="addresse"><b>Addresse</b></label>
                                                        <input type="text" placeholder="Entrer  ADDRESSE"
                                                            name="addresse" min="1">
                                                           <label for="ville">VILLE</label>
                <select id="ville" name="ville" class="used ville">
                    <c:forEach var="villehotel" items="${VilleHotel}">
                           <option value="${villehotel.key}" >${villehotel.key}</option>
                      </c:forEach>
                </select>
                <label for="nom">Hotel</label>
                <c:forEach var="villehotel" items="${VilleHotel}">
                       <select hidden class="${villehotel.key}" id="${villehotel.key}">
                       <c:forEach items="${villehotel.value}" var="hotels"> 
                              <option value="${hotels}">${hotels}</option>
                              </c:forEach>
                          </select>
                  </c:forEach>
                   <c:forEach var="villehotel" items="${VilleHotel}" varStatus="_status" >
                    <c:if test="${_status.count eq 1}">
                       <select  class="newSel used" id="newSel used" name="nom">
                       <c:forEach items="${villehotel.value}" var="hotels" varStatus="_status1" > 
                        <c:choose>
                          <c:when test="${_status1.count eq 1}">
                          <option selected="selected" value="${hotels}">${hotels}</option>
                           </c:when>
                            <c:otherwise>
                            <option  value="${hotels}">${hotels}</option>
                             </c:otherwise>
                                  </c:choose>      
                              </c:forEach>
                          </select>
                           </c:if>
                  </c:forEach>
                                      <input type="hidden" name="type" value="add" />
                                                            <input type="submit" value="enregistrer" />
                                                               </div>
                                                </form>  
      </div>
    </div>
  </div>
</div>
<div class="text-center">
  <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalLoginForm">Ajouter un Administrateur Locale</a>
</div>
		
		
        <div class="table-responsive">
            <table style="width:100%" id="example" class="table table-bordered table-hover nowrap ">
                <thead class="bg-primary">
                    <tr>
                        <th scope="col" style="width:15%;color: black;">CIN</th>
                        <th scope="col" style="width:15%;color: black;">Nom</th>
                        <th scope="col" style="width:15%;color: black;">Prenom</th>
                        <th scope="col" style="width:15%;color: black;">Telephone</th>
                        <th scope="col" style="width:15%;color: black;">Email</th>
                        <th scope="col" style="width:10%;color: black;">MOT DE PASSE</th>
                        <th scope="col" style="width:30%;color: black;">Adresse</th>
                        <th scope="col" style="width:30%;color: black;">Ville</th>
                        <th scope="col" style="width:30%;color: black;">Hotel</th>
                        <th scope="col" style="width:30%;color: black;">parametre</th>

                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${adminL}" var="value" varStatus="i">
                    <tr>
                        <td><c:out value="${value.cin}"/></td>
                        <td><c:out value="${value.nom}"/></td>
                        <td><c:out value="${value.prenom}"/></td>
                        <td><c:out value="${value.telephone}"/></td>
                        <td><c:out value="${value.email}"/></td>
                        <td><c:out value="${value.mot_passe}"/></td>
                        <td><c:out value="${value.addresse}"/></td>
                        <td><c:out value="${value.ville_hotel}"/></td>
                        <td><c:out value="${value.nom_hotel}"/></td>
                        <td>
                            <div class="test_cont" style="color:black">
                                <div class="modal fade modalmodifier${i.count}" tabindex="-1" role="dialog"
                                    aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header text-center">
                                                <h4 class="modal-title w-100 font-weight-bold" style="color:black;">
                                                    Remplir les Formules</h4>
                                                <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body mx-1">
                                                <form class="form-validate" method="post"
                                                    action="Modifier_adminlocal">
                                                    <div class="form-group container-add modalito">
                                                        <label for="nom"><b>Nom</b></label>
                                                        <input type="text" placeholder="Entrer Un Nom" name="nom"
                                                           value="${value.nom}">

                                                        <label for="prenom"><b>Prenom</b></label>
                                                        <input type="text" placeholder="Entrer un Prenom"
                                                            name="prenom" value="${value.prenom}">

                                                        <label for="phone"><b>Telephone</b></label>
                                                        <input type="number" placeholder="Entrer N° telephone"
                                                            name="phone" min="1" value="${value.telephone}">

                                                        <label for="email"><b>Email</b></label>
                                                        <input type="text" placeholder="Entrer EMAIL"
                                                            name="email" min="1" value="${value.email}">
                                                        <label for="mdp"><b>Mot de passe</b></label>
                                                        <input type="text" placeholder="Entrer MOT DE PASSE"
                                                            name="mdp" min="1" value="${value.mot_passe}">
                                                            <label for="addresse"><b>Addresse</b></label>
                                                        <input type="text" placeholder="Entrer  ADDRESSE"
                                                            name="addresse" min="1" value="${value.addresse}">  
                                                         <input type="hidden" name="cin" value="<c:out value="${value.cin}"/>" />  
                                                         <input type="hidden" name="type" value="change" />
                                                                        <label for="ville">VILLE</label>
                <select id="ville" name="ville" class="used ville">
                    <c:forEach var="villehotel" items="${VilleHotel}">
                        <c:choose>
                          <c:when test="${villehotel.key == value.ville_hotel}">
                          <option value="${villehotel.key}" selected="selected">${villehotel.key}</option>
                           </c:when>
                            <c:otherwise>
                           <option value="${villehotel.key}" >${villehotel.key}</option>
                            </c:otherwise>
                                  </c:choose> 
                      </c:forEach>
                </select>
                <label for="nom">Hotel</label>
                <c:forEach var="villehotel" items="${VilleHotel}">
                       <select hidden class="${villehotel.key}" id="${villehotel.key}">
                       <c:forEach items="${villehotel.value}" var="hotels"> 
                              <option value="${hotels}">${hotels}</option>
                              </c:forEach>
                          </select>
                  </c:forEach>
                   <c:forEach var="villehotel" items="${VilleHotel}" varStatus="_status" >
                    <c:if test="${villehotel.key == value.ville_hotel}">
                       <select  class="newSel used" id="newSel used" name="hotel">
                       <c:forEach items="${villehotel.value}" var="hotels" varStatus="_status1" > 
                        <c:choose>
                          <c:when test="${hotels==value.nom_hotel}">
                          <option selected="selected" value="${hotels}">${hotels}</option>
                           </c:when>
                            <c:otherwise>
                            <option  value="${hotels}">${hotels}</option>
                             </c:otherwise>
                                  </c:choose>      
                              </c:forEach>
                          </select>
                           </c:if>
                  </c:forEach>
                   <div class="clearfix clearfix1">
                                                            <button type="submit"
                                                                class="signupbtn signupbtn1">Modifier</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <a href="" class="no" data-toggle="modal" data-target=".modalmodifier${i.count}">Modifier</a>
                                </div>

                               <div class="modal fade modaldelete${i.count}" tabindex="-1" role="dialog"
                                    aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header text-center">
                                                <h4 class="modal-title w-100 font-weight-bold" style="color:black;">are
                                                    you sure?</h4>
                                                <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body mx-1">
                                                <form class="deleteclass form-validate" method="post"
                                                    action="Modifier_adminlocal">
                                                    <input type="hidden" name="type" value="remove" />
                                                    <input type="hidden" name="cin" value="<c:out value="${value.cin}"/>" />
                                               <center>  <button class="yes">Supprimer</button></center>
                                                 </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <a href="" class="yes" data-toggle="modal" data-target=".modaldelete${i.count}">Supprimer</a>
                                </div>
                            </div>
                        </td>
                    </tr>
 </c:forEach>
                </tbody>
            </table>
        </div>
    </div>	
				<div class="clearfix"> </div>
			</div>
		</div>
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2020 HOTEL GROUPS
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="${pageContext.request.contextPath}/admistyle/js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="${pageContext.request.contextPath}/admistyle/js/jquery.nicescroll.js"></script>
	<script src="${pageContext.request.contextPath}/admistyle/js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="${pageContext.request.contextPath}/admistyle/js/bootstrap.js"> </script>
</body>

<script type="text/javascript" charset="utf8" src="${pageContext.request.contextPath}/DataTables/datatables.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#example').DataTable();
    });
    table = $('#example').dataTable({
        "language": {
            search: "_INPUT_",
            searchPlaceholder: "Rechercher les Administrateurs Locale...",
            "sLengthMenu": "Afficher _MENU_ admin locale",
            "info": "affichage de _START_ à _END_ parmi _TOTAL_ admin local",
            "paginate": {
                "previous": "Précédent",
                "next": "Suivant"
            },
        }
    });
</script>

<script >
var oldSel;
document.querySelectorAll('.ville').forEach(item => {
	  item.addEventListener('change', function (e) {
		    oldSel = item.nextElementSibling;
		    while (oldSel.className != "newSel used" || oldSel.tagName=== 'LABEL') {
		        oldSel = oldSel.nextElementSibling;
		    }
		    console.log();
		    console.log(oldSel);
		    while (oldSel.options.length > 0) {
		        oldSel.remove(oldSel.options.length - 1);
		    }
		    var valeur = item.value;
		    console.log(valeur);
		    var newSel = $('.' + valeur).get(0);

		    for (i = 0; i < newSel.length; i++) {
		        var opt = document.createElement('option');

		        opt.text = newSel.options[i].text;
		        opt.value = newSel.options[i].value;

		        oldSel.add(opt, null);
		    }
		});

	  });


</script>

<script >
var oldSel2;
document.querySelectorAll('.ville2').forEach(item => {
	  item.addEventListener('change', function (e) {
		    oldSel2 = item.nextElementSibling;
		    while (oldSel2.className != "newSel used" || oldSel2.tagName=== 'LABEL') {
		        oldSel2 = oldSel2.nextElementSibling;
		    }
		    console.log();
		    console.log(oldSel2);
		    while (oldSel2.options.length > 0) {
		        oldSel2.remove(oldSel2.options.length - 1);
		    }
		    var valeur = item.value;
		    console.log(valeur);
		    var newSel = $('.' + valeur).get(0);

		    for (i = 0; i < newSel.length; i++) {
		        var opt = document.createElement('option');

		        opt.text = newSel.options[i].text;
		        opt.value = newSel.options[i].value;

		        oldSel2.add(opt, null);
		    }
		});

	  });


</script>
</html>
