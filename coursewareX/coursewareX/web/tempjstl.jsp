<%-- 
    Document   : tempjstl
    Created on : Mar 14, 2015, 3:36:38 PM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root" />
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    </head>
    <body>
    <sql:query dataSource="${dataSource}" var="data" >
        select * from login
    </sql:query> 
        <select id="getdata">
            <option value="1">1</option>
            <option value="1">2</option>
            <option value="1">3</option>
    <c:forEach items="${data.rows}" var="datarow">
        <option value="${datarow.password}"> ${datarow.password}</option>
    </c:forEach>
        </select>
        <div id="getdta">
            
        </div>
        <script type="text/javascript">
            $('#getdata').change(function(){
                var name = $('#getdata').val();
                alert(name);
              var request = $.ajax({
                    url:"getdata.jsp",
                    type: "POST",
                    data:{"id":name}
                });
                request.done(function(msg){
                    
                     $('#getdta').html(msg);
                });
                
                
                
                
            });
        </script>
    </body>
</html>
