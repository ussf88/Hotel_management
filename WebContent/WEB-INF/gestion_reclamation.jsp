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
							<a href="Accueille_local" ><i class="fa fa-home nav_icon"></i>Dashboard</a>
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
							<a href="gestion_reclamation" class="active"><i class="fa fa-file-text-o nav_icon"></i>Réclamation</a>
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
				
				
				<c:forEach items="${reclamations}" var="r" varStatus="i">		
				
				
				
				
			
<div class="messaging">
      <div class="inbox_msg">

        <div class="mesgs">
          <div class="msg_history">
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img class="imgs" src="images/user-profile.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>type de réclamation:<strong>${r.type}</strong><br>	de :<strong> ${r.nom_client} ${r.prenom_client} </strong> 
                  <br>CIN : <strong>${r.cin_client}</strong><br>
                 reservation de  <strong>${r.date_debut}</strong> jusqu'a<strong> ${r.date_debut}</strong><br>      
                   text:${r.text}</p>
              </div>
            </div>

            
           
          </div>

        </div>
      </div>
    
  </div>	
				
	
        
</c:forEach>
				  <style type="text/css">
     
.bg-funky   {
  background: #FF1744;
}   

.heading {
  color: #fff;
  margin: 30px;
  font-weight: 600;
}

.imgs {max-width: 100%;}
        .inbox_msg {
          border: 1px solid #c4c4c4;
          clear: both;
          overflow: hidden;
        }
        .top_spac{ margin: 20px 0 0;}


        .recent_heading {float: left; width:40%;}

        .headind_srch{ padding:10px 29px 10px 20px; overflow:hidden; border-bottom:1px solid #c4c4c4;}

        .recent_heading h4 {
          color: #05728f;
          font-size: 21px;
          margin: auto;
        }

        .chat_ib h5{ font-size:15px; color:#464646; margin:0 0 8px 0;}
        .chat_ib h5 span{ font-size:13px; float:right;}
        .chat_ib p{ font-size:14px; color:#989898; margin:auto}
        .chat_img {
          float: left;
          width: 11%;
        }
        .chat_ib {
          float: left;
          padding: 0 0 0 15px;
          width: 88%;
        }

        .chat_people{ overflow:hidden; clear:both;}
        .chat_list {
          border-bottom: 1px solid #c4c4c4;
          margin: 0;
          padding: 18px 16px 10px;
        }
        .inbox_chat { height: 550px; overflow-y: scroll;}

        .active_chat{ background:#ebebeb;}

        .incoming_msg_img {
          display: inline-block;
          width: 6%;
        }
        .received_msg {
          display: inline-block;
          padding: 0 0 0 10px;
          vertical-align: top;
          width: 92%;
         }
         .received_withd_msg p {
          background: #e4e8fb none repeat scroll 0 0;
          border-radius: 3px;
          color: #646464;
          font-size: 14px;
          margin: 0;
          padding: 5px 10px 5px 12px;
          width: 100%;
        }
        .time_date {
          color: #747474;
          display: block;
          font-size: 10px;
          margin: 3px 0 0;
        }
        .received_withd_msg { width: 70%;}
        .mesgs {
          float: left;
          padding: 40px;
        }

         .sent_msg p {
          background: #3F51B5 none repeat scroll 0 0;
          border-radius: 3px;
          font-size: 14px;
          margin: 0; color:#fff;
          padding: 5px 10px 5px 12px;
          width:100%;
        }
        .outgoing_msg{ overflow:hidden; margin:26px 0 26px;}
        .sent_msg {
      float: right;
          width: 70%;
      text-align: right;
        }
        .input_msg_write input {
          background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
          border: medium none;
          color: #4c4c4c;
          font-size: 15px;
          min-height: 48px;
          width: 100%;
        }

        .type_msg {border-top: 1px solid #c4c4c4;position: relative;}
        .msg_send_btn {
          background: #05728f none repeat scroll 0 0;
          border: medium none;
          border-radius: 50%;
          color: #fff;
          cursor: pointer;
          font-size: 17px;
          height: 33px;
          position: absolute;
          right: 0;
          top: 11px;
          width: 33px;
        }
        .messaging { background: #fff;}
        .msg_history {
          max-height: 516px;
          overflow-y: auto;
        }

.credit {
  margin-bottom: 20px;
  margin-top: 20px;
}

.credit a {
  color: #fff;
  font-weight: 300;
  letter-spacing: 2px;
  border-bottom: dotted 1px;
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
