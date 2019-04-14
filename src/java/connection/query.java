
package connection;
import connection.combo;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author noorulahsan
 */
public class query {
    combo conne; 
    Connection con;
    Statement st;
    ResultSet rs;
    String str;

    /**
     *
     */
    public query()
    {
        try
        {
            conne=new combo(); 
            con=conne.cona();
            st=con.createStatement();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public void insertuser(int id,String name,String dob,String gender,String phone,String fle,String email,String username,String password,String type)
    {
     try
     {
         str="insert into login values('"+id+"','"+username+"','"+password+"','"+type+"')";
         st.executeUpdate(str);
         String str1="select *from login order by ID desc limit 1";
         rs=st.executeQuery(str1);
         String lid="";
         if(rs.next())
         {
             lid=rs.getString("ID");
         }
         str="insert into userdata(Name,DOB,Gender,Phone,Email,picture,Login) values('"+name+"','"+dob+"','"+gender+"','"+phone+"','"+email+"','"+fle+"','"+lid+"')";
         st.executeUpdate(str);
     }   
     catch(Exception e)
     {
         System.out.println(e);
     }
    }
    public ResultSet gettype(String username,String password)
    {
        try
        {
        str="select Type from login where Username='"+username+"' and Password='"+password+"'";
        rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public ResultSet getid(String username,String password)
    {
        try
        {
            str="select userdata.ID from login,userdata where login.Username='"+username+"' and login.Password='"+password+"' and login.ID=userdata.Login";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public ResultSet viewhomeprofile(String id)
    {
        try
        {
            str="select Name,Picture from userdata where ID='"+id+"'";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            
        }
        return rs;
    }
    public ResultSet searchuser(String name,String sesID)
    {
        try
        {
            str="select ID,Name,Picture from userdata where Name like '"+name+"%' and ID!='"+sesID+"'";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public ResultSet getproinfo(String id)
    {
        try
        {
            str="SELECT userdata.*,login.`Username` FROM userdata,login WHERE userdata.ID='"+id+"' AND login.ID=userdata.Login";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public void report(String id,String tex)
    {
        try
        {
        str="insert into complaints(UID,Report) values('"+id+"','"+tex+"')"; 
        st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public void updateprofile(String id,String name,String phone,String email)
    {
        try
        {
            str="update userdata set Name='"+name+"',Phone='"+phone+"',Email='"+email+"' where ID='"+id+"'";
            st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public void sendrequest(String sesid,String id)
    {
        try
        {
            str="insert into req(F,T) values('"+sesid+"','"+id+"')";
            st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public ResultSet getrequest(String sesID)
    {
        try
        {
            str="select userdata.ID,userdata.Name,userdata.picture from req,userdata where req.T='"+sesID+"' and req.F=userdata.ID";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public void acceptreq(String sesID,String reqid)
    {
        try
        {
            str="insert into friends(A,B) values('"+sesID+"','"+reqid+"')";
            String str1="delete from req where (F='"+sesID+"' and T='"+reqid+"') or(F='"+reqid+"' and T='"+sesID+"')";
            st.executeUpdate(str);
            st.executeUpdate(str1);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public void rejectreq(String sesID,String fid)
    {
        try
        {
          str="delete from req where (F='"+sesID+"' and T='"+fid+"') or(F='"+fid+"' and T='"+sesID+"')";  
          st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public ResultSet getpost(String sesID)
    {
        try
        {
            //str="select post.* from `post`,`friends`,`userdata` where `userdata`.`ID`=post.`UID` and ((post.`UID`=`friends`.`A` and `friends`.`B`='"+sesID+"') or (post.`UID`=`friends`.`B` and `friends`.`A`='"+sesID+"')) or post.`UID`='"+sesID+"' group by post.`ID`";
            str="SELECT distinct post.*,userdata.`Name`,userdata.`picture` FROM `post`,`friends`,`userdata` WHERE `userdata`.`ID`=post.`UID` AND ((post.`UID`=`friends`.`A` AND `friends`.`B`='"+sesID+"') OR (post.`UID`=`friends`.`B` AND `friends`.`A`='"+sesID+"')) OR (post.`UID`='"+sesID+"' AND post.`UID`=`userdata`.`ID`) order by post.ID desc";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public ResultSet getpostpic(String sesID)
    {
        
        try
        {
            Statement st1=con.createStatement();
            //str="select post.* from `post`,`friends`,`userdata` where `userdata`.`ID`=post.`UID` and ((post.`UID`=`friends`.`A` and `friends`.`B`='"+sesID+"') or (post.`UID`=`friends`.`B` and `friends`.`A`='"+sesID+"')) or post.`UID`='"+sesID+"' group by post.`ID`";
            str="SELECT distinct post.File FROM `post`,`friends`,`userdata` WHERE `userdata`.`ID`=post.`UID` AND ((post.`UID`=`friends`.`A` AND `friends`.`B`='"+sesID+"') OR (post.`UID`=`friends`.`B` AND `friends`.`A`='"+sesID+"')) OR (post.`UID`='"+sesID+"' AND post.`UID`=`userdata`.`ID`)";
            rs=st1.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public void post(String sesID,String post,String file,String date)
    {
        try
        {
            str="insert into post(UID,Post,File,Date) values('"+sesID+"','"+post+"','"+file+"','"+date+"')";
            st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public ResultSet viewfriends(String sesID)
    {
        try
        {
          //  str="SELECT DISTINCT userdata.ID,userdata.Name,userdata.picture FROM friends,userdata WHERE (friends.A='"+sesID+"' OR friends.B='"+sesID+"') AND (friends.A=userdata.ID OR friends.B=userdata.ID)";
            str="SELECT userdata.`ID`,userdata.`Name`,userdata.picture FROM `userdata`,`friends` WHERE (`friends`.`A`=`userdata`.`ID` AND `friends`.`B`='"+sesID+"') OR (`friends`.`B`=`userdata`.`ID` AND `friends`.`A`='"+sesID+"')";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public void unfriend(String sesID,String fid)
    {
        try
        {
            str="delete from friends where (A='"+sesID+"' and B='"+fid+"') or (A='"+fid+"' and B='"+sesID+"')";
            st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public ResultSet viewallusers()
    {
        try
        {
            str="select userdata.*,login.Username from userdata,login where login.ID=userdata.Login";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public ResultSet viewcomp()
    {
        try
        {
            str="select complaints.UID,complaints.Report,userdata.Name from userdata,complaints where complaints.UID=userdata.ID";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public ResultSet checkf(String sesID,String fid)
    {
        try
        {
            str="select *from friends where (A='"+sesID+"' and B='"+fid+"') or (A='"+fid+"' and B='"+sesID+"')";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public ResultSet checkreqstat(String sesid,String fid)
    {
        try
        {
         str="select *from req where (F='"+sesid+"' and T='"+fid+"') or (F='"+fid+"' and T='"+sesid+"')";  
         rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            
        }
        return rs;
    }
    public ResultSet checkfstat(String sesid,String fid)
    {
        try
        {
            Statement st1=con.createStatement();
         str="select *from friends where (A='"+sesid+"' and B='"+fid+"') or (A='"+fid+"' and B='"+sesid+"')";  
         rs=st1.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);  
        }
        return rs;
    }
    public ResultSet checkusername(String username)
    {
     try
     {
         str="select * from login where Username='"+username+"'";
         rs=st.executeQuery(str);
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
     return rs;
    }
    public ResultSet checkincomingreq(String sesid,String fid)
    {
        try
        {
            Statement st2=con.createStatement();
            str="select *from req where T='"+sesid+"' and F='"+fid+"'";
            rs=st2.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public void deletereq(String sesid,String fid)
    {
        try
        {
           str="delete from req where (F='"+sesid+"' and T='"+fid+"') or (F='"+fid+"' and T='"+sesid+"')";
           st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public int getlastid()
    {
        int id=0;
        try
        {
            str="select max(ID) from login";
            rs=st.executeQuery(str);
            while(rs.next())
            {
                id=Integer.parseInt(rs.getString(1));
                System.out.println(id);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }        
        return id;
    }
    public int getlastpostid()
    {
        int id=0;
        try
        {
            str="select max(ID) from post";
            rs=st.executeQuery(str);
            while(rs.next())
            {
                id=Integer.parseInt(rs.getString(1));
            }
        }
        catch(Exception e)
        {
            
        }
        return id;
        
    }
    public int getlastgroupid()
    {
        int id=0;
        try
        {
            str="select max(ID)from grouph";
            rs=st.executeQuery(str);
            while(rs.next())
            {
                id=Integer.parseInt(rs.getString(1));
                id=id+1;
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
//        if(id==0)
//        {
//            return id+1;
//        }
//        else
//        {
//        return id+1;
//        }
return id;
    }
    public int getlastgrouppostid()
    {
        int id=0;
        try
        {
            str="select max(ID)from grouppost";
            rs=st.executeQuery(str);
            while(rs.next())
            {
                id=Integer.parseInt(rs.getString(1));
                id=id+1;
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
//        if(id==0)
//        {
//            return id+1;
//        }
//        else
//        {
//        return id+1;
//        }
return id;
    }
    public void groupcreation(String sesid,String name,String image)
    {
        try
        {
            int a=0;
            String role="admin";
            str="insert into grouph(Name,Image) values('"+name+"','"+image+"')";
            st.executeUpdate(str);
            String str1="select max(ID) from grouph";
            rs=st.executeQuery(str1);
            while(rs.next())
            {
                a=Integer.parseInt(rs.getString(1));
            }
            str="insert into groupmem(GNO,Members,Role) values('"+a+"','"+sesid+"','"+role+"')";
            st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public void addgroupmem(String uid,String gno)
    {
        try
        {
            String role="member";
            str="insert into groupmem(GNO,Members,Role) values('"+gno+"','"+uid+"','"+role+"')";
            st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    //post in group
    public void grouppost(String sesid,String gno,String post,String file,String date)//reetdhtdhthtthr
    {
        try
        {
            str="insert into grouppost(GNO,UID,Post,File,Date) values('"+gno+"','"+sesid+"','"+post+"','"+file+"','"+date+"')";
            st.executeUpdate(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public ResultSet getgrouppost(String gno)
    {
        try
        {
            //str="SELECT DISTINCT `userdata`.`Name`,`userdata`.`picture`,`grouppost`.`Post`,`grouppost`.`File`,`grouppost`.`Date` FROM `userdata`,`groupmem`,`grouppost`,`grouph` WHERE `userdata`.`ID`=`grouppost`.`UID` AND `groupmem`.`Members`=`grouppost`.`UID` AND `grouph`.`ID`='"+gno+"'";
            str="SELECT DISTINCT `userdata`.`Name`,`userdata`.`picture`,`grouppost`.`Post`,`grouppost`.`File`,`grouppost`.`Date` FROM `userdata`,`groupmem`,`grouppost` WHERE `userdata`.`ID`=`grouppost`.`UID` AND `groupmem`.`Members`=`grouppost`.`UID` AND `grouppost`.`GNO`='"+gno+"' group by grouppost.ID";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
     return rs;
    }
    public ResultSet viewmygroup(String sesID)
    {
        try
        {
            str="SELECT DISTINCT `grouph`.* FROM `grouph`,`groupmem` WHERE (`groupmem`.`Members`='"+sesID+"' AND `groupmem`.`GNO`=`grouph`.`ID`)";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public ResultSet viewgroupmembers(String gno)
    {
        try
        {
            str="SELECT `userdata`.`ID`,`userdata`.`Name`,`userdata`.`picture`,`groupmem`.`Role` FROM `userdata`,`groupmem` WHERE `groupmem`.`GNO`='"+gno+"' AND `groupmem`.`Members`=`userdata`.`ID`";
            rs=st.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public String getgroupname(String gno)
    {
        String name="";
        try
        {
            
            str="select Name from grouph where ID='"+gno+"'";
            rs=st.executeQuery(str);
            while(rs.next())
            {
                name=rs.getString(1);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return name;
    }
    //Check group member status
    public ResultSet checkgroupmem(String uid,String gno)
    {
        
        try
        {
            Statement st1=con.createStatement();
           str="select * from `groupmem` where `Members`='"+uid+"' and `GNO`='"+gno+"'"; 
           rs=st1.executeQuery(str);
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return rs;
    }
    public void removegroupmem(String uid,String gno)
    {
        try
        {
            String str1="";
           str="delete from `groupmem` where `GNO`='"+gno+"' and `Members`='"+uid+"'";
           st.executeUpdate(str);
           str1="DELETE FROM `grouppost` WHERE `GNO`='"+gno+"' AND `UID`='"+uid+"'";
           st.executeUpdate(str1);
        }
        catch(Exception e)
        {
            
        }
    }
    public String getgrouprole(String uid,String gno)
    {
        String role="";
        try
        {
            str="SELECT Role FROM `groupmem` WHERE `GNO`='"+gno+"' AND `Members`='"+uid+"'";
            rs=st.executeQuery(str);
            while(rs.next())
            {
                role=rs.getString(1);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return role;
    }
    
}
