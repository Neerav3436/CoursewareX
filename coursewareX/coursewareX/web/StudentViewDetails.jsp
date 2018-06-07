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
            select * from student_register where s_id = '<%=clg_id%>'
        </sql:query> 


        <div>


            <div class="container" style="float: right;">
                <div class="well" style="margin-left: 250px; margin-right: 50px;">
                    <div class="row">
                        <h1 class="">Students Details</h1>
                    </div>
                    <form class="form-group" action="" method="post">
                        <table class="table ">
                            <tr>
                                
                            </tr>
                             <c:forEach items="${students.rows}" var="datastd">
                                 <tr>
                                     <td>
                                          <label class="badge badge-info">Students ID:</label>
                                    <label class="label label-info"><c:out value="${datastd.s_id}" /></label>
                                    <input type="hidden" value="${datastd.s_id}" name="id" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                   ${datastd.f_name}
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                           ${datastd.l_name}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                           ${datastd.email}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                           ${datastd.mob}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                          ${datastd.adress}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                           ${datastd.city}
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                           ${datastd.gender}
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                           ${datastd.dob}
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                           ${datastd.u_name}
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                           ${datastd.password}
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                           ${datastd.s_ques}
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                           ${datastd.s_ans}
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <a href="EditStudents.jsp?id=${datastd.s_id}" class="btn btn-success">Edit Students</a>
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
