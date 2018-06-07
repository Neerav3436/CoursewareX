

package com.coursewareX ;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 *
 * @author hp
 */
public class dbconn {
    
   Connection conn;
   Statement stmt;
   ResultSet rs;
public dbconn()
{
     try
   {
            Class.forName("com.mysql.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull","root",null);
            stmt = conn.createStatement();
   
   }catch(Exception e)
   {
       e.printStackTrace();
   }
}

public boolean exe(String s){
        boolean b=false;
        try
        {
        b=stmt.execute(s);
        return b;
        }
        catch(Exception e)
        {
           e.printStackTrace();
        }
       return b;
    }
   public ResultSet exeq(String s){
       try{
           rs=stmt.executeQuery(s);
           
       }catch(Exception e){
           
       }
       return rs;
      }
   public int exeu(String s){
       int i=0;
       try{
           i=stmt.executeUpdate(s);
       }catch(Exception e){
           e.printStackTrace();
       }
       return i;
       
   }
}