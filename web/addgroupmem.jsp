<%-- 
    Document   : addgroupmem
    Created on : 16 Nov, 2017, 12:53:03 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    query qq=new query();
    String fid=request.getParameter("fid");
    String sesGN=session.getAttribute("sesGN").toString();
    qq.addgroupmem(fid, sesGN);
    response.sendRedirect("managegroupmembers.jsp");
%>
