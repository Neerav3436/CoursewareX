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


            <div class="container" style="float: right;">
                <div class="well" style="margin-left: 250px; margin-right: 50px;">
                    <div class="row">
                        <h1 class="">Messages</h1>
                    </div>
                    <form class="form-group" action="CollegeEdit.jsp" method="post">
                        <table class="table ">
                            <tr>
                                
                            </tr>
                             <c:forEach items="${students.rows}" var="datastd">
                                 <tr>
                                     <td>
                                          <label class="badge badge-info">Professor ID:</label>
                                    <label class="label label-info"><c:out value="${datastd.p_id}" /></label>
                                    <input type="hidden" value="${datastd.p_id}" name="id" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         From
                                     </td>
                                     <td>
                                   ${datastd.msg_from}
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         Subject
                                     </td>
                                     <td>
                                           ${datastd.sub}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         date
                                     </td>
                                     <td>
                                           ${datastd.date}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         Message
                                     </td>
                                     <td>
                                           ${datastd.msg}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         <a href="iNBOX.jsp" class="btn btn-success">Inbox</a>
                                     </td>
                                 </tr>

                        </c:forEach>
                        </table>
                       
                    </form>
                </div>
            </div>
        </div>
            </div>
        </div>
    </body>
</html>
