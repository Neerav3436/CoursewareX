<%-- 
    Document   : newquiz
    Created on : 02-Mar-2014, 01:18:10
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
    String username = "";
    String type = "";
    try
    {
        if(!(session.getAttribute("user").equals(null)))
        {
            username = (String)session.getAttribute("user");
            
        }
        else
        {
            username = "";
           
        }
    }
    catch(Exception e)
    {
     //    type = "";
     e.printStackTrace();
    }
            Date dt = new Date();
            String date="";
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
            date = sdf.format(dt);
        //String user = (String)session.getAttribute("user");
            String name= request.getParameter("title");
            String sub = request.getParameter("sub");
           // String time = request.getParameter("time");
             connect cn = new connect();
            String str = "insert into quiz(q_name,c_id,date,p_id) values('"+name+"','"+sub+"','"+date+"','"+username+"');";
           
            int i = cn.insrt(str);
            if(i==1)
            {
                System.out.println("records successfullt inserted");
                %>
                <jsp:forward page="AddQuiz.jsp"></jsp:forward>
                <%
            }
        %>
    </body>
</html>
