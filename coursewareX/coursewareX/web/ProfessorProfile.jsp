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
            select * from professional_register where u_name = '<%=username%>'
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
                                         Name
                                     </td>
                                     <td>
                                   ${datastd.f_name}
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         lname
                                     </td>
                                     <td>
                                           ${datastd.l_name}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         email
                                     </td>
                                     <td>
                                           ${datastd.email}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         Mobile Number
                                     </td>
                                     <td>
                                           ${datastd.mob}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         Address
                                     </td>
                                     <td>
                                          ${datastd.adress}
                                     </td>
                                     </tr>
                                 <tr>
                                     <td>
                                         City
                                     </td>
                                     <td>
                                           ${datastd.city}
                                     </td>
                                     
                                     
                                     
                                 </tr>
                                 <tr>
                                     <td>
                                         <a href="UpdateProfileprof.jsp?id=${datastd.p_id}" class="btn btn-success">Edit</a>
                                     </td>
                                 </tr>

                        </c:forEach>
                        </table>


                              
                                  

                        </div>
                    </div>
                </div>


                <%@include file="mainfooter.jsp" %>

            </div>
        


        <%@include file="script4temp.jsp" %><%@include file="script4bsa.jsp" %>
    </body>
</html>
