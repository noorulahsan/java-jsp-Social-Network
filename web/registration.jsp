<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItemIterator"%>
<%@page import="org.apache.commons.fileupload.FileItemStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.fileupload.util.Streams"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post"  enctype="multipart/form-data" action="fileupload.jsp">
    <table cellpadding="5">
    	<tr><td><strong>Name </strong></td><td><input type="text" name="name"></td></tr> </p>
    <tr><td><strong>DOB</strong></td><td><input type="date" name="date"></td></tr>
    <tr><td><strong>Gender </strong></td><td><em>Male
                <input type="radio" name="gender" value="Male">
    </em><em>Female
        <input type="radio" name="gender" value="Female">
    </em></td></tr>
    <tr><td><strong>Phone</strong></td><td><input type="text" id="phone" name="phone"></td></tr>
    <tr><td><strong>Email</strong></td><td><input type="text" id="email" name="email"></td></tr>
    <tr><td><strong>Username</strong></td><td><input type="text" id="username" name="username"></td></tr>
    <tr><td><strong>Password</strong></td><td><input type="password" id="pass1" name="pass1"></td></tr>
    <tr><td><strong>Confirm Password</strong></td><td><input type="password" id="pass2" name="pass2"></td></tr>
    <tr><td><strong>Profile Picture</strong></td><td><strong><input type="file" name="photo" /></strong></td></tr>
    <tr><td></td><td align="center"><strong>
                <input type="submit" name="submit1" value="Submit"/>
    </strong></td></tr>
    <tr><td><a href="sam.jsp">Back</a></td></tr>
    </table>
    </form>
    </body>
</html>
