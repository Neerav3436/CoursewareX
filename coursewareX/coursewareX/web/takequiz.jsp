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
      <table class="table table-hover">
          
  
      	<tr class="taketest">
            <td><label class="label-important label">No.</label></td>
            <td><label class="label-important label">Test Name</label></td>
            <td><label class="label-important label">Subject</label></td>
            <td><label class="label-important label">action</label></td>
        </tr>
        <%int i1 =1;%>
        <c:forEach var="qz" items="${result.rows}">
            <tr>
                <td><%=i1%></td>
                <td><c:out value="${qz.q_name}"/></td>
                <td>
                    <sql:query dataSource="${snapshot}" var="result">
                    select * from courseware where c_id = '${qz.c_id}'
                    </sql:query>
                    <c:forEach var="var1" items="${result.rows}">
                        ${var1.c_name}
                    </c:forEach>

                <%i1++;%>
                <td><a href="attend.jsp?id=${qz.q_id}" class="btn btn-primary">Start Test</a></td>
            </tr>
        </c:forEach>
        </table>
      
      
    </div>
     </body>
</html>
