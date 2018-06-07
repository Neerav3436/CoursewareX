<%-- 
    Document   : postqry
    Created on : Nov 4, 2014, 10:41:59 AM
    Author     : Jaykishan
--%>

<%@page import="com.coursewareX.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%

            String id = request.getParameter("id1");

        %>
                   
    </head>


    <body>
         
        <% 
            connect con7= new connect();
            String subid, upby="", msg,title;
            subid = request.getParameter("sub");
            msg = request.getParameter("answ");
            title = request.getParameter("title");
            if (session.getAttribute("user") != null) {
                upby = (String) session.getAttribute("user");
            } 
            else
            {
                upby = "";
            }
            
            try
            {
            String query= "insert into coment_dtls(f_id,comment,cmnt_by_uname) values('"+id+"','"+msg+"','"+upby+"')";
            int i = con7.stmt.executeUpdate(query);
            if(i>0)
            {
                
              response.sendRedirect("forumhome.jsp");               
                
            }
            else
            {
                
               response.sendRedirect("forumhome.jsp?msg= error in creating user");
                
            }
            }
            catch(Exception e)
                
            {
                
                 e.printStackTrace();
                
            }
     %>
            

      




    </body>
</html>
