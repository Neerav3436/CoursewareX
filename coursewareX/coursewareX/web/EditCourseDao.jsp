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
         String mid="",name="", pid="",status="",duration="",details="";
         mid = request.getParameter("mid");
         name = request.getParameter("name");
         pid = request.getParameter("pid");
         status = request.getParameter("status");
         duration = request.getParameter("duration");
         details = request.getParameter("details");
         try
         {
         String query = "update courseware set "
                                    + "c_name = '"+name+"', "
                                    + "p_id = '"+pid+"', "
                                    + "duration = '"+duration+"', "
                                    + "status  = '"+status+"', "
                                    + "details = '"+details+"'," 
                 + "where m_id = '"+mid+"'";
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
