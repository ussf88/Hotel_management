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
<title>Gestion Clients</title>

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
<input type="hidden" name="deconnecterrecpt" value="deconnecterrecpt" />
</form>
	<div class="main-content">
	
		<!--left-fixed -navigation-->
		
		
		
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
						<li>
							<a href="Accueille_receptionniste" class="active"><i class="fa fa-home nav_icon"></i>Dashboard</a>
						</li>
						<li>
							<a href="gestion_clients"><i class="fa fa-users nav_icon"></i>Gestion des clients</a>
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
						<span>Admin Local</span>
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
										<p>${sessionScope.session_receptionniste.nom} ${sessionScope.session_receptionniste.prenom}</p>
										<span>Admin local</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								
								<li> <a href="compterecption"><i class="fa fa-user"></i> Profile</a> </li> 
							
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
				
				
	<h1>les resultats de recherche est :</h1>
<div class="row">
	<form method="post" action="Reservationrecpt">
		<div class="flexit1">
			<c:forEach var="chambre" items="${ chambres }" varStatus="status">
				<div class="card" style="width: 350px;" style="background-color:#FFDD00;">
					<img src="${chambre.type_chambre}${ chambre.nombre_place}.jpg" class="card-img-top" alt="${chambre.type_chambre }">
					<ul class="list-group list-group-flush">
						<li class="list-group-item"> Nombre Disponible :${ chambre.numero_chambre
							}</li>
						<li class="list-group-item">NOMBRE de place : ${ chambre.nombre_place}
						</li>
						<li class="list-group-item">TYPE de Chambre : ${chambre.type_chambre }
						</li>
						<li class="list-group-item">PRIX par jour : ${ chambre.prix_jour }</li>
						<li class="list-group-item"><span class="card-link">Nombre de Chambre
								voulu </span href="#" class="card-link">
							<span class="card-link"> <input class="form-control" type="number" name="${status.count}"
									max="${ chambre.numero_chambre }" min="0" value="0"> </span href="#"
								class="card-link"></li>
								<li class="list-group-item"><select class="form-control" name="validation">
						<option value="false" selected>non valider</option>
						<option value="true">valider</option>
					</select></li>
					</ul>
				</div>
			</c:forEach>
		</div>
		<input class="btn valider" type="submit" />
	</form>
</div>	
				<div class="clearfix"> </div>
			</div>
		</div>
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2020 All Rights Reserved.
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
            searchPlaceholder: "Rechercher les Clients...",
            "sLengthMenu": "Afficher _MENU_ Clients",
            "info": "affichage de _START_ à _END_ parmi _TOTAL_ Clients",
            "paginate": {
                "previous": "Précédent",
                "next": "Suivant"
            },
        }
    });
</script>
<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
</html>
