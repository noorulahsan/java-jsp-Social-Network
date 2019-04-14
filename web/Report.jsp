<%-- 
    Document   : Report
    Created on : 25 Oct, 2017, 2:09:42 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="jqry.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="" method="post">
        	<table>
        		<tr>
                            <td><textarea name="tex" id="tex"></textarea></td>
        		</tr>
        		<tr>
                            <td align="right"><input type="submit" value="Report" name="report" id="report"/></td>
        		</tr>
                                	</table>
        </form>
        <% 
            if(request.getParameter("report")!=null)
            {
            query qq=new query();
            String sesID=session.getAttribute("sesID").toString();
            String a=request.getParameter("tex");
            qq.report(sesID, a);
            response.sendRedirect("home.jsp");
            }
            %>
             </body>
</html>
