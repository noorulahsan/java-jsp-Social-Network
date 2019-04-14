<%@page import="java.sql.ResultSet"%>
<%@page import="connection.query"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Design Maniacs | Contact</title>
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
            <li><a href="requesttemp.jsp">requests</a></li>
            <li class="active"><a href="searchtemp.jsp">search</a></li>
            <li><a href="Report.jsp">contacts</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</header>
<div id="content">
  <div class="inner pad1">
    <div class="container_12">
      <div class="wrapper h-pad">
        <div class="grid_7">
            <%
           String sesid=session.getAttribute("sesID").toString();
            String fid=request.getParameter("fid");
            query qq=new query();
            ResultSet rs=qq.getproinfo(fid);
            while(rs.next())
            {
        %>
          <h2><%=rs.getString(2)%></h2>
          <div class="wrapper">
            <div class="grid_4 alpha">
                <img src="profilepicture/<%=rs.getString(7)%>" alt="" width="220" height="260">
            </div>
          </div>
        </div>
        <div class="grid_4 prefix_1">
          <h2>Info</h2>
          <form id="contact-form" action="#">
            <fieldset>
                    DOB<input type="date" name="date" value="<%=rs.getString(3)%>" disabled="disable">
                    Gender
                    <%if(rs.getString(4).equals("Male")){%>
              <label>
                  <input type="text" value="Male" disabled="disable">
              </label>
              <%}%><%if(rs.getString(4).equals("Female")){%>
              <label>
                  <input type="text" value="Female" disabled="disable">
              </label>
              <%}%>
              Phone
              <label>
                  <input type="text" value="<%=rs.getString(5)%>" disabled="disable">
              </label>
              Email
              <label>
                  <input type="text" value="<%=rs.getString(6)%>" disabled="disable">
              </label>
              <%
        }
        ResultSet rs1=qq.checkreqstat(sesid, fid);
        ResultSet rs2=qq.checkfstat(sesid, fid);
        ResultSet rs3=qq.checkincomingreq(sesid, fid);

if(rs2.next())
{
        %>
        <a href="unfriend.jsp?fid=<%=fid%>" class="button1">Unfriend</a>
        <%
            }
else if(rs3.next())
{
        %>
        <a href="acceptreq.jsp?fid=<%=fid%>" class="button1">Accept</a><a href="rejectreq.jsp?fid=<%=fid%>" class="button1">Decline</a>
        <%
}
else if(rs1.next())
{
    %>
    <a href="deleterequest.jsp?fid=<%=fid%>" class="button1">cancel request</a>
        <%
        }
else
{
            %>
            <a href="sendrequest.jsp?reqid=<%=fid%>" class="button1">send request</a>
            <%
                }
                %>
            </fieldset>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<footer>
  <div class="container_12">
    <div class="wrapper">
      <div class="grid_8"> Design Maniacs &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.templatemonster.com/" class="link">TemplateMonster.com</a> </div>
      <div class="grid_4">
        <div class="social"> My Social:<a href="#"><img src="images/facebook-icon.png" alt=""></a><a href="#"><img src="images/twitter-icon.png" alt=""></a> </div>
      </div>
    </div>
  </div>
</footer>
</body>
</html>