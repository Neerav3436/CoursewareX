<%-- 
    Document   : createquiz
    Created on : 02-Mar-2014, 00:34:51
    Author     : krashhy
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
         <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/e_courseware" user="root"/>

       <sql:query dataSource="${snapshot}" var="result">
    select * from courseware
       </sql:query>
     <sql:query var="test" dataSource="${snapshot}">
            select * from quiz
        </sql:query>
       <div style="float:left; width:72%; border-radius:3px; margin-left:100px; margin-top: 100px ">
           <h3 style="margin-right: 100px;">Create test</h3><br />
      <form action="newquiz.jsp" method="post">
          <table cellpadding="10" class="table form-group">
        	<tr>
            	<td>	
                    <label>Subject :</label> 
                </td>
            	<td>
                <select name="sub" class="text_area form-control">
                <c:forEach var="row" items="${result.rows}">
            <option value="${row.c_id}">
                <c:out value="${row.c_name}"/>
          </c:forEach>
             </option>
                </select>
                
                </td>
                <td>
                    <a href="AddSubject.jsp" class="btn btn-success" >Add Subject</a>
                </td>
            </tr>
            <tr>
            	<td>Title : </td>
                <td><input type="text" class="text_area form-control" name="title" /></td>
            </tr>
            
            <tr>
            	<td>&nbsp;
                
                </td>
            	<td>
            	<input type="submit" value="Create" class="btn_my btn btn-success" />
                </td>
            </tr>
        </table>
      </form>
      
      <hr />
      
      <table class="table table-bordered">
      	<tr>
        	<td>No.</td>
            <td>Test Name</td>
            <td>Subject</td>
           
            <td>action</td>
        </tr>
        <tr>
        <% int i2=1;%>
            <c:forEach var="row" items="${test.rows}">
        
        <tr>
            <td><%=i2%></td>
            <td>   <c:out value="${row.q_name}"/></td>
            <td>
                
                   <sql:query dataSource="${snapshot}" var="result">
    select * from courseware where c_id = '${row.c_id}'
       </sql:query>
    <c:forEach var="var1" items="${result.rows}">
           ${var1.c_name}
       </c:forEach>
              
               
             <td><a href="Addquestions.jsp?id=${row.q_id}">Add Questions</a></td>
                <%i2++;%>
        </tr>
          </c:forEach>
        
      </table>
    </div>
    </body>
</html>
