<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title></title>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Meta tag Keywords -->

    <!-- css files -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- //css files -->

    <!-- web-fonts -->
    <link
        href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
        rel="stylesheet">
</head>

<body>
    <h1>
        <span>Espace</span> Employe
    </h1>

    <div class="sub-main-w3">
        <form action="Loginusers" method="POST">
            <img src="images/logo.png" alt="">
            <h2>LOGIN</h2>
            <div class="form-style-agile">
                <input id="email" name="email" type="text" placeholder="Email">
            </div>
            <div class="form-style-agile">
                <input id="password" name="password" type="password" placeholder="Password">
            </div>
            <div class="wthree-text">
                <ul>
                    <li>
                        <!-- switch -->
                        <a>${error}</a>
                        <!-- //checkout -->
                    </li>
                </ul>
            </div>


            <input type="submit" value="Log In">
        </form>
    </div>
    <div class="clear"></div>
    <!-- //content -->

    <!-- copyright -->
    <div class="footer">
        <p>&copy; 2020 HOTEL GROUPS
        </p>
    </div>







</body>

</html>