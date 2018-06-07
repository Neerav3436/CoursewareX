<%-- 
    Document   : StudentEditDao
    Created on : May 20, 2015, 11:43:34 PM
    Author     : krashhy
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
         String pid="",fname="", lname="",address="",email="",experience="",usrnm="",password="";
         pid = request.getParameter("id");
         fname = request.getParameter("fname");
         lname = request.getParameter("lname");
         address = request.getParameter("adress");
         email = request.getParameter("email");
         experience = request.getParameter("experience");
         usrnm  = request.getParameter("usrnm");
         password = request.getParameter("password");
         try
         {
         String query = "update student_register set "
                                    + "f_name = '"+fname+"', "
                                    + "l_name = '"+lname+"', "
                                    + "adress = '"+address+"', "
                                    + "email  = '"+email+"', "
                                    + "experience = '"+experience+"', "
                                    + "u_name  = '"+usrnm+"', "
                                    + "password  = '"+password+"' "
                 + "where p_id = '"+pid+"'";
         int i =con1.insrt(query);
       if(i>0)  
       {
           RequestDispatcher rd = request.getRequestDispatcher("ViewDetails.jsp?id="+pid);
           rd.forward(request, response);
       }
       else
       {
        //   response.sendRedirect("cntent.jsp?msg= error in creating user");
       }
         }
         catch(Exception e)
         {
             
          out.print(e.getMessage());
                 e.printStackTrace();
         }
     %>
 
    </body>
</html>
