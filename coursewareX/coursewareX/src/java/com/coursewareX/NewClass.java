package com.coursewareX;

import com.coursewareX.connect;
import java.sql.ResultSet;
import java.util.Calendar;
import java.util.Date;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author krashhy
 */
public class NewClass {
 public  void chkupdate()
 {
     connect cn = new connect();
     try
     {
         
     String qry = "select * active_login where userid = sid ";
         ResultSet rs = cn.getData(qry);
     while(rs.next())
     {
         String str = rs.getString(3);
          Calendar c1 = Calendar.getInstance();
          Date dd = new Date();
          c1.setTime(dd);
          c1.add(Calendar.MINUTE, -5);
         System.out.println(c1.getTime().toString());
         
     }
     }catch(Exception e)
     {
         
     }
 }
}
