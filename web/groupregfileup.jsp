

<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
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
    query qq=new query();
    ServletFileUpload upload=new ServletFileUpload();
FileItemIterator iter=null;
String name=null;
String fle=null;
int id=qq.getlastgroupid();
String sesID=session.getAttribute("sesID").toString();
iter=upload.getItemIterator(request);
while(iter.hasNext())
{
    FileItemStream item=iter.next();
    String nam=item.getFieldName();
    InputStream stream=item.openStream();
    if(item.isFormField())
    {
        String str=Streams.asString(stream);
        if(nam.equals("post"))
        {
            name=str;
        }
    }
    else
       
        if(item.getName()!="")
        {
            File f=new File("C:\\Users\\noorulahsan\\Documents\\NetBeansProjects\\SN\\web\\groupicon\\"+id+item.getName().substring(item.getName().lastIndexOf(".")));
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

qq.groupcreation(sesID, name, fle);
response.sendRedirect("groups.jsp");
%>