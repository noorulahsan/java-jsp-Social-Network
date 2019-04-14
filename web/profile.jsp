<%-- 
    Document   : profile
    Created on : 25 Oct, 2017, 2:40:02 PM
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
        <%
            String id=session.getAttribute("sesID").toString();
            query qq=new query();
            ResultSet rs=qq.getproinfo(id);
            while(rs.next())
            {
        %>
        <form method="post"  enctype="multipart/form-data" action="updateprofile.jsp">
    <table cellpadding="5">
    	<tr><td><strong>Name </strong></td><td><input type="text" name="name" value="<%=rs.getString(2)%>"></td></tr> </p>
    <tr><td><strong>DOB</strong></td><td><input type="date" name="date" value="<%=rs.getString(3)%>" disabled="disable"></td></tr>
    <tr><td><strong>Gender </strong></td><td><em>Male
                <input type="radio" name="gender" value="Male" <%if(rs.getString(4).equals("Male")){%>checked="checked"<%}%> disabled="disable">
    </em><em>Female
        <input type="radio" name="gender" value="Female" <%if(rs.getString(4).equals("Female")){%>checked="checked"<%}%> disabled="disable">
    </em></td></tr>
    <tr><td><strong>Phone</strong></td><td><input type="text" id="phone" name="phone" value="<%=rs.getString(5)%>"></td></tr>
    <tr><td><strong>Email</strong></td><td><input type="text" id="email" name="email" value="<%=rs.getString(6)%>"></td></tr>
    <tr><td><strong>Username</strong></td><td><input type="text" id="username" name="username" value="<%=rs.getString(9)%>" disabled="disable"></td></tr>
    <tr><td></td><td align="center"><strong>
                <input type="submit" name="submit1" value="Submit"/>
    </strong></td></tr>
    </table>
    </form>
    <%
        }
    %>
    </body>
</html>
