<%-- 
    Document   : friends
    Created on : 25 Oct, 2017, 2:03:57 PM
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
        <form method="post" action="">
        	<table>
                    
<a href="home.jsp">Home</a>
                    <%
                       query qq=new query();
                       String sesID=session.getAttribute("sesID").toString();
                        ResultSet rs1=qq.viewfriends(sesID);
                        while(rs1.next())
                        {
                    %>
                    <tr><td><img src="profilepicture/<%=rs1.getString(3)%>" width="50" height="50"></td><td><%=rs1.getString(2)%></td><td><a href="unfriend.jsp?fid=<%=rs1.getString(1)%>">Unfriend</a></td></tr>	
                    <%
                        }
                    %>
        	</table>
        </form>
    </body>
</html>
