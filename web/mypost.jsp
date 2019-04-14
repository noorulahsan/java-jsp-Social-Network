<%-- 
    Document   : mypost
    Created on : 29 Oct, 2017, 8:05:28 PM
    Author     : noorulahsan
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
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
        <textarea name="do"></textarea><br>
        <input type="submit" name="press" value="Post"/>
        </form>
        <%
            DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy/MM/dd");
            LocalDate ld=LocalDate.now();
            String date=dtf.format(ld);
            if(request.getParameter("press")!=null)
            {
                query qq=new query();
            String sesID=session.getAttribute("sesID").toString();
            String post=request.getParameter("do");
                qq.post(sesID, post,date);
                response.sendRedirect("post.jsp");
            }
        %>
        
    </body>
</html>
