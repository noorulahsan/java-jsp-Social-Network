<%-- 
    Document   : search
    Created on : 28 Oct, 2017, 9:50:01 PM
    Author     : noorulahsan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="">
           
        <input type="text" name="b">
        <input type="submit" name="search" id="search" value="Search">
        <%
            String name=request.getParameter("b");
            if(request.getParameter("search")!=null)
                            {
            session.setAttribute("searchuser", name);
            response.sendRedirect("searchuser.jsp");
                            }
        %>
        </form>
    </body>
</html>
