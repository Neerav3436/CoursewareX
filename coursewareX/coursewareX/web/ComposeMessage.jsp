<%-- 
    Document   : View_studentdata
    Created on : 13 Dec, 2014, 2:11:32 AM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     
        <%@include file="admin_link.jsp" %>

        <style type="text/css">
            .inputnew
            {

                height: 40px;
            }
        </style>
    </head>
    <body>

        <!-- Navigation -->
        <%@include file="admin_header.jsp" %>

        <div id="page-wrapper">

            <div class="container-fluid">

        <%
            String clg_id = "";
            clg_id = request.getParameter("id");

        %>
        <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>

        <sql:query var="students" dataSource="${databse}">
            select * from messages where msg_id = '<%=clg_id%>'
        </sql:query> 


        <div>


            <div class="container" style="margin-left: 30%; margin-top: 5%; width: 50%;">
                <div class="row well">
                      <form name="Notice" action="messageinsert.jsp" method="GET" onsubmit="return(validate())">
    <div class="col-lg-10">
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/e_courseware" user="root"/>

       <sql:query dataSource="${snapshot}" var="result">
    select * from login
       </sql:query>
    
        <table class="table-hover table">
        <tr>
            <td> To: </td>
            <td style="padding-left: 10px;">  
                <select name="sub" class="form-control">
            <c:forEach var="row" items="${result.rows}">
            <option value="${row.u_name}">
                <c:out value="${row.u_name}"/>
          </c:forEach>
             </option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                Subject:
            </td>
            <td>
                <input type="text" class="form-control"  name="subject" style="height: 40px;" />
            </td>
        </tr>
        <tr>
            <td> Message:</td>
            <td> <textarea name="m" size="80" class="form-control"> </textarea>
            </td>
        </tr>
 
        <tr>
            <td colspan="2">
                <input class="btn btn-info btn-large" type="submit" value ="submit" name="message" size="30" style="margin-left:90px;margin-top:20px"> </input>
           
            </td>
        </tr>
   
</table>
    </div>
</form>
                </div>
            
            </div>
        </div>
            </div>
        </div>
    </body>
</html>
