<%@page import="java.sql.ResultSet"%>
<%@page import="connection.query"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
            <li class="active"><a href="requesttemp.jsp">Group</a></li>
            <li><a href="searchtemp.jsp">search</a></li>
            <li><a href="contactstemp.jsp">contacts</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</header>
    <a href="groups.jsp" class="button">Back</a>
<div id="content">
  <div class="inner">
    <div class="container_12">
      <div class="wrapper">
        <div class="grid_12">
          <div class="wrapper">
            <div class="grid_8 alpha">
              <div class="grid-inner">
                  
                  <%
                      query qq=new query();
                      //String gno=session.getAttribute("sesGN").toString();
                      String gno=request.getParameter("gno");
                      %>
                <h2 class="h-pad h-indent"><%=qq.getgroupname(gno)%></h2>        
        	  <%                                
                session.setAttribute("sesGN", gno);
                ResultSet rs=qq.getgrouppost(gno);
                while(rs.next())
                {
            %>      		
               <div class="block">
                  <div class="post">
                    <div class="wrapper">
                      <div class="info">
                        <div class="wrapper">
                          <div class="date"> <span>may</span><strong>15</strong> </div>
                          <strong><%=rs.getString(1)%></strong>
                          </div>
                      </div>
                     </div>
                    <figure>
                        <a href="viewfriendprotemp.jsp?fid=<%=rs.getString(1)%>"><img src="profilepicture/<%=rs.getString(2)%>" alt="" width="50" height="50"></a>
                        <%=rs.getString(3)%><img src="grouppost/<%=rs.getString(4)%>">
                    </figure>
                       </div>
                </div>
                <%
                            }
                        %>
              </div>
            </div>
            <div class="grid_4 omega">
              
              <div class="block">
                <h2>Message</h2>
                <form id="search-form" action="grouppostfileup.jsp" enctype="multipart/form-data" method="post">
                  <fieldset>
                      <input type="text" placeholder="Type here" name="post">
                      <input type="file" name="photo">
                    <input type="submit" class="button1" value="Post">
                  </fieldset>
                </form>
              </div>
              <h2 class="h-pad">Members</h2>
              <ul class="news">
                  <%
                      ResultSet rs1=qq.viewgroupmembers(gno);
                      while(rs1.next())
                      {
                      %>
                <li>
                    <figure><img src="profilepicture/<%=rs1.getString(3)%>" width="50" height="50"></figure>
                    <strong><%=rs1.getString(2)%></strong><%=rs1.getString(4)%></li>
                <%
                    }
                    %>
              </ul>
              <%
                  String sesID=session.getAttribute("sesID").toString();
                  String role=qq.getgrouprole(sesID, gno);
                  if(role.equals("admin"))
                  {
                  %>
              <a href="managegroupmembers.jsp" class="button1">Details</a> </div>
              <%
                  }
else
{
              %>
              <a href="exitgroupmember.jsp" class="button1">Exit</a> </div> 
            <%
}
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