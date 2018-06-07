
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
    
    String npan=request.getParameter("an");
    String npem=request.getParameter("em");
    String npun=request.getParameter("un");
    String nppwd=request.getParameter("pwd");
    

    try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull","root",null);
    Statement st=conn.createStatement();
    String sql="insert into admin_record(a_name,email,u_name,password) values('"+npan+"','"+npem+"','"+npun+"','"+nppwd+"')";    
    int i=st.executeUpdate(sql);
    if(i>0){
        response.sendRedirect("newadmin.jsp?msg=sucessfull");
    }
    else
    {
        response.sendRedirect("newadmin.jsp?msg=Faliure");
    }
}
    
    catch(Exception e)
    {
     e.printStackTrace();              
    }
        
        %>