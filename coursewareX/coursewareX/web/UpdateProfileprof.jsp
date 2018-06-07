<%-- 
    Document   : newj
    Created on : Mar 6, 2015, 12:51:14 AM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courseware</title>
        <%@include file="links4temp.jsp" %><%@include file="links4bsa.jsp" %>
    </head>
    <body><%@include file="mainheader.jsp" %>
        <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>
        <%
            String str = request.getParameter("id");
        %>
          <sql:query var="students" dataSource="${databse}">
            select * from professional_register where p_id = '<%=str%>'
        </sql:query> 


          <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header" >
                        <div class="muted pull-left">Send Message</div>
                        <div class="pull-right"><span class="badge badge-info"></span>

                        </div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="row-fluid padd-bottom">

                           

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
                                         <input type="submit" value="Update Profile" class="btn btn-lg btn-inverse" >
                                     </td>
                                 </tr>

                        </c:forEach>
                        </table>
                       
                    </form>


                              
                                  

                        </div>
                    </div>
                </div>


                <%@include file="mainfooter.jsp" %>

            </div>
        


        <%@include file="script4temp.jsp" %><%@include file="script4bsa.jsp" %>
    </body>
</html>
