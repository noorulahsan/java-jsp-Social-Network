<%-- 
    Document   : rejectreq
    Created on : 29 Oct, 2017, 5:31:44 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    query qq=new query();
    String sesID=session.getAttribute("sesID").toString();
    String fid=request.getParameter("fid");
    qq.rejectreq(sesID, fid);
    response.sendRedirect("requesttemp.jsp");
%>
