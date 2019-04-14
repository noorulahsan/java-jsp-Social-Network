<%-- 
    Document   : updateprofile
    Created on : 29 Oct, 2017, 11:56:02 AM
    Author     : noorulahsan
--%>

<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItemIterator"%>
<%@page import="connection.query"%>
<%@page import="org.apache.commons.fileupload.FileItemStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.fileupload.util.Streams"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%   

ServletFileUpload upload=new ServletFileUpload();
FileItemIterator iter=null;
String name=null;
String phone=null;
String email=null;
String fle=null;
query qq=new query();
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
        if(nam.equals("phone"))
        {
            phone=str;
        }
        if(nam.equals("email"))
        {
            email=str;
        }
            }
    else
    {
        if(item.getName()!="")
        {
            File f=new File("C:\\Users\\noorulahsan\\Documents\\NetBeansProjects\\SN\\web\\profilepicture\\"+item.getName().substring(item.getName().lastIndexOf("\\") + 1));
            fle=item.getName().substring(item.getName().lastIndexOf("\\") + 1);
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
 String type="user";  
 String id=session.getAttribute("sesID").toString();
   qq.updateprofile(id, name, phone, email);
   response.sendRedirect("protemp.jsp");
%>
