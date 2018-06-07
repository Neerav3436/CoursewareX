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
            select * from courseware where c_id = '<%=clg_id%>'
        </sql:query> 


        <div>


            <div class="container" style="float: right;">
                <div class="well" style="margin-left: 250px; margin-right: 50px;">
                    <div class="row">
                        <h1 class="">Course Details</h1>
                    </div>
                    <form class="form-group" action="ProfessorEditDao.jsp" method="post">
                        <table class="table ">
                            <tr>
                                
                            </tr>
                             <c:forEach items="${students.rows}" var="datastd">
                                 <tr>
                                     <td>
                                          <label class="badge badge-info">Professor ID:</label>
                                    <label class="label label-info"><c:out value="${datastd.c_id}" /></label>
                                    <input type="hidden" value="${datastd.c_id}" name="mid" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Name</label>
                                           <input type="text" value="${datastd.c_name}" name="name" class="form-control" style="height: 30px;" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Professor</label>
                                           <input type="text" value="${datastd.p_id}" name="pid" class="form-control" style="height: 30px;" />
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Duration</label>
                                           <input type="text" value="${datastd.duration}" name="duration" class="form-control" style="height: 30px;" />
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Status</label>
                                           <input type="text" value="${datastd.mob}" name="status" class="form-control" style="height: 30px;" />
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">details</label>
                                         <textarea name="details">
                                             ${datastd.adress}
                                         </textarea>
                                           
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         <input type="submit" value="Update Course" class="btn btn-lg btn-inverse" >
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
