<%-- 
    Document   : unfriend
    Created on : 29 Oct, 2017, 8:47:56 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String sesID=session.getAttribute("sesID").toString();
    String fid=request.getParameter("fid");
    query qq=new query();
    qq.unfriend(sesID, fid);
    response.sendRedirect("friendstemp.jsp");
%>
