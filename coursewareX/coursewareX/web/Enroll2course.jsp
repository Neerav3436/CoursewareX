<%-- 
    Document   : Enroll2course
    Created on : 25 Apr, 2015, 1:07:23 PM
    Author     : Jay Patel
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
            String user="";
            try
            {
            user = (String)session.getAttribute("user");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            String cid = request.getParameter("id");
            connect con = new connect();
            String date = "";
            Date dt = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
            date = sdf.format(dt);
            String isrt = "insert into selected_courses(e_date,paid,std_for,status,c_id) values('"+date+"','no','"+user+"','enrolled','"+cid+"')";
            int i = con.insrt(isrt);
            if(i>0)
            {
                response.sendRedirect("ViewCourseDetails.jsp?id="+cid);
            }
        %>
    </body>
</html>
