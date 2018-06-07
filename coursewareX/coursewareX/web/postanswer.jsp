<%-- 
    Document   : postanswer
    Created on : Nov 1, 2014, 12:39:38 PM
    Author     : Jaykishan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

        <title>JSP Page</title>
        <%@include  file="links4temp.jsp" %>
          <%

            String id = request.getParameter("id");

        %>
    </head>
    <body>
       <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/admin_register?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>
       <%@include file="mainheader.jsp" %>
        
        <div class="container">
            <div class="well" style="margin-top: 20px;">
                <h3 class="success">Answers</h3>
                <form class="form-group" action="postanswer2.jsp">
                    <input type="hidden" name="id1" value="<%=id%>" />
                    <textarea class="form-control" name="answ">
                        
                    </textarea>
                    <input type="submit" class="btn btn-mini btn-info" value="POST" />
                    
                </form>
        </div>
        </div>
      
        
       
       
</body><!-- comment -->
</html>
