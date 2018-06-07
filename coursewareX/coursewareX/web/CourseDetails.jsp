<%-- 
    Document   : contact
    Created on : Feb 14, 2015, 4:08:40 PM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <%@include file="links4temp.jsp" %>
    </head>
    <body>
        <%@include file="mainheader.jsp" %>

        <%
            String mid = request.getParameter("id");
        %>
        <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>

                 <sql:query var="selected" dataSource="${databse}">
                select * from material_master where m_id = '<%= mid%>'
            </sql:query> 
        
        <header id="head" class="secondary">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<h1>My Courses</h1>
				</div>
			</div>
		</div>
	</header>
        <div class="container">
				<div class="row">
					<div class="col-lg-10">
						<h3 class="section-title">Materials Details</h3>
						
						<div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> enrolled courses</h3>
                            </div>
                            <div class="panel-body">
                                <table class="table">
                                    <tr>
                                        
                                    </tr>
                                <c:forEach var="selct" items="${selected.rows}">
                                     <sql:query var="crs" dataSource="${databse}">
                select * from courseware where c_id = '${selct.c_id}'
            </sql:query> 
                <sql:query var="prs" dataSource="${databse}">
                select * from professional_register where p_id = '${selct.p_id}'
            </sql:query> 
                
                                    <tr>
                                        <td>
                                            NAme -
                                        </td>
                                        
                                        <td>
                                            ${selct.m_name}
                                          
                                        </td>
                                    </tr>    
                                        <tr>
                                        <td>
                                            For Course -
                                        </td>
                                        
                                        <td>
                                            <c:forEach var="crss" items="${crs.rows}">
                                            <label>
                                            ${crss.c_name}
                                            </label>
                                            </c:forEach>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Uploaded By -
                                        </td>
                                        
                                        <td>
                                            <c:forEach var="crss" items="${prs.rows}">
                                            <label>
                                            ${crss.f_name} ${crss.l_name}
                                            </label>
                                            </c:forEach>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Uploaded On -
                                        </td>
                                        
                                        <td>
                                            ${selct.date}
                                          
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                          Material type -
                                        </td>
                                        
                                        <td>
                                            ${selct.m_type}
                                          
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <a href="" class="btn btn-success">Download</a>
                                            <a href="Materials.jsp" class="btn btn-default">Back</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </table>
                                
                            </div>
                                                 
                                                </div>
                                        
					</div>
					
				</div>
            <hr />
            
          
			</div>
                <hr/>
         <%@include file="mainfooter.jsp" %>
      <%@include file="script4temp.jsp" %>
    </body>
</html>
