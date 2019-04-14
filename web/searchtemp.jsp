<!DOCTYPE html>
<html lang="en">
<head>
<title>Design Maniacs | Clients</title>
<meta charset="utf-8">
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jcarousellite_1.0.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script>
$(document).ready(function () {
    $(".carousel").jCarouselLite({
        btnNext: ".next",
        btnPrev: ".prev",
        visible: 4
    });
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Lato:300italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:700' rel='stylesheet' type='text/css'>
<![endif]-->
</head>
<body>
<header>
  <div class="container_12">
    <div class="grid_12">
        <div class="wrapper"> <a href="hometemp.jsp" class="logo">design.maniacs</a>
        <nav>
          <ul class="menu">
            <li><a href="hometemp.jsp">home</a></li>
            <li><a href="friendstemp.jsp">friends</a></li>
            <li><a href="requesttemp.jsp">requests</a></li>
            <li class="active"><a href="searchtemp.jsp">search</a></li>
            <li><a href="contactstemp.jsp">contacts</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</header>
<div id="content">
  <div class="inner">
    <div class="container_12">
      <div class="wrapper"></div>
      <div class="wrapper">
        <div class="grid_12">
          <div class="block">
            <h2>Our Partners</h2>
            <a href="#" class="prev"></a> <a href="#" class="next"></a>
            <div class="carousel">
              <ul class="clients-list">
                <li><a href="#"><img src="images/client1.png" alt="" height="52" width="188"></a></li>
                <li><a href="#"><img src="images/client2.png" alt="" height="52" width="188"></a></li>
                <li><a href="#"><img src="images/client3.png" alt="" height="52" width="188"></a></li>
                <li><a href="#"><img src="images/client4.png" alt="" height="52" width="188"></a></li>
                <li><a href="#"><img src="images/client1.png" alt="" height="52" width="188"></a></li>
                <li><a href="#"><img src="images/client2.png" alt="" height="52" width="188"></a></li>
                <li><a href="#"><img src="images/client3.png" alt="" height="52" width="188"></a></li>
                <li><a href="#"><img src="images/client4.png" alt="" height="52" width="188"></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="wrapper">
        <div class="grid_12">
          <div class="wrapper h-pad">
            <div class="grid_8 alpha">
              <div class="grid-inner">
                <h2>Meet people?</h2>
                <div class="wrapper">
                  <figure class="img-indent"><img src="images/image3.jpg" alt=""></figure>
                  <strong class="title">Pellentesque sed dolor. Mauris accumsan nulla vel diam.</strong> Phasellus eros turpis, praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. </div>
              </div>
            </div>
            <div class="grid_4 omega">
              <h2>Search</h2>
              <form id="subscribe-form" action="#">
                <fieldset>
                    <input type="text" name="b">
                    <input class="button1" name="search" id="search" type="submit" value="Go">
                  <%
            String name=request.getParameter("b");
            if(request.getParameter("search")!=null)
                            {
            session.setAttribute("searchuser", name);
            response.sendRedirect("searchresultremp.jsp");
                            }
        %>
                </fieldset>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<footer>
  <div class="container_12">
    <div class="wrapper">
      <div class="grid_8"> Mascara &copy; 2017 | <a href="#">Privacy Policy</a> |</div>
      <div class="grid_4">
        <div class="social"> My Social:<a href="#"><img src="images/facebook-icon.png" alt=""></a><a href="#"><img src="images/twitter-icon.png" alt=""></a> </div>
      </div>
    </div>
  </div>
</footer>
</body>
</html>