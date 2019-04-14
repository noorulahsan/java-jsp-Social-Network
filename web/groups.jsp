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
            <div class="grid_4 omega">
              <h2 class="h-pad">Groups</h2>
              <ul class="news">
                  <%
                      query qq=new query();
                      String sesID=session.getAttribute("sesID").toString();
                      ResultSet rs=qq.viewmygroup(sesID);
                      while(rs.next())
                      {
                      %>
       
                    <figure><a href="viewmygroup.jsp?gno=<%=rs.getString(1)%>"><img src="groupicon/<%=rs.getString(3)%>" alt="" width="70" height="70"></a></figure>
                  <strong><%=rs.getString(2)%></strong>
              </ul>
              <br><br>
                      <%
                          }
                          %>
                          <a class="button1" value="Create Group" href="creategroup.jsp" style="color: white">Create Group</a> </div>
              <%
                  
              %>
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