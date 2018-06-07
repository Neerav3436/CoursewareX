/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.coursewareX;
import java.sql.*;
/**
 *
 * @author Jaykishan
 */
public class connect {
        Connection con;
      public  Statement stmt;
        ResultSet rs;
    public connect()
    {
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull","root",null);
        stmt = con.createStatement();
        }
        catch(Exception e)
        {
         e.printStackTrace();
        }
        
    }
    public int insrt(String str)
    {
            int i=-1;
        try
        {
         i= stmt.executeUpdate(str);
        return i;
        }
        catch(Exception e)
                {
                    e.printStackTrace();
                }
        return i;
    }
    public ResultSet getData(String str)
    {
           
        try
        {
         rs= stmt.executeQuery(str);
        return rs;
        }
        catch(Exception e)
                {
                    e.printStackTrace();
                }
        return rs;
    }
}
