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
<link rel="stylesheet" href="${pageContext.request.contextPath}/fontawesome-free-5.11.2-web\css\all.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/style.css">

	<!-- Modernizr JS -->
	<script src="${pageContext.request.contextPath}/tour/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<link href="${pageContext.request.contextPath}/admistyle/css/font-awesome.css" rel="stylesheet"> 

</head>

<body>
<c:if test="${requestScope.message!=null}">
<script> window.alert("${requestScope.message}")</script> 
</c:if>
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
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  right:0px;
  border-radius: 5px;
}

/* Links inside the dropdown */
.dropdown-content a {
  padding: 2px 2px;
  text-decoration: none;
  display: block;
  height:10px;
   display: flex;
  justify-content:space-between;
  align-items: center;
  
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: yellow}

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
										<h2>Hotel jusqu'a</h2>
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
					<div class="tab-content">
						<div id="flight" class="tab-pane fade in active">
							<form method="post" action="resultat" class="colorlib-form">
								<div class="row">
									<div class="col-md-3">
										<div class="form-group">
											<label for="ville">VILLE</label>
											<div class="form-field">
												<select id="ville" name="ville" class="used form-control" id="people">
													<c:forEach var="villehotel" items="${VilleHotel}">
														<option value="${villehotel.key}">${villehotel.key}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label for="nom">Hotel</label>
											<div class="form-field">
												<c:forEach var="villehotel" items="${VilleHotel}">
													<select hidden class="${villehotel.key}" id="${villehotel.key}">
														<c:forEach items="${villehotel.value}" var="hotels">
															<option value="${hotels}">${hotels}</option>
														</c:forEach>
													</select>
												</c:forEach>
												<c:forEach var="villehotel" items="${VilleHotel}" varStatus="_status">
													<c:if test="${_status.count eq 1}">
														<select class="newSel used form-control" id="newSel used"
															name="nom">
															<c:forEach items="${villehotel.value}" var="hotels"
																varStatus="_status1">
																<c:choose>
																	<c:when test="${_status1.count eq 1}">
																		<option selected="selected" value="${hotels}">
																			${hotels}</option>
																	</c:when>
																	<c:otherwise>
																		<option value="${hotels}">${hotels}</option>
																	</c:otherwise>
																</c:choose>
															</c:forEach>
														</select>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label for_debut="date">date de reserve</label>
											<div class="form-field">
												<i class="icon icon-calendar2"></i>
												<input class="form-control" min="<%= java.time.LocalDate.now()%>"
													type="date" id="date_debut" name="date_debut"
													placeholder="yyyy-mm-dd" onchange="document.getElementById('date_fin').min=this.value;">
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label for="date_fin">date de fin</label>
											<div class="form-field">
												<i class="icon icon-calendar2"></i>
												<input class="form-control " min="<%= java.time.LocalDate.now()%>"
													type="date" id="date_fin" name="date_fin" placeholder="yyyy-mm-dd">
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<input type="submit" value="Rechercher" id="submit"
											class="btn btn-primary btn-block">
									</div>
								</div>
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

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/tour/js/jquery.min.js"></script>
	<script>
		var ville = document.getElementById("ville");
		ville.addEventListener('change', function (e) {
			var oldSel = $('.newSel').get(0);

			while (oldSel.options.length > 0) {
				oldSel.remove(oldSel.options.length - 1);
			}
			var valeur = ville.value;
			console.log(valeur);
			var newSel = $('.' + valeur).get(0);

			for (i = 0; i < newSel.length; i++) {
				var opt = document.createElement('option');

				opt.text = newSel.options[i].text;
				opt.value = newSel.options[i].value;

				oldSel.add(opt, null);
			}
		});

	</script>
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