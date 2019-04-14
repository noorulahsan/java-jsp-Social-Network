<%-- 
    Document   : Complaints
    Created on : 25 Oct, 2017, 2:18:45 PM
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
        	<table cellpadding="3">
                    <tr><th><a href="adminhome.jsp">Home</a></th></tr>
        		<tr><th>User</th><th>Description</th></tr>
                        <%
                query qq=new query();
                ResultSet rs=qq.viewcomp();
                while(rs.next())
                {
            %>
        	
                    <tr><td><%=rs.getString(3)%></td><td><%=rs.getString(2)%></td></tr>
        	
                <%
                    }
                %>
        	</table>
        </form>
    </body>
</html>
