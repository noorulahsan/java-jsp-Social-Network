<%-- 
    Document   : exitgroupmember
    Created on : 16 Nov, 2017, 1:19:17 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String sesID=session.getAttribute("sesID").toString();
    String sesGN=session.getAttribute("sesGN").toString();
    query qq=new query();
    qq.removegroupmem(sesID, sesGN);
    response.sendRedirect("groups.jsp");
    %>
