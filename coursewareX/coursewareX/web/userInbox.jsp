<%-- 
    Document   : userInbox
    Created on : 18 Apr, 2015, 2:23:33 AM
    Author     : Jay Patel
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
        <%@include file="mainheader.jsp" %>
                  <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>

                 <sql:query var="selected" dataSource="${databse}">
                select count(*) As newmsg from messages where msg_to = '<%=username%>' and status = 'unread'
            </sql:query> 


        <div class="navbar navbar-inner block-header" >
            <div class="muted pull-left"></div>
            <div class="pull-right"> <span class="badge badge-info"></span>

            </div>
        </div>
                <div style="margin-left: 10%;">
                    <h1><label>INBOX</label></h1>
                </div>
    <marquee>
        hi !! You have <c:forEach items="${selected.rows}" var="newmg"><b>${newmg.newmsg}</b></c:forEach> new messages in your inbox.
    </marquee>

    <div class="container">
        <div class="row">
            <div class="col-lg-6">
              

                <sql:query dataSource="${databse}" var="result">
                    select * from messages where msg_to = '<%=username%>' order by status,msg_id desc   
                </sql:query>
                <div>
                    <table class="table table-hover table-striped">
                        <tr>
                            <td colspan="2">
                                <a href="SendMessage.jsp" class="btn btn-succes">Compose</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Date</label>
                            </td>
                            <td>
                                <label>Subject</label>
                            </td>
                        </tr>
                        <c:forEach var="str" items = "${result.rows}">
                            <tr>
                                <td>
                                    ${str.date}
                                </td>
                                <td>
                                    ${str.sub}
                                </td>
                                <td>
                                    <a href="messageretrieve.jsp?mid=${str.msg_id}" class="glyphicon glyphicon-inbox" >Read</a>

                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
