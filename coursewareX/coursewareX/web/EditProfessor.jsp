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
            select * from professional_register where p_id = '<%=clg_id%>'
        </sql:query> 


        <div>


            <div class="container" style="float: right;">
                <div class="well" style="margin-left: 250px; margin-right: 50px;">
                    <div class="row">
                        <h1 class="">Edit Professor Data</h1>
                    </div>
                    <form class="form-group" action="ProfessorEditDao.jsp" method="post">
                        <table class="table ">
                            <tr>
                                
                            </tr>
                             <c:forEach items="${students.rows}" var="datastd">
                                 <tr>
                                     <td>
                                          <label class="badge badge-info">Professor ID:</label>
                                    <label class="label label-info"><c:out value="${datastd.p_id}" /></label>
                                    <input type="hidden" value="${datastd.p_id}" name="pid" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">fname</label>
                                           <input type="text" value="${datastd.f_name}" name="fname" class="form-control" style="height: 30px;" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Lname</label>
                                           <input type="text" value="${datastd.l_name}" name="lname" class="form-control" style="height: 30px;" />
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Email</label>
                                           <input type="text" value="${datastd.email}" name="email" class="form-control" style="height: 30px;" />
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Mobile</label>
                                           <input type="text" value="${datastd.mob}" name="mob" class="form-control" style="height: 30px;" />
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Address</label>
                                           <input type="text" value="${datastd.adress}" name="address" class="form-control" style="height: 30px;" />
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Experience</label>
                                           <input type="text" value="${datastd.experience}" name="experience" class="form-control" style="height: 30px;" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">User Name</label>
                                           <input type="text" value="${datastd.u_name}" name="u_name" class="form-control" style="height: 30px;" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <label class="label label-info">Password</label>
                                           <input type="text" value="${datastd.password}" name="password" class="form-control" style="height: 30px;" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <input type="submit" value="Update Professor Data" class="btn btn-lg btn-inverse" >
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
