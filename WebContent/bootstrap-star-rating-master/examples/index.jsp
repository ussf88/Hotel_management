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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/fontawesome-free-5.11.2-web\css\all.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/animate.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/custom.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/flexslider.css">
	<link href="${pageContext.request.contextPath}/admistyle/css/font-awesome.css" rel="stylesheet">

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
	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link href="${pageContext.request.contextPath}/bootstrap-star-rating-master/css/star-rating.css" media="all"
		rel="stylesheet" type="text/css" />
	<!--suppress JSUnresolvedLibraryURL -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/bootstrap-star-rating-master/js/star-rating.js"
		type="text/javascript"></script>
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
									<li>
										<div class="dropdown">
											<i class="fas fa-user-circle dropbtn "
												style="border-radius: 25px; color:yellow; font-size:35px;"></i>
											<div class="dropdown-content">
												<a href="Accueille_client" style="  color:black;"><i
														class="fas fa-cog"></i> Mon Compte</a>
												<a href="${pageContext.request.contextPath}/reservationuser?type=true"
													style="  color:black;"><i class="fa fa-ticket"
														aria-hidden="true"></i>Reservations</a>
												<a href="" style="  color:black;"><i class="fas fa-sign-out-alt"></i>
													<form method="post" action="loginservlet">
														<input type="hidden" name="deconnecteruser"
															value="deconnecteruser"" />
	  <input style=" border:none;background-color:transparent;" type="submit" value="Deconnexion" />
													</form>
												</a>
											</div>
										</div>
									</li>
								</c:if>
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
<ul class="mylinks">
	<c:choose>
         
         <c:when test ="${param.type=='true'}">
            <li class="active"><a href="${pageContext.request.contextPath}/reservationuser?type=true">validé</a>
								</li>
								<li><a href="${pageContext.request.contextPath}/reservationuser?type=false">en cours</a>
								</li>
								<li><a
										href="${pageContext.request.contextPath}/reservationuser?type=annuler">annuler</a>
								</li>
         </c:when>
         
         <c:when test = "${param.type=='false'}">
            <li><a href="${pageContext.request.contextPath}/reservationuser?type=true">validé</a>
								</li>
								<li class="active"><a href="${pageContext.request.contextPath}/reservationuser?type=false">en cours</a>
								</li>
								<li><a
										href="${pageContext.request.contextPath}/reservationuser?type=annuler">annuler</a>
								</li>
         </c:when>
         
         <c:otherwise>
           <li><a href="${pageContext.request.contextPath}/reservationuser?type=true">validé</a>
								</li>
								<li><a href="${pageContext.request.contextPath}/reservationuser?type=false">en cours</a>
								</li>
								<li class="active"><a
										href="${pageContext.request.contextPath}/reservationuser?type=annuler">annuler</a>
								</li>
         </c:otherwise>
      </c:choose>
</ul>
						
						<div id="flight" class="tab-pane fade in active">
							<div class="flexit">
								<c:set var="count" value="0" scope="page" />
								<c:forEach items="${reservations}" var="r" varStatus="i">
									<div class="card" style="width: 28rem;" style="background-color:#FFDD00;">
										<ul class="list-group list-group-flush">
											<li class="list-group-item"> reservation N°: ${i.count}</li>
											<li class="list-group-item">date de debut:
												<c:out value="${r.reservation.date_debut}" />
											</li>
											<li class="list-group-item"> date de fin
												<c:out value="${r.reservation.date_fin}" />
											</li>
											<li class="list-group-item"> Hotel:
												<c:out value="${r.hotel}" />
											</li>
											<li class="list-group-item"> numero chambre
												<c:out value="${r.reservation.numero_chambre}" />
											</li>
											<c:if test="${param.type=='false'}">
												<li class="list-group-item">
													<form action="reservationuser" method="POST">
														<input type="hidden" id="reservationId" name="reservationId"
															value="${r.reservation.id_reservation}">
														<input type="hidden" id="type" name="type" value="annuler">
														<button type="submit" value="Annuler">Annuler</button>
													</form>
												</li>
											</c:if>
											<c:if test="${param.type=='true'}">
												<div class="list-group-item">
													<div class="container">
														<form action="Rate?id=${r.reservation.id_reservation}"
															method="post">
															<input name="rating" id="input-21b"
																value="${ratings[count]}" type="text" class="rating"
																data-min=0 data-max=5 data-step=0.2 data-size="lg"
																required title="">
															<input type="hidden" name="type" value="rate" />
															<div class="clearfix"></div>
															
															<div class="form-group" style="margin-top:10px">
																<button type="submit"
																	class="btn btn-primary">Submit</button>
															</div>
														</form>
														
														<c:set var="count" value="${count + 1}" scope="page" />
													</div>
												</div>
											<li class="list-group-item"><a
													href="Rate?id=${r.reservation.id_reservation}">Voir
													reclamations</a></li>
														</c:if>
										</ul>
									</div>
								</c:forEach>
							</div>
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
	<script>
		jQuery(document).ready(function () {
			$("#input-21f").rating({
				starCaptions: function (val) {
					if (val < 3) {
						return val;
					} else {
						return 'high';
					}
				},
				starCaptionClasses: function (val) {
					if (val < 3) {
						return 'label label-danger';
					} else {
						return 'label label-success';
					}
				},
				hoverOnClear: false
			});
			var $inp = $('#rating-input');

			$inp.rating({
				min: 0,
				max: 5,
				step: 1,
				size: 'lg',
				showClear: false
			});

			$('#btn-rating-input').on('click', function () {
				$inp.rating('refresh', {
					showClear: true,
					disabled: !$inp.attr('disabled')
				});
			});


			$('.btn-danger').on('click', function () {
				$("#kartik").rating('destroy');
			});

			$('.btn-success').on('click', function () {
				$("#kartik").rating('create');
			});

			$inp.on('rating.change', function () {
				alert($('#rating-input').val());
			});


			$('.rb-rating').rating({
				'showCaption': true,
				'stars': '3',
				'min': '0',
				'max': '3',
				'step': '1',
				'size': 'xs',
				'starCaptions': { 0: 'status:nix', 1: 'status:wackelt', 2: 'status:geht', 3: 'status:laeuft' }
			});
			$("#input-21c").rating({
				min: 0, max: 8, step: 0.5, size: "xl", stars: "8"
			});
		});
	</script>

</body>

</html>