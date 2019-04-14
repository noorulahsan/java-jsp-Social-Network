package connection;


import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author noorulahsan
 */
public class combo {
    Connection con;
    public Connection cona()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/SN","root","");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return con;
    }
    
}
