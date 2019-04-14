<%-- 
    Document   : fileupload
    Created on : 26 Oct, 2017, 11:46:39 AM
    Author     : noorulahsan
--%>

<%@page import="connection.query"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.apache.commons.fileupload.util.Streams"%>
<%@page import="org.apache.commons.fileupload.FileItemStream"%>
<%@page import="org.apache.commons.fileupload.FileItemIterator"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%   

ServletFileUpload upload=new ServletFileUpload();
FileItemIterator iter=null;
String name=null;
String dob=null;
String gender=null;
String phone=null;
String email=null;
String username=null;
String password=null;
String pass2=null;
String fle=null;
query qq=new query();
int id=qq.getlastid()+1;
iter=upload.getItemIterator(request);
while(iter.hasNext())
{
    FileItemStream item=iter.next();
    String nam=item.getFieldName();
    InputStream stream=item.openStream();
    if(item.isFormField())
    {
        String str=Streams.asString(stream);
        if(nam.equals("name"))
        {
            name=str;
        }
        if(nam.equals("date"))
        {
            dob=str;
        }
        if(nam.equals("gender"))
        {
            gender=str;
        }
        if(nam.equals("phone"))
        {
            phone=str;
        }
        if(nam.equals("email"))
        {
            email=str;
        }
        if(nam.equals("username"))
        {
            username=str;
        }
        if(nam.equals("pass1"))
        {
            password=str;
        }
        if(nam.equals("pass2"))
        {
            pass2=str;
        }
    }
    else
    {
        if(item.getName()!="")
        {
            File f=new File("C:\\Users\\noorulahsan\\Documents\\NetBeansProjects\\SN\\web\\profilepicture\\"+id+item.getName().substring(item.getName().lastIndexOf(".")));
            fle=id+item.getName().substring(item.getName().lastIndexOf("."));
            if(!f.exists())
            {
                f.createNewFile();
            }
            FileOutputStream fos=new FileOutputStream(f);
            int ch;
            while((ch=stream.read())!=-1)
            {
                fos.write(ch);
            }
        }
    }
} 
if(password.equals(pass2))
{
    ResultSet rs=qq.checkusername(username);
        if(rs.next())
        {
 %>
            <script>
                alert("Username Unavailable");
                            <%
                              //  response.sendRedirect("regheader.jsp");
                                %>
            </script>
            <%
        }
        else
        {
            String type="user";  
            qq.insertuser(id,name, dob, gender, phone, fle, email, username, password, type);
            response.sendRedirect("sam.jsp");
        }
}
else
{
    %>
    <script>
        alert("Password doesnt match");
        <%
                              //  response.sendRedirect("regheader.jsp");
                                %>
        </script>
        <%
}
%>
