<%-- 
    Document   : changepass2
    Created on : 4 Dec, 2014, 12:09:34 PM
    Author     : Jay Patel
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
     String pass1,id;
     pass1= request.getParameter("password1");
     id= request.getParameter("propid");
out.print(id);
     Connection con;
    Statement stmt;
      try {
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull","root",null);
           stmt = con.createStatement();
          
                 String qry2 = "update login set password ='"+pass1+"' where u_name = '"+id+"'";
                 int i2 = stmt.executeUpdate(qry2);
                 if(i2>0)
                 {
                     response.sendRedirect("Changepass.jsp?msg=PasswordChanged");
                 }
           
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
       
     %>
    </body>
</html>
