<%-- 
    Document   : removegroupmem
    Created on : 16 Nov, 2017, 12:50:12 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String fid=request.getParameter("fid");
    String sesGN=session.getAttribute("sesGN").toString();
    query qq=new query();
    qq.removegroupmem(fid, sesGN);
    response.sendRedirect("managegroupmembers.jsp");
    %>
