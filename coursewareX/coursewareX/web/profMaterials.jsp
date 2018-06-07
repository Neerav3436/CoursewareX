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
          <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>

                 <sql:query var="selected" dataSource="${databse}">
                select * from material_master where p_id = '<%=username%>'
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
                                        <td colspan="2">
                                            <a href="f_upload_material.jsp" class="btn btn-warning">Upload Material</a>
                                        </td>
                                    </tr>
                                <c:forEach var="selct" items="${selected.rows}">
                                    <tr>
                                        <td>
                                            <label>
                                            ${selct.m_name}
                                            </label>
                                        </td>
                                        <td>
                                            <label>
                                            ${selct.date}
                                            </label>
                                        </td>
                                        <td>
                                            <label>
                                            ${selct.title}
                                            </label>
                                        </td>
                                        <td>
                                             <%
                                 ServletContext context = pageContext.getServletContext();
                                 String filePath = "";
                                 filePath=context.getInitParameter("upload");
                                %>
                                            <a href="CourseDetails.jsp?id=${selct.m_id}" class="btn btn-success">View details</a>
                                            <a href="download.jsp?fnm=${selct.m_name}&path=<%=filePath%>" class="btn btn-success">Download</a>
                                            <a href="RemoveMAterial.jsp?id=${selct.m_id}" class="btn btn-danger">Remove</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </table>
                                
                            </div>
                                                 
                                                </div>
                                        
					</div>
					
				</div>
            <hr />
            
            <div class="row">
                   <sql:query var="vidlib" dataSource="${databse}">
                select * from video_library
            </sql:query> 
                
					<div class="col-lg-10">
						<h3 class="section-title">Video Materials</h3>
						
						<div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> enrolled courses</h3>
                            </div>
                            <div class="panel-body">
                                <table class="table">
                                    <tr>
                                        
                                    </tr>
                                <c:forEach var="selct" items="${selected.rows}">
                                    <tr>
                                        <td>
                                            <label>
                                            ${selct.c_id}
                                            </label>
                                        </td>
                                        <td>
                                            <label>
                                            ${selct.date}
                                            </label>
                                        </td>
                                        <td>
                                            <label>
                                            ${selct.name}
                                            </label>
                                        </td>
                                        <td>
                                            <a href="CouseDetails.jsp?id=${selct.s_id}" class="btn btn-success">View details</a>
                                            <a href="download.jsp" class="btn btn-success">Download</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </table>
                                
                            </div>
                                                 
                                                </div>
                                        
					</div>
					
				</div>
			</div>
                <hr/>
         <%@include file="mainfooter.jsp" %>
      <%@include file="script4temp.jsp" %>
    </body>
</html>
