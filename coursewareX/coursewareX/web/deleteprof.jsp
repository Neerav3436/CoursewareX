<%-- 
    Document   : Delete_professor
    Created on : 13 Dec, 2014, 3:50:47 AM
    Author     : Jay Patel
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
         connect con1 = new connect();
         String sid;
         sid= request.getParameter("id");
        
         try
         {
         String query = "Delete from professional_register where p_id ='"+sid+"'";
         int i =con1.stmt.executeUpdate(query);
       if(i>0)  
       {
           RequestDispatcher rd = request.getRequestDispatcher("ViewProfessors.jsp");
           rd.forward(request, response);
       }
       else
       {
           response.sendRedirect("ViewProessors.jsp?msg= error in creating user");
       }
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
     %>
    </body>
</html>
