package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Service 
{
  
    private static int count = 0;
    static Connection con;
    
    public static Connection getConnection() 
    {
        if (count == 0) 
        {
            try 
            {
                Class.forName("org.postgresql.Driver");
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/mcq", "postgres", "sql123");
            } 
            catch (ClassNotFoundException e) 
            {
                e.printStackTrace();
            } 
            catch (SQLException e) 
            {
                e.printStackTrace();
            }   
        }
    
        count++;
        return con;
    }
  
}



