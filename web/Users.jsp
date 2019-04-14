<%-- 
    Document   : Users
    Created on : 25 Oct, 2017, 2:14:58 PM
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
        <form>
            <table cellspacing="10">
                <tr><th><a href="adminhome.jsp">Home</a></th></tr>
                    <tr><th></th><th>Name</th><th>Age</th><th>Gender</th><th>Phone</th><th>Email</th><th>Username</th></tr>
            <%
                query qq=new query();
                ResultSet rs=qq.viewallusers();
                while(rs.next())
                {
            %>
        	
                    <tr><td><img src="profilepicture/<%=rs.getString(7)%>" width="60" height="60"></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td><td><%=rs.getString(9)%></td></tr>
        	
                <%
                    }
                %>
                </table>
        </form>
    </body>
</html>
