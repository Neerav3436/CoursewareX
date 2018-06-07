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
         String sid="",fname="", lname="",gender="",email="",mob="",usrnm="",password="";
         sid = request.getParameter("id");
         fname = request.getParameter("fname");
         lname = request.getParameter("lname");
         gender = request.getParameter("gender");
         email = request.getParameter("email");
         mob = request.getParameter("mob");
         usrnm  = request.getParameter("usrnm");
         password = request.getParameter("password");
         try
         {
         String query = "update student_register set "
                                    + "fname = '"+fname+"', "
                                    + "lname = '"+lname+"', "
                                    + "gender = '"+gender+"', "
                                    + "email  = '"+email+"', "
                                    + "mob = '"+mob+"', "
                                    + "u_name  = '"+usrnm+"', "
                                    + "password  = '"+password+"' "
                 + "where s_id = '"+sid+"'";
         int i =con1.insrt(query);
       if(i>0)  
       {
           RequestDispatcher rd = request.getRequestDispatcher("StudentViewDetails.jsp?id="+sid);
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
