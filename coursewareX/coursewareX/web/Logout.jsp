<%-- 
    Document   : Logout
    Created on : Nov 1, 2014, 11:03:37 AM
    Author     : Jaykishan
--%>

<%@page import="com.coursewareX.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
         connect con = new connect();
        
         String user = "";
         try
         {
          user = (String)session.getAttribute("user");
          String delsactive = "delete from active_login where user_id = '"+user+"'";
          int i = con.insrt(delsactive);
          if(i>0)
          {
               session.invalidate();
               response.sendRedirect("login.jsp");
          }
         }
         catch(Exception e)
         {
          e.printStackTrace();
         }
     %>
    </body>
</html>
