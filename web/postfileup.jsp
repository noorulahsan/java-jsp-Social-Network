

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
    DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy/MM/dd");
            LocalDate ld=LocalDate.now();
            String date=dtf.format(ld);
ServletFileUpload upload=new ServletFileUpload();
FileItemIterator iter=null;
String post=null;
String fle=null;
int id=qq.getlastpostid()+1;
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
            post=str;
        }
    }
    else
       
        if(item.getName()!="")
        {
            File f=new File("C:\\Users\\noorulahsan\\Documents\\NetBeansProjects\\SN\\web\\posts\\"+id+item.getName().substring(item.getName().lastIndexOf(".")));
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

qq.post(sesID, post,fle,date);
response.sendRedirect("posttemp.jsp");
%>