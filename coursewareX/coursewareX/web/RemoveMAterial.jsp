<%-- 
    Document   : RemoveMAterial
    Created on : May 18, 2015, 12:53:30 AM
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
           String m_id = request.getParameter("id");
           connect con = new connect();
           String qry = "delete from material_master where m_id = '"+m_id+"'";
           int i = con.insrt(qry);
           if(i>0)
           {
               response.sendRedirect("profMaterials.jsp");
           }
       %>
    </body>
</html>
