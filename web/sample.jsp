<%-- 
    Document   : sample
    Created on : 13 Nov, 2017, 1:33:52 PM
    Author     : noorulahsan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="postfileup.jsp" enctype="multipart/form-data" method="post">
            <textarea id="post" name="post">Message</textarea>
                <input type="file" name="photo" />
              <input type="submit" class="button1" name="press"/>
        </form>
    </body>
</html>
