<%-- 
    Document   : Login
    Created on : 25 Oct, 2017, 12:54:23 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
                <% 
            
            query qq=new query();
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String type=null;
            String sesID=null;
            int j=0;
            try
            {
               ResultSet rs=qq.gettype(username, password);
               while(rs.next())
               {
                   type=rs.getString(1);
                   j=1;
               }
               ResultSet rs1=qq.getid(username, password);
               while(rs1.next())
               {
                   sesID=rs1.getString(1);
                   session.setAttribute("sesID", sesID);
               }
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            if(j==1)
            {
            if(type.equals("admin"))
                   { 
                    response.sendRedirect("adminhome.jsp");
                   }
            if(type.equals("user"))
                   {
                    response.sendRedirect("hometemp.jsp");
                   }
            }
            else
            {
                %>
                <script>alert("Invalid User"); 
                </script>
<%
            }
            
        %>
    </body>
</html>