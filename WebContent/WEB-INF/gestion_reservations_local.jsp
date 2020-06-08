 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acceille</title>




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
 <input type="hidden" name="deconnecterlocal" value="deconnecterlocal" />
</form>
	<div class="main-content">
	
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
						<li>
							<a href="Accueille_local" class="active"><i class="fa fa-home nav_icon"></i>Dashboard</a>
						</li>
						<li>
							<a href="gestion_clientslocal"><i class="fa fa-users nav_icon"></i>Gestion des clients</a>
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
						<li class="">
							<a href="Modifier_employe"><i class="fa  fa-tag nav_icon"></i>Gestion des employers </a>
							<!--  <ul class="nav nav-second-level collapse">
								<li>
									<a href="Modifier_employe">General<span class="nav-badge-btm">08</span></a>
								</li>
								<li>
									<a href="typography.html">Typography</a>
								</li>
							</ul>-->
							<!-- /nav-second-level -->
						</li>
						<li>
							<a href="Modifier_chambre"><i class="fa fa-th-large nav_icon"></i>Gestion dse chambres </a>
						</li>
                        <li>
							<a href="gestion_reclamation"><i class="fa fa-file-text-o nav_icon"></i>Réclamation</a>
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
										<p>${sessionScope.session_local.nom} ${sessionScope.session_local.prenom}</p>
										<span>Admin local</span>
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
				
				
				
				
				

<h1>la liste des réservations  </h1>
 <ul class="nav">
        <li><a <c:if test="${param.type=='true'}"> style="color: #FFDD00;"</c:if> href="${pageContext.request.contextPath}/gestion_reservations?cin=${cin}&type=true">validé</a></li>
        <li><a <c:if test="${param.type=='false'}"> style="color: #FFDD00;"</c:if> href="${pageContext.request.contextPath}/gestion_reservations?cin=${cin}&type=false">en cours</a></li>
        <li><a <c:if test="${param.type=='annuler'}"> style="color: #FFDD00;"</c:if> href="${pageContext.request.contextPath}/gestion_reservations?cin=${cin}&type=annuler">annuler</a></li>
    </ul>
<div class="dbody">
    <div class="cards">

<c:forEach items="${reservations}" var="r" varStatus="i">

        <article class="card">
            <header>
                <h2>reservation N°: ${i.count}</h2>
            </header>

         
            <div class="content">
                <p>date de debut: <c:out value="${r.date_debut}" />
                <br>
                date de fin <c:out value="${r.date_fin}"/>
                <br>
                id hotel <c:out value="${r.id_hotel}" />
                <br>
                numero chambre <c:out value="${r.numero_chambre}" /> 
                </p>
            </div>
            <footer>
<c:if test="${param.type=='false'}">
<table><tr>

<td><form action="gestion_reservations" method="POST">
 <input type="hidden" id="reservationId" name="reservationId" value="${r.id_reservation}">
 <input type="hidden" id="type" name="type" value="annuler">
   <input  type="hidden" id="type" name="cin" value="${cin}">
        <button style="color:black;" type="submit" value="Annuler">Annuler</button>
    </form></td>


<td><br></td>
<td><form action="gestion_reservations" method="POST">
 <input type="hidden" id="reservationId" name="reservationId" value="${r.id_reservation}">
 <input type="hidden" id="type" name="type" value="true">
  <input type="hidden" id="type" name="cin" value="${cin}">
        <button style="color:black;" type="submit" value="Annuler">Valider</button>
    </form></td>


</tr></table>

   
    </c:if></footer>
            
        </article>
        
        
        
</c:forEach>
	</div>
	</div>
	 <style>
        /* body rules included when showing the example as a live example */
        dbody {
            background-color: #fff;
            color: #333;
            font: 1em / 0.5 Helvetica Neue, Helvetica, Arial, sans-serif;
            padding: 0;
            margin: 0;
        }
        img {
            max-width: 100%;
        }
        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
            grid-gap: 20px;
            max-width: 10000px;
            margin: 1em auto;
        }
        .card {
            display: grid;
            grid-template-rows: max-content 200px 0.5fr;
            border: 1px solid #999;
            border-radius: 3px;
        }
        .card img {
            object-fit: cover;
            width: 100%;
            height: 100%;
        }
        .card h2 {
            margin: 0;
            padding: .2rem;
        }
        .card .content {
            padding: .1rem;
        }
        .card footer {
            background-color: #333;
            color: #fff;
            padding: .2rem;
        }
    </style>
				
				
				
				
				
				
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

</html>