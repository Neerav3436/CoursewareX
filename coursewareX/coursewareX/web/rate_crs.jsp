<%-- 
    Document   : rate_crs
    Created on : 25 Apr, 2015, 2:32:54 PM
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
            String user = "";
            try
            {
            user = (String)session.getAttribute("user");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            String rate = request.getParameter("rate");
            String cid  = request.getParameter("cid");
            connect con = new connect();
            String insrt_qry = "insert into rate_master(c_id,ratings,user) values('"+cid+"','"+rate+"','"+user+"')";
            int i = con.insrt(insrt_qry);
        %>
    </body>
</html>
