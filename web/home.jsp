<%-- 
    Document   : home
    Created on : 26 Oct, 2017, 11:11:32 AM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            query qq=new query();
            String sesID=session.getAttribute("sesID").toString();
                 ResultSet rs=qq.viewhomeprofile(sesID);
                 while(rs.next())
                 {
                    %>
                    <a href="profile.jsp"><img src="profilepicture/<%=rs.getString(2)%>" width="100" height="100" alt=""></a>
                    <p style="font-size: 20px"><%=rs.getString(1)%></p>
        
                <%
                    }
                %>
               <p><a href="search.jsp"style="font-size: 20px">Search</a></p>
                <p><a href="post.jsp" style="font-size: 20px">Posts</a>
    <p><a href="friendstemp.jsp"style="font-size: 20px">Friends</a></p>
    <p><a href="Requests.jsp"style="font-size: 20px">Requests</a></p>
    <p><a href="Report.jsp" style="font-size: 20px">Report</a></p>
    <p><a style="font-size: 20px" onclick="window.location.href='sam.jsp'">Logout</a></p>
               
    </body>
</html>