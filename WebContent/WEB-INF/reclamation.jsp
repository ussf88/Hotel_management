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
                            <div id="colorlib-logo"><a href="index.html">HOTEL GROUPS</a></div>
                        </div>
                        <div class="col-xs-10 text-right menu-1">
                            <ul>
                                <c:if test="${sessionScope.session_user != null}">
                                    <li>
                                        <div class="dropdown">
                                            <i class="fas fa-user-circle dropbtn "
                                                style="border-radius: 25px; color:yellow; font-size:35px;"></i>
                                            <div class="dropdown-content">
                                                <a href="Accueille_client" style="  color:black;"><i
                                                        class="fas fa-cog"></i> Mon Compte</a>
                                                <a href="reservationuser?type=true"
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
                        <div id="flight" class="tab-pane fade in active">
                            <div class="gridit">
                                <div class="card" style="width: 28rem;" style="background-color:#FFDD00;">
                                    <ul class="list-group list-group-flush">
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
                                    </ul>
                                     <br> <br>
                                        <form action="Rate?id=${param.id}" method="post">
        <select class="form-control z-depth-1" name="type_reclamation">
            <option value="chambre">Chambre</option>
            <option value="service">Service</option>
            <option value="reservation">reservation</option>
        </select> <br>
        <textarea class="form-control z-depth-1" name="text" rows="15" cols="25">
        Ajouter une Reclamation
</textarea>
        <input type="hidden" name="type" value="reclamation" />
        <input class="btn btn-info btn-block" type="submit" value="enregistrer" />
    </form>
                                </div>
                                <div class="aside">
                                 <c:if test="${existe}">
        <c:set var="count" value="0" scope="page" />
        <c:forEach items="${reclamations}" var="r" varStatus="i">
        <div class="test">
                                    <form action="Rate?id_reclamation=${r.id_reclamation}&id=${param.id}" method="post" class="myform">
                <textarea class="form-control z-depth-1" name="text" cols="300" rows="10" disabled>${r.text}</textarea>
                <input type="hidden" name="type" value="change_reclamation" disabled />
                <input  type="submit" class="btn btn-light btn-block"" value="enregistrer" disabled />
                <button class="btn btn-info btn-block free mub mub1" type="button">modifier</button>
            </form>
            <form action="Rate?id_reclamation=${r.id_reclamation}&id=${param.id}" method="post">
                <input type="hidden" name="type" value="cancel_reclamation" />
                <input class="btn btn-danger btn-block mub mub2" type="submit" value="annuler" />
            </form>   
            </div>          
            </c:forEach>
    </c:if>
                                </div>
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
    <script type="text/javascript">
    var forms = document.querySelectorAll(".myform");
    for (var i = 0, len = forms.length; i < len; i++) {
        var free = forms[i].querySelector(".free");
        free.addEventListener("click", function (e) {
            var form = e.target.parentNode;
            form.querySelector("textarea").style.border = "1px solid black";
            form.querySelector("textarea").style.bockground = "white";
            e.target.outerHTML = "";
            var myselect = document.createElement("SELECT");
            var option = document.createElement("option");
            option.text = "Chambre";
            myselect.add(option);
            option = document.createElement("option");
            option.text = "service";
            myselect.add(option);
            option = document.createElement("option");
            option.text = "reservation";
            myselect.add(option);
            myselect.setAttribute("name", "type_reclamation");
            myselect.classList.add("form-control");
            form.insertBefore(myselect, form.firstChild);
            for (var child = form.firstChild; child !== null; child = child.nextSibling) {
                child.disabled = false;

            }
        });
    }

</script>
</body>

</html>