<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>HOTEL GROUPS</title>
	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

	<!-- Animate.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/animate.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/custom.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/fontawesome-free-5.11.2-web\css\all.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/owl.theme.default.min.css">

	<!-- Date Picker -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/style.css">

	<!-- Modernizr JS -->
	<script src="${pageContext.request.contextPath}/tour/js/modernizr-2.6.2.min.js"></script>
		<link href="${pageContext.request.contextPath}/admistyle/css/font-awesome.css" rel="stylesheet"> 
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>

<body>
	<style>
		/* Style The Dropdown Button */
		.dropbtn {
			background-color: grey;
			color: white;
			padding: 0px;
			font-size: 16px;
			border: none;
			cursor: pointer;
		}

		/* The container <div> - needed to position the dropdown content */
		.dropdown {
			position: relative;
			display: inline-block;
		}

		/* Dropdown Content (Hidden by Default) */
		.dropdown-content {
			display: none;
			position: absolute;
			background-color: grey;
			width: 150px;
			box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
			z-index: 1;
			right: 0px;
			border-radius: 5px;
		}

		/* Links inside the dropdown */
		.dropdown-content a {
			padding: 2px 2px;
			text-decoration: none;
			display: block;
			height: 10px;
			display: flex;
			justify-content: space-between;
			align-items: center;

		}

		/* Change color of dropdown links on hover */
		.dropdown-content a:hover {
			background-color: yellow
		}

		/* Show the dropdown menu on hover */
		.dropdown:hover .dropdown-content {
			display: block;
			border-radius: 5px;
		}

		/* Change the background color of the dropdown button when the dropdown content is shown */
		.dropdown:hover .dropbtn {
			background-color: black;
		}
	</style>
	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-2">
							<div id="colorlib-logo"><a href="recherche">HOTEL GROUPS</a></div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li class="active"><a href="recherche">Home</a></li>
								<li><a href="#">About</a></li>
								<li><a href="#">Contact</a></li>
														<c:if test="${sessionScope.session_user != null}">
								<li><div class="dropdown" >
  <i class="fas fa-user-circle dropbtn " style="border-radius: 25px; color:yellow; font-size:35px;"></i>
  <div class="dropdown-content">
    <a href="Accueille_client" style="  color:black;"><i class="fas fa-cog"></i> Mon Compte</a>
    <a href="${pageContext.request.contextPath}/reservationuser?type=true"  style="  color:black;"><i class="fa fa-ticket" aria-hidden="true"></i>Reservations</a>
    <a href=""  style="  color:black;"><i class="fas fa-sign-out-alt"></i><form method="post" action="loginservlet">
 <input type="hidden" name="deconnecteruser" value="deconnecteruser"" />
  <input style=" border:none;background-color:transparent;" type="submit" value="Deconnexion"/>
</form></a>
  </div>
</div></li></c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
					<li style="background-image: url(${pageContext.request.contextPath}/tour/images/hotel-1.jpg);">
						<div class="overlay"></div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
									<div class="slider-text-inner text-center">
										<h2>Plus de 20 Hotels</h2>
										<h1>Hotels repartis dans le royaume</h1>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(${pageContext.request.contextPath}/tour/images/hotel-2.jpg);">
						<div class="overlay"></div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
									<div class="slider-text-inner text-center">
										<h2>Hôtel jusqu'à</h2>
										<h1>6 étoiles</h1>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(${pageContext.request.contextPath}/tour/images/hotel-3.jpg);">
						<div class="overlay"></div>
						<div class="container-fluids">
							<div class="row">
								<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
									<div class="slider-text-inner text-center">
										<h2>Rabat, Fes, Casablanca</h2>
										<h1>et autres villes</h1>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li style="background-image: url(${pageContext.request.contextPath}/tour/images/hotel-4.jpg);">
						<div class="overlay"></div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
									<div class="slider-text-inner text-center">
										<h2>vivre le meilleur de </h2>
										<h1>la vie</h1>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</aside>
		<div id="colorlib-reservation">
			<!-- <div class="container"> -->
			<div class="row">
				<div class="search-wrap">
					<div class="tab-content ">
						<div id="flight" class="tab-pane fade in active">
							<form method="post" action="reservation">
								<div class="flexit">
									<c:forEach var="chambre" items="${ chambres }" varStatus="status">
										<div class="card" style="width: 350px;" style="background-color:#FFDD00;">
											<img src="${chambre.type_chambre}${ chambre.nombre_place}.jpg" class="card-img-top"
												alt="${chambre.type_chambre }">
											<ul class="list-group list-group-flush chambre">
												<li class="list-group-item">Nombre Disponible :${ chambre.numero_chambre}</li>
												<li class="list-group-item">NOMBRE de place : ${ chambre.nombre_place}
												</li>
												<li class="list-group-item">TYPE de Chambre : ${chambre.type_chambre }
												</li>
												<li class="list-group-item">PRIX par jour : ${ chambre.prix_jour }</li>
												<li class="list-group-item"><span class="card-link">Nombre de Chambre
														voulu </span href="#" class="card-link">
													<span class="card-link"> <input class="form-control" type="number"
															name="${status.count}" max="${ chambre.numero_chambre }"
															min="0" value="0"> </span href="#" class="card-link"></li>
											</ul>
										</div>
									</c:forEach>
								</div>
								<input class="btn btn-warning valider" type="submit" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer id="colorlib-footer" role="contentinfo">
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-3 colorlib-widget">
					<h4>HOTEL GROUPS</h4>
					<p>Plus de 20 Hotels
						Hotels repartis dans le royaume</p>
					<p>
						<ul class="colorlib-social-icons">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
				<div class="col-md-3 col-md-push-6">
					<h4>Contact Information</h4>
					<ul class="colorlib-footer-links">
						<li>291 Rue Afafi , <br> Rabat Maroc</li>
						<li><a href="tel://1234567920">+ 1235 2355 98</a></li>
						<li><a href="mailto:info@yoursite.com">hotels@gmail.com</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright HOTEL GROUPS 2020
					</p>
				</div>
			</div>
		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	<script src="${pageContext.request.contextPath}/tour/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="${pageContext.request.contextPath}/tour/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/tour/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="${pageContext.request.contextPath}/tour/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="${pageContext.request.contextPath}/tour/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="${pageContext.request.contextPath}/tour/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="${pageContext.request.contextPath}/tour/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/tour/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="${pageContext.request.contextPath}/tour/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="${pageContext.request.contextPath}/tour/js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="${pageContext.request.contextPath}/tour/js/main.js"></script>

</body>

</html>
