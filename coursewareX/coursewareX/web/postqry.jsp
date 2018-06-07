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

            String id = request.getParameter("id");

        %>
                   
    </head>


    <body>
         
        <% 
           connect con7= new connect();
            String subid, upby="", msg,title;
            subid = request.getParameter("sub");
            msg = request.getParameter("question");
            title = request.getParameter("title");
            if (session.getAttribute("usrnm") != null) {
                upby = (String) session.getAttribute("usrnm");
            } 
            else
            {
                upby = "";
            }
            
            try
            {
            String query= "insert into forums_rgstr(f_up_by,f_msg,sub_id,f_title) values('"+upby+"','"+msg+"','"+subid+"','"+title+"')";
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
