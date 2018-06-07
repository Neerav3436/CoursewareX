<%-- 
    Document   : querydetails
    Created on : Nov 1, 2014, 12:18:48 PM
    Author     : Jaykishan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include  file="links4temp.jsp" %>
        <%
            
            String id = request.getParameter("id");
            
        %>
    </head>
    <body>
        <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/admin_register?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>
       
        <%@include file="mainheader.jsp" %>
        <sql:query var="forum" dataSource="${databse}">
                select * from forums_rgstr where f_id='<%=id%>'
            </sql:query> 
      <div style="margin-top: 50px;">
                <c:forEach items="${forum.rows}" var="questions">
                    
                     <div class="container">
                        <div class="row well" >
                            <div style="float: right;">
                                    <label class="label label-primary" style="font-size: 15px;"> ${questions.f_date}</label>
                            </div>
                            <div>
                                <h2 class="label label-primary" style="font-size: 20px;"> <c:out value="${questions.f_title}" ></c:out></a></h2>
                           
                            </div>    
                                <div class="well" style="font-size: 15px;">
                            <c:out value="${questions.f_msg}" ></c:out>    
                            </div>
                            
                            
                        </div>
                        
                    </div>
                 
                    </c:forEach>
          
      </div>
                <label class="label label-primary" style="font-size: 20px;">Answers</label>
                <hr/>
                
             <sql:query var="ans" dataSource="${databse}">
                select * from coment_dtls where f_id = '<%=id%>'
            </sql:query> 
                <div class="row-fluid" style="margin-top: 50px;">
                    <c:if test="${ans.rows==null}">
                    no match found
                    </c:if>
                        <c:if test="${ans.rows!=null}">
                <c:forEach items="${ans.rows}" var="questions">
                    
                     <div class="container">
                        <div class="row well">
                            <div class="row" style="margin-left: 50px;">
                                <c:if test="${questions.cmnt_by_uname != null}">
                                <label class="label label-success" style="font-size: 20px;">
                                    
                                    ${questions.cmnt_by_uname}</label>
                                </c:if>
                            </div>
                            <div style="float: right">
                            
                                <label class="badge badge-info">
                                    <c:out value="${questions.cmnt_date}" ></c:out>
                                </label>    
                            </div> 
                            
                            <div class="well" style="font-size: 30px;">
                            <c:out value="${questions.comment}" ></c:out>
                            </div>
                        </div>
                        
                    </div>
                 
                    </c:forEach>
                    </c:if>
      </div>
                <a href="postanswer.jsp?id=<%=id%>" class="btn btn-success">Post Answer</a>
    </body>
</html>
