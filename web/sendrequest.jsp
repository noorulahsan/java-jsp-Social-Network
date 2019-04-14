<%-- 
    Document   : sendrequest
    Created on : 29 Oct, 2017, 4:32:23 PM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String id=request.getParameter("reqid");
    String sesid=session.getAttribute("sesID").toString();
    query qq=new query();
    qq.sendrequest(sesid, id);
    response.sendRedirect("searchtemp.jsp");
%>
