

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
        
       
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    </body>
</html>
<%
    String title =request.getParameter("ntitle");
    String  message =request.getParameter("message");
    String date = "";
    java.util.Date dat = new java.util.Date();
    SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
    date = sdf.format(dat);
    try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull","root",null);
    Statement st=conn.createStatement();
    String sql="insert into notification(title,message,date) values('"+title+"','"+message+"','"+date+"')";    
    int i=st.executeUpdate(sql);
    if(i>0){
        response.sendRedirect("sturegjsp.jsp?msg=sucessfull");
    }
    else
    {
        response.sendRedirect("sturegjsp.jsp?msg=Faliure");
    }
    }
    
    catch(Exception e)
    {
        e.printStackTrace();
   
    }
    %>
  
    