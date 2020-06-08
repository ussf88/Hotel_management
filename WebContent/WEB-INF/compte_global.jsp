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
<input type="hidden" name="deconnecterglobal" value="deconnecterglobal" />
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
							<a href="Modifier_adminlocal"><i class="fa fa-users nav_icon"></i>Gestion des admins locals</a>
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
										<p>${sessionScope.session_global.nom} ${sessionScope.session_global.prenom}</p>
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
				
				
				
				
				
				
	
	<form method="post" action="compteglobal">
<ul class="form-style-1">

<li><label>CIN </label><input id="cin" type="text" value="${sessionScope.session_global.cin}"  name="cin"  placeholder="CIN" disabled="true" /> </li>

    <li><label>Nom complete </label><input value="${sessionScope.session_global.nom}"  type="text" id="nom" name="nom" class="field-divided" placeholder="First" disabled="true"/> <input type="text" name="prenom" id="prenom" value="${sessionScope.session_global.prenom}" class="field-divided" placeholder="Last" disabled="true" /></li>
   
     <li>
        <label>numero téléphone </label>
        <input type="text" name="tele" id="tele" value="${sessionScope.session_global.telephone}" class="field-long" disabled="true" />
    </li>
     <li>
        <label>Email </label>
        <input type="email" id="email" name="email" value="${sessionScope.session_global.email}" class="field-long" disabled="true"/>
    </li>
     <li>
        <label>addresse </label>
        <input type="text" name="addresse" id="addresse" value="${sessionScope.session_global.addresse}" class="field-long" disabled="true" />
    </li>
     <li>
        <label>mot de passe </label>
        <input type="password" name="pass" id="pass" value="${sessionScope.session_global.mot_passe}" class="field-long" disabled="true" />
    </li>
    <li>
        <label>mot de passe </label>
        <input type="password" name="pass2" id="pass2" value="${sessionScope.session_global.mot_passe}" class="field-long" disabled="true" />
    </li>
    
    <li>
        <input type="hidden" name="enregistrer" id="enregistrer" value="enregistrer" class="form-style-1"  />

<input type="hidden" onclick="location.reload();" id="cancel"  value="cancel" class="form-style-1" />
    </li>

</form>

<li>
<input type="button" onclick="enable_input()" id="modi" value="MODIFIER" class="form-style-1" />

</li>
</ul>
<p>${erreur}</p>



    
          
    <!-- Script to disable input text area -->
    <script>  
        function enable_input() { 
            $("#tele").prop('disabled', false);
            $("#email").prop('disabled', false);
            $("#addresse").prop('disabled', false);
            $("#pass").prop('disabled', false);
            $("#pass2").prop('disabled', false);


            $("#cancel").prop('type', 'button'); 
             $("#enregistrer").prop('type', 'submit'); 
             $("#modi").prop('type', 'hidden'); 
        }

    </script>  
</body> 




<style type="text/css">
.form-style-1 {
    margin:10px auto;
    max-width: 400px;
    padding: 20px 12px 10px 20px;
    font: 13px "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style-1 li {
    padding: 0;
    display: block;
    list-style: none;
    margin: 10px 0 0 0;
}
.form-style-1 label{
    margin:0 0 3px 0;
    padding:0px;
    display:block;
    font-weight: bold;
}
.form-style-1 input[type=text], 
.form-style-1 input[type=date],
.form-style-1 input[type=datetime],
.form-style-1 input[type=number],
.form-style-1 input[type=search],
.form-style-1 input[type=time],
.form-style-1 input[type=url],
.form-style-1 input[type=email],
.form-style-1 input[type=password],
textarea, 
select{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    border:1px solid #BEBEBE;
    padding: 7px;
    margin:0px;
    -webkit-transition: all 0.30s ease-in-out;
    -moz-transition: all 0.30s ease-in-out;
    -ms-transition: all 0.30s ease-in-out;
    -o-transition: all 0.30s ease-in-out;
    outline: none;  
}
.form-style-1 input[type=text]:focus, 
.form-style-1 input[type=date]:focus,
.form-style-1 input[type=datetime]:focus,
.form-style-1 input[type=number]:focus,
.form-style-1 input[type=search]:focus,
.form-style-1 input[type=time]:focus,
.form-style-1 input[type=url]:focus,
.form-style-1 input[type=email]:focus,
.form-style-1 input[type=password]:focus,
.form-style-1 textarea:focus, 
.form-style-1 select:focus{
    -moz-box-shadow: 0 0 8px #88D5E9;
    -webkit-box-shadow: 0 0 8px #88D5E9;
    box-shadow: 0 0 8px #88D5E9;
    border: 1px solid #88D5E9;
}
.form-style-1 .field-divided{
    width: 49%;
}

.form-style-1 .field-long{
    width: 100%;
}
.form-style-1 .field-select{
    width: 100%;
}
.form-style-1 .field-textarea{
    height: 100px;
}
.form-style-1 input[type=submit],.form-style-1 button, .form-style-1 input[type=button]{
    background: #4B99AD;
    padding: 8px 15px 8px 15px;
    border: none;
    color: #fff;
}
.form-style-1 input[type=submit]:hover,.form-style-1 button, .form-style-1 input[type=button]:hover{
    background: #4691A4;
    box-shadow:none;
    -moz-box-shadow:none;
    -webkit-box-shadow:none;
}
.form-style-1 .required{
    color:red;
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
</html>
