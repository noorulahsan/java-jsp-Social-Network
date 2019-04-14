<%-- 
    Document   : viewfriendpro
    Created on : 2 Nov, 2017, 12:16:31 PM
    Author     : noorulahsan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String sesid=session.getAttribute("sesID").toString();
            String fid=request.getParameter("fid");
            query qq=new query();
            ResultSet rs=qq.getproinfo(fid);
            while(rs.next())
            {
        %>
        <form method="post" action="">
    <table cellpadding="5">
        <tr><td><a href="home.jsp">Home</a></td></tr>
    	<tr><td><strong>Name </strong></td><td><input type="text" name="name" value="<%=rs.getString(2)%>" disabled="disable"></td></tr> </p>
    <tr><td><strong>DOB</strong></td><td><input type="date" name="date" value="<%=rs.getString(3)%>" disabled="disable"></td></tr>
    <tr><td><strong>Gender </strong></td><td><em>Male
                <input type="radio" name="gender" value="Male" <%if(rs.getString(4).equals("Male")){%>checked="checked"<%}%> disabled="disable">
    </em><em>Female
        <input type="radio" name="gender" value="Female" <%if(rs.getString(4).equals("Female")){%>checked="checked"<%}%> disabled="disable">
    </em></td></tr>
    <tr><td><strong>Phone</strong></td><td><input type="text" id="phone" name="phone" value="<%=rs.getString(5)%>" disabled="disable"></td></tr>
    <tr><td><strong>Email</strong></td><td><input type="text" id="email" name="email" value="<%=rs.getString(6)%>" disabled="disable"></td></tr>
    <tr><td></td><td align="center"></td></tr>
    
    <%
        }
        ResultSet rs1=qq.checkreqstat(sesid, fid);
        ResultSet rs2=qq.checkfstat(sesid, fid);
        ResultSet rs3=qq.checkincomingreq(sesid, fid);

if(rs2.next())
{
        %>
        <tr><td>Friends</td><td><a href="unfriend.jsp?fid=<%=fid%>">Unfriend</a></td></tr>
        <%
            }
else if(rs3.next())
{
        %>
<tr><td><a href="acceptreq.jsp?fid=<%=fid%>">Accept</a></td><td><a href="rejectreq.jsp?fid=<%=fid%>">Decline</a></td></tr>
        <%
}
else if(rs1.next())
{
    %>
    <tr><td>Requested</td><td><a href="deleterequest.jsp?fid=<%=fid%>">Cancel</a></td></tr>
        <%
        }
else
{
            %>
            <tr><td><a href="sendrequest.jsp?reqid=<%=fid%>">Send Request</a></td></tr>
            <%
                }
                %>
        </table>
    </form>
    </body>
</html>
