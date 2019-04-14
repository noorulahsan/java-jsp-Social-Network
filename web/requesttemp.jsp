<%@page import="java.sql.ResultSet"%>
<%@page import="connection.query"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Design Maniacs | Blog</title>
<meta charset="utf-8">
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
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
            <li class="active"><a href="requesttemp.jsp">requests</a></li>
            <li><a href="searchtemp.jsp">search</a></li>
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
      <div class="wrapper">
        <div class="grid_12">
          <div class="wrapper">
            <div class="grid_8 alpha">
              <div class="grid-inner">
                <h2 class="h-pad h-indent">Requests</h2>
                <%
                query qq=new query();
                String sesID=session.getAttribute("sesID").toString();
                ResultSet rs=qq.getrequest(sesID);
                while(rs.next())
                {
            %>
        	        		
                <div class="block">
                  <div class="post">
                    <div class="wrapper">
                      <div class="info">
                        <div class="wrapper">
                          <div class="date"> <span>may</span><strong>15</strong> </div>
                          <a href="#"><strong><%=rs.getString(2)%></strong></a><br>
                          Mode: <a href="#"><strong>Player</strong></a> </div>
                      </div>
                                          </div>
                    <figure>
                        <a href="viewfriendprotemp.jsp?fid=<%=rs.getString(1)%>"><img src="profilepicture/<%=rs.getString(3)%>" alt="" width="220" height="260"></a>
                    <figure>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>
                    <a href="acceptreq.jsp?fid=<%=rs.getString(1)%>" class="button1">Accept</a><a href="rejectreq.jsp?fid=<%=rs.getString(1)%>" class="button1">Decline</a> </div>
                </div>
                <%
                            }
                        %>
              </div>
            </div>
            <div class="grid_4 omega">
              <div class="block block-pad">
                <h2>Categories</h2>
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
                </ul>
              </div>
              <div class="block">
                <h2>Archives</h2>
                <form id="search-form" action="#">
                  <fieldset>
                    <input type="text" value="Search here">
                    <a href="searchtemp.jsp"><input type="image" src="images/form-button.gif"></a>
                  </fieldset>
                </form>
              </div>
              <h2 class="h-pad">Community News</h2>
              <ul class="news">
                <li>
                  <figure><img src="images/blog-img4.jpg" alt=""></figure>
                  <strong>Lorem ipsum dolor </strong> <a href="#"> Sit amet, consectetur adipisicing elit sed.</a> </li>
                <li>
                  <figure><img src="images/blog-img5.jpg" alt=""></figure>
                  <strong>Lorem ipsum dolor </strong> <a href="#"> Sit amet, consectetur adipisicing elit sed.</a> </li>
                <li>
                  <figure><img src="images/blog-img6.jpg" alt=""></figure>
                  <strong>Lorem ipsum dolor </strong> <a href="#"> Sit amet, consectetur adipisicing elit sed.</a> </li>
              </ul>
              <a href="#" class="button1">Join the Conversation</a> </div>
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