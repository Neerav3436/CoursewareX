<%-- 
    Document   : AddQues
    Created on : 02-Mar-2014, 23:00:26
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
        //String user = (String)session.getAttribute("user");
            String test_id= request.getParameter("id");
            String que = request.getParameter("q");
            String opt1 = request.getParameter("opt1");
            String opt2 = request.getParameter("opt2");
            String opt3 = request.getParameter("opt3");
            String opt4 = request.getParameter("opt4");
            String ans = request.getParameter("ans");
           // out.print(name);
            connect cn = new connect();
           String str = "insert into questions(c_id,ques,op1,op2,op3,op4,ans) values('"+test_id+"','"+que+"','"+opt1+"','"+opt2+"','"+opt3+"','"+opt4+"','"+ans+"');";
           
            int i = cn.insrt(str);
            if(i==1)
            {
                System.out.println("records successfullt inserted");
                %>
                <jsp:forward page="Addquestions.jsp" ></jsp:forward>
                <%
            }
        %>
       
    </body>
</html>
