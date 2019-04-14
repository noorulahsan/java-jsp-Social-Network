<%-- 
    Document   : Requests
    Created on : 25 Oct, 2017, 1:50:15 PM
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
            <table cellpadding="4">
                <tr><td><a href="home.jsp">Home</a></td></tr>
            <%
                query qq=new query();
                String sesID=session.getAttribute("sesID").toString();
                ResultSet rs=qq.getrequest(sesID);
                while(rs.next())
                {
            %>
        	
        		<tr>
                            <td><a href="viewfriendpro.jsp?fid=<%=rs.getString(1)%>"><img src="profilepicture/<%=rs.getString(3)%>" width="100" height="100"></a></td><td><%=rs.getString(2)%></td><td><a href="acceptreq.jsp?fid=<%=rs.getString(1)%>">Accept</a></td><td><a href="rejectreq.jsp?fid=<%=rs.getString(1)%>">Decline</a></td>
        		</tr>
        	</table>
                        <%
                            }
                        %>
        </form>
    </body>
</html>
