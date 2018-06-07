<%-- 
    Document   : ConactDao
    Created on : May 20, 2015, 2:17:39 AM
    Author     : krashhy
--%>

<%@page import="com.coursewareX.connect"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String email =request.getParameter("email");
            String phone =request.getParameter("phone");
            String sub =request.getParameter("sub");
            String msg= request.getParameter("msg");
            String date = "";
            connect con = new connect();
            Date dt = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
            date = sdf.format(dt);
            String qry = "insert into contact_us(name,email,phone,sub,msg,date)"
                                      + "values('"+name+"','"+email+"','"+phone+"','"+sub+"','"+msg+"','"+date+"')";
            int i = con.insrt(qry);
            if(i>0)
            {
                response.sendRedirect("contact.jsp");
            }
        %>
    </body>
</html>
