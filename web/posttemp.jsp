<%@page import="java.sql.ResultSet"%>
<%@page import="connection.query"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
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
            <li class="active"><a href="hometemp.jsp">Post</a></li>
            <li><a href="friendstemp.jsp">Friends</a></li>
            <li><a href="requesttemp.jsp">Requests</a></li>
            <li><a href="searchtemp.jsp">Search</a></li>
            <li><a href="contacts.html">contacts</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</header>
<div id="content">
  <div class="inner">
    <div class="container_12">
      
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
          <div class="block">
            <div class="wrapper">
              <div class="grid_7 alpha">
  
      <div class="wrapper h-pad">
        <div class="grid_4 prefix_1">
          <h2>What's up?</h2>
       <form action="postfileup.jsp" enctype="multipart/form-data" method="post">
           <textarea id="post" name="post" placeholder="Message"></textarea>
                <input type="file" name="photo" />
              <input type="submit" class="button1" name="press"/>
        </form>
        </div>
      </div>
                  <br>
                <h2>Latest News &amp; Events</h2>
                <%
            query qq=new query();
            String sesID=session.getAttribute("sesID").toString();
            ResultSet rs=qq.getpost(sesID);
            while(rs.next())
            {
                               %>
                
                <div class="wrapper">
                    <figure class="img-indent"><img src="profilepicture/<%=rs.getString(7)%>" alt="" width="90" height="100"></figure>
                    <strong class="title"><%=rs.getString(5)%></strong><p><%=rs.getString(3)%><br><img src="posts/<%=rs.getString(4)%>"></p></div><br>          
                 <%
                     }
        %>
         </div>
              <div class="grid_4 prefix_1 omega">
                <h2>Fresh Links</h2>
                <ul class="list">
                  <li><a href="#">Praesent vestibulum molestie</a></li>
                  <li><a href="#">Aenean nonummy hendrerit</a></li>
                  <li><a href="#">Phasellus porta fusce suscipit varius</a></li>
                  <li><a href="#">Cum sociis penatibus et</a></li>
                  <li><a href="#">Magnis dis parturient montes</a></li>
                  <li><a href="#">Nascetur ridiculus mus duifusce</a></li>
                  <li><a href="#">Morbi nunc odio, gravida at, cursus nec</a></li>
                  <li><a href="#">Tristique orci ac sem duis</a></li>
                  <li><a href="#">Donec accumsan malesuada orci</a></li>
                  <li><a href="#">Praesent vestibulum molestie</a></li>
                  <li><a href="#">Aenean nonummy hendrerit</a></li>
                  <li><a href="#">Phasellus porta fusce suscipit varius</a></li>
                  <li><a href="#">Cum sociis penatibus et</a></li>
                  <li><a href="#">Magnis dis parturient montes</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="wrapper h-pad">
            <div class="grid_8 alpha">
              <div class="grid-inner">
                <h2>Special Proposition</h2>
                <div class="wrapper">
                  <figure class="img-indent"><img src="images/image3.jpg" alt=""></figure>
                  <strong class="title">Pellentesque sed dolor. Mauris accumsan nulla vel diam.</strong> Phasellus eros turpis, praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. </div>
              </div>
            </div>
            <div class="grid_4 omega">
              <h2>Newsletter</h2>
              <form id="subscribe-form" action="#">
                <fieldset>
                  <input type="text" value="Enter Your Email" onFocus="if(this.value=='Enter Your Email'){this.value=''}" onBlur="if(this.value==''){this.value='Enter Your Email'}">
                  <a href="hometemp.jsp" class="button1" onClick="document.getElementById('subscribe-form').submit()">Subscribe</a>
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