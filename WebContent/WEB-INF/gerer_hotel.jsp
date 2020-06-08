<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>

<head>
	<title>Novus Admin Panel an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts
	</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script
		type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Bootstrap Core CSS -->

	<script
		type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
	<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
		rel='stylesheet' type='text/css'>
	<!--//webfonts-->
	<!--animate-->
	<link href="${pageContext.request.contextPath}/admistyle/css/animate.css" rel="stylesheet" type="text/css"
		media="all">
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
	<script src="${pageContext.request.contextPath}/admistyle/js/moment-2.2.1.js" type="text/javascript"></script>
	<!--End Calender-->
	<!-- Metis Menu -->
	<script src="${pageContext.request.contextPath}/admistyle/js/metisMenu.min.js"></script>
	<script src="${pageContext.request.contextPath}/admistyle/js/custom.js"></script>
	<link href="${pageContext.request.contextPath}/admistyle/css/custom.css" rel="stylesheet">
	<!--//Metis Menu -->
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
							<a href="Accueille_local"><i class="fa fa-home nav_icon"></i>Dashboard</a>
						</li>
						<li>
							<a href="Modifier_adminlocal"><i class="fa fa-users nav_icon"></i>Gestion des admins
								locals</a>
						</li>

						<li>
							<a href="Modifier_hotel" class="active"><i class="fa fa-th-large nav_icon"></i>Gestion des
								Hotels </a>
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
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search"
							id="input-31" />
						<label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77"
								preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z" />
							</svg>
						</label>
					</form>
				</div>
				<!--//end-search-box-->
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


				<div class="row-one">
					<div class="col-md-4 widget">
						<div class="stats-left ">
							<h5>Nombre </h5>
							<h4>Admin Local</h4>
						</div>
						<div class="stats-right">
							<label>${hoteldata.nombre_local}</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 widget states-mdl">
						<div class="stats-left">
							<h5>Nombre Reservations</h5>
							<h4>Validée</h4>
						</div>
						<div class="stats-right">
							<label>${hoteldata.nombre_reservation_valider}</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 widget states-last">
						<div class="stats-left">
							<h5>Nombre Reservations </h5>
							<h4>Total</h4>
						</div>
						<div class="stats-right">
							<label>${hoteldata.nombre_reservation_total}</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="row-one">
					<div class="col-md-4 widget">
						<div class="stats-left ">
							<h5>Nombre</h5>
							<h4 class="recep">Receptionniste</h4>
						</div>
						<div class="stats-right">
							<label>${hoteldata.nombre_receptionniste}</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 widget states-mdl">
						<div class="stats-left">
							<h5>Nombre Reservations</h5>
							<h4>En cours</h4>
						</div>
						<div class="stats-right">
							<label>${hoteldata.nombre_reservation_encore}</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 widget states-last">
						<div class="stats-left">
							<h5>Nombre</h5>
							<h4>Rating</h4>
						</div>
						<div class="stats-right">
							<label>${hoteldata.note}</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="row-one">
					<div class="col-md-4 widget">
						<div class="stats-left ">
							<h5>Nombre</h5>
							<h4>Etoile</h4>
						</div>
						<div class="stats-right">
							<label>${hoteldata.hotel.nombre_etoile}</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 widget states-mdl">
						<div class="stats-left">
							<h5>Nombre Reservation</h5>
							<h4>Annulée</h4>
						</div>
						<div class="stats-right">
							<label>${hoteldata.nombre_reservation_annuler}</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 widget states-last">
						<div class="stats-left">
							<h5>Nombre</h5>
							<h4>Reclamations</h4>
						</div>
						<div class="stats-right">
							<label>${hoteldata.nombre_reclamations}</label>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>

				<c:if test="${check}">
					<div class="row mypohotos">
						<div class="container col">
							<h1>les infomation de l'hotel ${hoteldata.hotel.nom} - ${hoteldata.hotel.ville}</h1>
							<div class="timer"></div>
							<div class="slideshow">
								<div class="slide"> <img src="data:image/jpg;base64,${photos[0].base64Image}" alt="">
								</div>
								<div class="slide"><img src="data:image/jpg;base64,${photos[1].base64Image}" alt="">
								</div>
								<div class="slide"><img src="data:image/jpg;base64,${photos[2].base64Image}" alt="">
								</div>
							</div>
						</div>
					</div>
				</c:if>
						<div class="charts">
					<div class="col-md-4 charts-grids widget">
						<h4 class="title">les reseravtion de cette années</h4>
						<canvas id="bar" height="300" width="400"> </canvas>
					</div>
					<div class="col-md-4 charts-grids widget states-mdl">
						<h4 class="title">reservation de ce mois par jour</h4>
						<canvas id="line" height="300" width="400"> </canvas>
					</div>
					<div class="col-md-4 charts-grids widget">
						<h4 class="title">les types des chambres la plus demandes  %</h4>
						<canvas id="pie" height="300" width="400"> </canvas>
					</div>
					<div class="clearfix"> </div>
							 <script>
							 var barChartData = {
										labels : ["JAN","FÉV","MAR","AVR","MAI","JUN","JUL","AOÛ","SEP","OCT","NOV","DÉC"],
										datasets : [
											{
												fillColor : "rgba(233, 78, 2, 0.9)",
												strokeColor : "rgba(233, 78, 2, 0.9)",
												highlightFill: "#e94e02",
												highlightStroke: "#e94e02",
												data : [<c:forEach var="i" begin="1" end="12" >
											    ${statotalmois[i]},
											    </c:forEach>
													
												]
											}
										]
										
									};
							 var lineChartData = {
										labels : ["JAN","FÉV","MAR","AVR","MAI","JUN","JUL","AOÛ","SEP","OCT","NOV","DÉC"],
									datasets : [
										
										{
											fillColor : "rgba(242, 179, 63, 1)",
											strokeColor : "#F2B33F",
											pointColor : "rgba(242, 179, 63, 1)",
											pointStrokeColor : "#fff",
											data : [<c:forEach var="i" begin="1" end="12" >
										    ${statotalmois[i]},
										    </c:forEach>
												
											]

										},
										{
											fillColor : "rgba(97, 100, 193, 1)",
											strokeColor : "#6164C1",
											pointColor : "rgba(97, 100, 193,1)",
											pointStrokeColor : "#9358ac",
											data : [<c:forEach var="i" begin="1" end="12" >
										    ${statotalmoislaste[i]},
										    </c:forEach>
											]

										}
									]
									
								};
									 
								var pieData = [
									<c:forEach var="coun" items="${alllaste}">
									
									{
										value: ${coun.value},
										color:"rgb(" + Math.random() * 256 + "," + Math.random() * 256 + "," + Math.random() * 256 + ")",
										label: "${coun.key}"
									},</c:forEach>
									
									
										
									];
								
							new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);
							new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
							new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);
							
							</script>
							
				</div>
				<div class="row calender widget-shadow">
					<form class="formhotel" method="post" action="gerer_hotel?id_hotel=${param.id_hotel}">
						<h1>les infomation de l'hotel ${hoteldata.hotel.nom} - ${hoteldata.hotel.ville}</h1>
						<div class="form-group">
							<label for="nom">Nom Hotel</label>
							<input class="form-control" type="text" id="nom" name="nom" value="${hoteldata.hotel.nom}">
						</div>
						<div class="form-group">
							<label for="nom">Nombre d'etoile</label>
							<input class="form-control" type="text" id="nombre_etoile" name="nombre_etoile" value="${hoteldata.hotel.nombre_etoile}">
						</div>
						<div class="form-group">
							<label for="nom">Ville Hotel</label>
							<input class="form-control" type="text" id="nom" name="ville"
								value="${hoteldata.hotel.ville}" disabled>
						</div>
						<div class="form-group">
							<label for="nom">addresse Hotel</label>
							<input class="form-control" type="text" id="nom" name="addresse"
								value="${hoteldata.hotel.adresse}" disabled>
						</div>
						<div class="form-group">
							<label for="nom">nombre chambres</label>
							<input class="form-control" type="number" id="nom" name="nombre_chambre"
								value="${hoteldata.hotel.nombre_chambre}" disabled>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				<c:if test="${!check}">
					<div class="row  widget-shadow">
						<form class=" upload" action="UploadServlet?id_hotel=${param.id_hotel}" method="post"
							enctype="multipart/form-data">

							<label class="custom-file-upload"> Select File 1:<input type="file" name="fname1"
									accept=".jpg,.png,.bmp,.gif" class="btn btn-warning" /><br /></label>
							<label class="custom-file-upload"> Select File 2:<input type="file" name="fname2"
									accept=".jpg,.png,.bmp,.gif" /><br /></label>
							<label class="custom-file-upload">Select File 3:<input type="file" name="fname3"
									accept=".jpg,.png,.bmp,.gif" /><br /></label>
							<label><input class="custom-file-upload" type="submit" value="upload" /></label>
						</form>
					</div>
				</c:if>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!--footer-->
		<div class="footer">
			<p>&copy; 2020 HOTEL GROUPS</a></p>
		</div>
		<!--//footer-->
	</div>
	<!-- Classie -->
	<!-- Classie -->
	<script src="${pageContext.request.contextPath}/admistyle/js/classie.js"></script>
	<script>
		var menuLeft = document.getElementById('cbp-spmenu-s1'),
			showLeftPush = document.getElementById('showLeftPush'),
			body = document.body;

		showLeftPush.onclick = function () {
			classie.toggle(this, 'active');
			classie.toggle(body, 'cbp-spmenu-push-toright');
			classie.toggle(menuLeft, 'cbp-spmenu-open');
			disableOther('showLeftPush');
		};


		function disableOther(button) {
			if (button !== 'showLeftPush') {
				classie.toggle(showLeftPush, 'disabled');
			}
		}
	</script>
	<!--scrolling js-->
	<script src="${pageContext.request.contextPath}/admistyle/js/jquery.nicescroll.js"></script>
	<script src="${pageContext.request.contextPath}/admistyle/js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath}/admistyle/js/bootstrap.js"> </script>
	<script src="${pageContext.request.contextPath}/apphotel1.js"></script>
</body>

</html>