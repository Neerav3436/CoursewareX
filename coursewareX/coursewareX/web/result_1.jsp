<%-- 
    Document   : takequiz
    Created on : 02-Mar-2014, 23:35:05
    Author     : krashhy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%@include file="links4temp.jsp" %>
    </head>
    <body>
        <%@include file="mainheader.jsp" %>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/e_courseware" user="root"/>

       <sql:query dataSource="${snapshot}" var="result">
    select * from quiz
       </sql:query>
      <div style="float:left; width:72%; border-radius:3px; margin-left: 100px">
     
      <hr>
      <br />
      <h2 style="background-color: lightsteelblue; padding-left: 30px; border-style:outset"> Take Test </h2>
      
      


<%
//String tot = request.getParameter("tot"); 
    int marks = 0 ,tot2=0;
    String tot = request.getParameter("totques");
    try
    {
        tot2 = Integer.parseInt(tot);
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
    for (int i = 1; i <=tot2; i++) {
        try {
            int a = 0, q = 0;
            String str = request.getParameter("r" + i + "");
            //out.print(str);
            q = Integer.parseInt(str);
            String ans = request.getParameter("a" + i + "");
           // out.print(ans);
            a = Integer.parseInt(ans);

            if (a == q) {
                marks = marks + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    %>
    <h2>You have answered <%= marks%> of <%=tot2%> Correctly  </h2>
      <%
    out.print("Your score is " + marks);
%>
      
    </div>
     </body>
</html>







