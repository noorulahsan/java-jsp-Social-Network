<%-- 
    Document   : deleterequest
    Created on : 2 Nov, 2017, 2:02:32 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String sesID=session.getAttribute("sesID").toString();
    String fid=request.getParameter("fid");
    query qq=new query();
    qq.deletereq(sesID, fid);
    response.sendRedirect("searchtemp.jsp");
%>