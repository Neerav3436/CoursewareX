<%-- 
    Document   : ConactDao
    Created on : May 20, 2015, 2:17:39 AM
    Author     : krashhy
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
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
            
            String ncn= request.getParameter("cn");
            String ncat =request.getParameter("cat");
            String npid =request.getParameter("pid");
            String nts =request.getParameter("ts");
            String ndur= request.getParameter("dur");
            String nst= request.getParameter("st");
            String neva= request.getParameter("eva");
            String ndetails= request.getParameter("details");
            String date = "";
           connect con = new connect();
            Date dt = new Date();
            SimpleDateFormat ts = new SimpleDateFormat("YYYY-MM-DD");
            date = ts.format(dt);
            String qry = "insert into contact_us(cn,cat,pid,ts,dur,st,eva,details)"
                                      + "values('"+ncn+"','"+ncat+"','"+npid+"','"+date+"','"+ndur+"','"+nst+"','"+neva+"','"+ndetails+"')";
            int i = con.insrt(qry);
            if(i>0)
            {
                response.sendRedirect("addcourse.jsp");
            }
        %>
    </body>
</html>
