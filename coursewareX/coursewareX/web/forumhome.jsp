<%-- 
    Document   : forumhome
    Created on : Nov 1, 2014, 11:39:46 AM
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
        <%@include file="links4temp.jsp" %>
    </head>
    <body>
       
         <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>
         <%@include file="mainheader.jsp" %>
         <a href="forumhome.jsp"></a>
        
        <div class="container">
            <div class="well" style="margin-top: 20px;">
                <h3 class="success">Post a Query</h3>
                <form class="form-group" action="postqry.jsp">
                    <sql:query var="sub" dataSource="${databse}">   
                select * from courseware;
            </sql:query> 
                <select name="sub" class="form-control">
                <c:forEach items="${sub.rows}" var="subitems">
                    <option value="${subitems.c_id}">
                        <c:out value="${subitems.c_name}" />
                    </option>
                    </c:forEach>
                </select>
                    <input type="text" class="form-control" name="title" />
                    <input type="text" class="form-control" name="question" />
                    <input type="submit" class="btn btn-mini btn-info" value="POST" />
                    
                </form>
        </div>
        </div>
        
       
        
        <sql:query var="forum" dataSource="${databse}">
                select * from forums_rgstr order by f_id desc
            </sql:query> 
      <div style="margin-top: 50px;">
                <c:forEach items="${forum.rows}" var="questions">
                    
                     <div class="container">
                        <div class="row well">
                            <div>
                                <div style="float: right;">
                                    <label class="badge badge-success" style="text-align: right;">
                            ${questions.f_date}</label>    
                                </div>
                                <div style="float: left;">
                                    <sql:query dataSource="${databse}" var="subject">
                                        select * from courseware where c_id ='${questions.sub_id}'
                                    </sql:query>
                                    <c:forEach items="${subject.rows}" var="namesub">
                                        <label class="alert alert-warning" >${namesub.sub_course}</label>
                                    </c:forEach>
                                </div>
                            </div>
                            <div>
                            <span class="span4" >
                                <h2>  <a href="querydetails.jsp?id=${questions.f_id}"> <c:out value="${questions.f_title}"></c:out></a></h2>
                            </span>
                            </div>
                        </div>
                        
                    </div>
                 
                    </c:forEach>
      </div>
      </body>
</html>
