<%-- 
    Document   : delquestion
    Created on : 21 Apr, 2015, 2:23:32 PM
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
            String qid = request.getParameter("qid");
            String id = request.getParameter("id");
            String del = "delete from questions where q_id = '"+qid+"'";
            connect con = new connect();
            int i = con.insrt(del);
            if(i>0)
            {  // use response.sendRedirect if it doesn't work
                %>
                <jsp:forward page="Addquestions.jsp ">
                    <jsp:param name="id" value="<%=id%>" />
                </jsp:forward>
        <%
            }
        %>
    </body>
</html>
