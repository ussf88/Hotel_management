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



    <script src="${pageContext.request.contextPath}/admistyle/js/Chart.js"></script>
    <!-- //chart -->
    <!--Calender-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admistyle/css/clndr.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/admistyle/js/underscore-min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/admistyle/js/moment-2.2.1.js" type="text/javascript"></script>
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
    svgfdffffffffffffffffffffffffffffffffffffffffffffffffffffff
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
                            <a href="Accueille_receptionniste" class="active"><i class="fa fa-home nav_icon"></i>Gestion
                                des clients</a>
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
                                    <span class="prfil-img"><img
                                            src="${pageContext.request.contextPath}/admistyle/images/a.png" alt="">
                                    </span>
                                    <div class="user-name">
                                        <p>${sessionScope.session_receptionniste.nom}
                                            ${sessionScope.session_receptionniste.prenom}</p>
                                        <span>Receptionniste</span>
                                    </div>
                                    <i class="fa fa-angle-down lnr"></i>
                                    <i class="fa fa-angle-up lnr"></i>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                            <ul class="dropdown-menu drp-mnu">

                                <li> <a href="compterecption"><i class="fa fa-user"></i> Profile</a> </li>

                                <li> <a href="#" onclick="document.getElementById('FormId').submit();"><i
                                            class="fa fa-sign-out"></i> Logout</a> </li>
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










                <c:if test="${sessionScope.messagelo!=null}">
                    <script> window.alert("${sessionScope.messagelo}")</script>
                </c:if>
                <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h4 class="modal-title w-100 font-weight-bold">Remplir les Formules</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body mx-1">
                                <form class="form-validate" method="post" action="gestion_clients">
                                    <div class="form-group container-add modalito">
                                        <label for="cin">CIN :</label>
                                        <input type="text" name="cin" placeholder="Entrer Un CIN" />
                                        <label for="nom"><b>Nom</b></label>
                                        <input type="text" placeholder="Entrer Un Nom" name="nom">

                                        <label for="prenom"><b>Prenom</b></label>
                                        <input type="text" placeholder="Entrer un Prenom" name="prenom">

                                        <label for="phone"><b>Telephone</b></label>
                                        <input type="tel" placeholder="Entrer N° telephone" name="phone" min="1">

                                        <label for="email"><b>Email</b></label>
                                        <input type="text" placeholder="Entrer EMAIL" name="email" min="1">
                                        <label for="mdp"><b>Mot de passe</b></label>
                                        <input type="text" placeholder="Entrer MOT DE PASSE" name="mdp" min="1">
                                        <label for="addresse"><b>Addresse</b></label>
                                        <input type="text" placeholder="Entrer  ADDRESSE" name="add" min="1">
                                        <input type="hidden" name="type" value="add" />
                                        <input type="submit" value="enregistrer" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal"
                        data-target="#modalLoginForm">Ajouter un Client</a>
                </div>

                <div class="card-body">
                    <div class="table-responsive">
                        <table style="width:100%" id="example" class="table table-bordered table-hover nowrap ">
                            <thead class="bg-primary">
                                <tr>
                                    <th scope="col" style="width:15%;color: black;">CIN</th>
                                    <th scope="col" style="width:15%;color: black;">Nom</th>
                                    <th scope="col" style="width:15%;color: black;">Prenom</th>
                                    <th scope="col" style="width:15%;color: black;">Telephone</th>
                                    <th scope="col" style="width:15%;color: black;">Email</th>
                                    <th scope="col" style="width:30%;color: black;">Adresse</th>
                                    <th scope="col" style="width:10%;color: black;">MOT DE PASSE</th>
                                    <th scope="col" style="width:10%;color: black;">Rservations</th>
                                    <th scope="col" style="width:30%;color: black;">parametre</th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${clients}" var="value" varStatus="i">
                                    <tr>
                                        <td>
                                            <c:out value="${value.cin}" />
                                        </td>
                                        <td>
                                            <c:out value="${value.nom}" />
                                        </td>
                                        <td>
                                            <c:out value="${value.prenom}" />
                                        </td>
                                        <td>
                                            <c:out value="${value.phone}" />
                                        </td>
                                        <td>
                                            <c:out value="${value.email}" />
                                        </td>
                                        <td>
                                            <c:out value="${value.addresse}" />
                                        </td>
                                        <td>
                                            <c:out value="${value.password}" />
                                        </td>
                                        <td><a href="gestion_reservations?cin=${value.cin}&type=true">Afficher
                                                Reservations</a></br>
                                            <div class="modal fade${i.count}" id="modaladdform${i.count}" tabindex="-1"
                                                role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content" style="color:black;">
                                                        <div class="modal-header text-center">
                                                            <h4 class="modal-title w-100 font-weight-bold"><b>Remplir
                                                                    les Formules</b></h4>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body mx-1">
                                                            <form method="post" action="Resultatrecep">
                                                                <div class="form-group container-add modalitosmall">
                                                                    <label for_debut="date"><b>date de
                                                                            reserve</b></label>
                                                                    <input type="date" id="date_debut" name="date_debut"
                                                                        min="<%= java.time.LocalDate.now()%>"
                                                                        onchange="document.getElementById('date_fin').min=this.value;"
                                                                        placeholder="yyyy-mm-dd">
                                                                    <br>
                                                                    <label for="date_fin"><b>date de reserve</b></label>
                                                                    <input type="date" id="date_fin" name="date_fin"
                                                                        min="<%= java.time.LocalDate.now()%>"
                                                                        placeholder="yyyy-mm-dd">
                                                                    <br>
                                                                    <input type="hidden" name="cin_client"
                                                                        value="<c:out value=" ${value.cin}" />" />

                                                                    <input type="submit" value="Rechercher">
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-center">
                                                <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal"
                                                    data-target="#modaladdform${i.count}">Ajouter une
                                                    Reservation</a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="test_cont" style="color:black">
                                                <div class="modal fade modalmodifier${i.count}" tabindex="-1"
                                                    role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header text-center">
                                                                <h4 class="modal-title w-100 font-weight-bold"
                                                                    style="color:black;">
                                                                    Remplir les Formules</h4>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body mx-1">
                                                                <form class="form-validate" method="post"
                                                                    action="gestion_clients">
                                                                    <div class="form-group container-add modalito">
                                                                        <label for="nom"><b>Nom</b></label>
                                                                        <input type="text" placeholder="Entrer Un Nom"
                                                                            name="nom" value="${value.nom}">

                                                                        <label for="prenom"><b>Prenom</b></label>
                                                                        <input type="text"
                                                                            placeholder="Entrer un Prenom" name="prenom"
                                                                            value="${value.prenom}">

                                                                        <label for="phone"><b>Telephone</b></label>
                                                                        <input type="tel"
                                                                            placeholder="Entrer N° telephone"
                                                                            name="phone" min="1" value="${value.phone}">

                                                                        <label for="email"><b>Email</b></label>
                                                                        <input type="text" placeholder="Entrer EMAIL"
                                                                            name="email" min="1" value="${value.email}">
                                                                        <label for="mdp"><b>Mot de passe</b></label>
                                                                        <input type="text"
                                                                            placeholder="Entrer MOT DE PASSE" name="mdp"
                                                                            min="1" value="${value.password}">
                                                                        <label for="addresse"><b>Addresse</b></label>
                                                                        <input type="text"
                                                                            placeholder="Entrer  ADDRESSE" name="addr"
                                                                            min="1" value="${value.addresse}">
                                                                        <input type="hidden" name="cin"
                                                                            value="<c:out value=" ${value.cin}" />" />
                                                                        <input type="hidden" name="type"
                                                                            value="change" />
                                                                        <div class="clearfix clearfix1">
                                                                            <button type="submit"
                                                                                class="signupbtn signupbtn1">Modifier</button>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-center">
                                                    <a href="" class="no" data-toggle="modal"
                                                        data-target=".modalmodifier${i.count}">Modifier</a>
                                                </div>

                                                <div class="modal fade modaldelete${i.count}" tabindex="-1"
                                                    role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header text-center">
                                                                <h4 class="modal-title w-100 font-weight-bold"
                                                                    style="color:black;">are
                                                                    you sure?</h4>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body mx-1">
                                                                <form class="deleteclass form-validate" method="post"
                                                                    action="gestion_clients">
                                                                    <button class="yes">Supprimer</button>
                                                                    <input type="hidden" name="type" value="remove" />
                                                                    <input type="hidden" name="cin"
                                                                        value="<c:out value=" ${value.cin}" />" />
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-center">
                                                    <a href="" class="yes" data-toggle="modal"
                                                        data-target=".modaldelete${i.count}">Supprimer</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
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
</body>
<script type="text/javascript" charset="utf8"
    src="${pageContext.request.contextPath}/DataTables/datatables.js"></script>
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