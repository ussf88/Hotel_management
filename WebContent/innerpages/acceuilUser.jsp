<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Acceuil</title>




	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Meta tag Keywords -->
	<link href="${pageContext.request.contextPath}/css/style1.css" rel="stylesheet" type="text/css" media="all" />
	<!--style_sheet-->
	<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,300,400,600,700" rel="stylesheet">
	<!--online_fonts-->
	<link href="//fonts.googleapis.com/css?family=Lato" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

	<!-- Animate.css -->

	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/bootstrap.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/fontawesome-free-5.11.2-web\css\all.css">
	<!-- Theme style  -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/tour/css/style.css">

	<!-- Modernizr JS -->
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<link href="${pageContext.request.contextPath}/admistyle/css/font-awesome.css" rel="stylesheet">
	</head> <body>
	<c:if test="${sessionScope.message!=null}">
<script> window.alert("${sessionScope.message}")</script> 
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
  <input class="logout" type="submit" value="Deconnexion" />
													</form>
												</a>
											</div>
										</div>
									</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
<div class="w3ls-main">
			<h2 style="color:white;">Vos iNFORMATIONS</h2>
			<div class="w3ls-form">
		<form action="Changeuser" method="POST">
		<div class="firstinput">
			<div class="input"><label for="nom"  style=" color:white;">Nom:</label><input type="text" id="nom" name="nom"
					value="<c:out value=" ${sessionScope.session_user.nom}" />"></div>
			<div class="input"><label for="prenom" style=" color:white;">Prenom:</label><input type="text" id="prenom"
					name="prenom" value="<c:out value=" ${sessionScope.session_user.prenom}" />"></div>
			<div class="input"><label for="cin" style=" color:white;">CIN:</label><input type="text" id="cin" name="cin"
					value="<c:out value=" ${sessionScope.session_user.cin}" />"></div>
			<div class="input"><label for="mdp" style=" color:white;">Mot de passe:</label><input type="text" id="mdp"
					name="mdp" value="<c:out value=" ${sessionScope.session_user.password}" />">
			</div>
		</div>
		<div class="secondinput">
			<div class="input"><label for="phone" style=" color:white;">Telephone</label><input type="text" id="phone"
					name="phone" value="<c:out value=" ${sessionScope.session_user.phone}" />">
			</div>
			<div class="input"><label for="email" style=" color:white;">Email</label><input type="text" id="email"
					name="email" value="<c:out value=" ${sessionScope.session_user.email}" />">
			</div>
			<div class="input"><label for="addr" style=" color:white;">Adresse</label><input type="text" id="addr" name="addr"
					value="<c:out value=" ${sessionScope.session_user.addresse}" />">
			</div>
		</div>
		<input type="hidden" id="type" name="type" value="change">
		<input type="submit" class="submit" value="changer mes informations">
	</form>
			</div>
		</div>
		<footer>&copy; 2020 HOTEL GROUP </footer>

		</body>
		

</html>