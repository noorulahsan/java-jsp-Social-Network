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
<link rel="stylesheet" href="css/camera.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/camera.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script>
jQuery(function () {
    jQuery('#camera_wrap_1').camera({
        height: '317px',
        loader: false,
        pagination: false,
        thumbnails: false
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
              <li class="active"><a href="hometemp.jsp">home</a></li>
            <li><a href="friendstemp.jsp">Friends</a></li>
            <li><a href="requesttemp.jsp">Requests</a></li>
            <li><a href="searchtemp.jsp">Search</a></li>
            <li><a href="contactstemp.jsp">contacts</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</header>
<div id="content">
  <div id="slider">
    <div class="container_12">
      <div class="grid_12">
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
          <div data-src="images/slide1.jpg">
            <div class="camera_caption fadeIn">
              <h2>Vision</h2>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
              <p><a href="posttemp.jsp" class="button">Posts</a></p>
            </div>
          </div>
          <div data-src="images/slide2.jpg">
            <div class="camera_caption fadeIn">
              <h2>Power</h2>
              Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat uis aute irure dolor reprehender.
              <p><a href="groups.jsp" class="button">Groups</a></p>
            </div>
          </div>
          <div data-src="images/slide3.jpg">
            <div class="camera_caption fadeIn">
              <h2>Development</h2>
              Voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat roident, sunt in culpa qui officia.
              <p><a href="posttemp.jsp" class="button">Posts</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="inner">
    <div class="container_12">
      <div class="wrapper">
        <div class="grid_12">
          <div class="block">
            <div class="info-block"> <a href="#" class="link">Click here</a> for more info about this free website template created by Template Monster. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. </div>
            <a href="logout.jsp" class="button">Logout</a></div>
        </div>
      </div>
        <%
            query qq=new query();
            String sesID=session.getAttribute("sesID").toString();
                 ResultSet rs=qq.viewhomeprofile(sesID);
                 while(rs.next())
                 {
                    %>                        
      <div class="wrapper">
        <div class="block">
          <div class="grid_8">
            <div class="grid-inner">
              <h2><%=rs.getString(1)%></h2>
              <div class="wrapper">
                  <figure class="img-indent"><a href="protemp.jsp"><img src="profilepicture/<%=rs.getString(2)%>" alt="" width="220" height="260"></a></figure>
                <%
                    }
                %>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </div>
              <p class="pad">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa.</p>
            </div>
          </div>
          <div class="grid_4">
            <h2>Quote of the day</h2>
            <div class="testimonial-block"> <em>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua enim ad minim veniam, quis nostrud.</em>
              <p><strong>— Patrick Pool, Romonson</strong></p>
            </div>
          </div>
        </div>
      </div>
      <div class="wrapper">
        <div class="grid_12">
          <h2 class="h-pad">Our Partners</h2>
          <ul class="clients-list">
            <li><a href="#"><img src="images/client1.png" alt=""></a></li>
            <li><a href="#"><img src="images/client2.png" alt=""></a></li>
            <li><a href="#"><img src="images/client3.png" alt=""></a></li>
            <li><a href="#"><img src="images/client4.png" alt=""></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<footer>
  <div class="container_12">
    <div class="wrapper">
        <div class="grid_8"> Noorul Ahsan &copy; 2017 | <a href="hometemp.jsp">Privacy Policy</a> |</div>
      <div class="grid_4">
        <div class="social"> My Social:<a href="#"><img src="images/facebook-icon.png" alt=""></a><a href="#"><img src="images/twitter-icon.png" alt=""></a> </div>
      </div>
    </div>
  </div>
</footer>
</body>
</html>