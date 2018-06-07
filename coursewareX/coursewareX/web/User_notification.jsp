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

 <sql:query var="country" dataSource="${databse}">
                select * from notification order by n_id desc
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
					<div class="col-md-6">
						<h3 class="section-title">Courses Selected</h3>
						
					     <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Notifications</h3>
            </div>
                    <div class="panel-body">
               
                 
                        <table class="table">
                            <tr>
                                <td>
                                    title
                                </td>
                                <td>
                                    date
                                </td>
                             
                            </tr>
                             <c:forEach items="${country.rows}" var="items">
                                 <tr>
                                     <td>
                                         ${items.title}
                                     </td>
                                     <td>
                                     
                                         ${items.date}
                                     
                                     </td>
                                     
                                     <td>
                            
                                     </td>
                                 </tr>
                              
                             
                         </c:forEach>
                            
                        </table> 
                       
                 
            </div>
          </div>
                                        
					</div>
					
				</div>
			</div>
         <%@include file="mainfooter.jsp" %>
      <%@include file="script4temp.jsp" %>
    </body>
</html>
