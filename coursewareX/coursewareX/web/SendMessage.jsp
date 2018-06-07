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
        <sql:query var="country" dataSource="${databse}">
            select * from courseware where c_id='<%=str%>'
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

                           

                                <div style="margin-left: 40px; margin-top: 20px;">
        <center><h2 style="background-color: lightblue; border-style: outset; margin-left:   20px;">Message</h2></center>
<br />
<form name="Notice" action="messageinsert.jsp" method="GET" onsubmit="return(validate())">
    <div class="col-lg-10">
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/e_courseware" user="root"/>

       <sql:query dataSource="${snapshot}" var="result">
    select * from login
       </sql:query>
    
        <table class="table-hover table">
        <tr>
            <td> To: </td>
            <td style="padding-left: 10px;">  
                <select name="sub">
            <c:forEach var="row" items="${result.rows}">
            <option value="${row.u_name}">
                <c:out value="${row.u_name}"/>
          </c:forEach>
             </option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                Subject:
            </td>
            <td>
                <input type="text"  name="subject" style="height: 40px;" />
            </td>
        </tr>
        <tr>
            <td> Message:</td>
            <td> <textarea name="m" size="80"> </textarea>
            </td>
        </tr>
 
        <tr>
            <td colspan="2">
                <input class="btn btn-info btn-large" type="submit" value ="submit" name="message" size="30" style="margin-left:90px;margin-top:20px"> </input>
           
            </td>
        </tr>
   
</table>
    </div>
</form>



</div> 


                              
                                  

                        </div>
                    </div>
                </div>


                <%@include file="mainfooter.jsp" %>

            </div>
        


        <%@include file="script4temp.jsp" %><%@include file="script4bsa.jsp" %>
    </body>
</html>
