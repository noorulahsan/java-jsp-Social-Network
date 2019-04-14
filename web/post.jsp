<%-- 
    Document   : post
    Created on : 29 Oct, 2017, 7:38:32 PM
    Author     : noorulahsan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr><td><a href="home.jsp">Home</a></td></tr>
            <tr><td><a href="mypost.jsp">Post</a></td></tr>
        <%
            query qq=new query();
            String sesID=session.getAttribute("sesID").toString();
            ResultSet rs=qq.getpost(sesID);
            while(rs.next())
            {
                %>
                
                    <tr><td><img src="profilepicture/<%=rs.getString(6)%>" width="50" height="50"></td><td><%=rs.getString(5)%></td></tr>
                    <tr><td></td><td style="font-size: 10px"><%=rs.getString(4)%></td></tr>
                    <tr><td></td><td><%=rs.getString(3)%></td></tr>
                
        <%
            }
        %>
        </table>
    </body>
</html>
