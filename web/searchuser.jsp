<%-- 
    Document   : searchuser
    Created on : 28 Oct, 2017, 8:16:22 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="jqry.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="">
        <table id="a">
            <tr><td><a href="home.jsp">Home</a></td></tr>
                        <%                            
                            query qq=new query();
                            String name=session.getAttribute("searchuser").toString();
                            String sesID=session.getAttribute("sesID").toString();
                            try
                            {
                                ResultSet rs=qq.searchuser(name,sesID);
                                while(rs.next())
                                {
                                    %>
                                    <tr><td><a href="viewfriendpro.jsp?fid=<%=rs.getString(1)%>"><img src="profilepicture/<%=rs.getString(3)%>" width="80" height="80"></a></td>
                            <td><%=rs.getString(2)%></td>
                        </tr>
                                    <%
                                }
                            }
                            catch(Exception e)
                            {
                                System.out.println(e);
                            }
                        %>
        </table>
        </form>
    </body>
</html>
