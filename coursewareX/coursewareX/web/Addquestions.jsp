<%-- 
    Document   : Addquestions
    Created on : 02-Mar-2014, 01:33:33
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
        <%
            String id = request.getParameter("id");
            
        %>
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/e_courseware" user="root"/>
        <sql:query dataSource="${snapshot}" var="result">
            select * from questions where c_id = '<%=id%>'
       </sql:query>
       <%@include file="mainheader.jsp" %>
        <div style="float:left; width:72%;border-radius:3px; margin-left: 100px; margin-top: 100px;">
      <h3>Add Question</h3>
     
      <hr>
      <br />
      <form action="AddQues.jsp" method="post">
          <table cellpadding="" class="table table-striped">          
          <tr>
            <td>Question</td>
            <td><input type="text" class="text_area form-control" name="q" required ="required"/></td>
          </tr>
          <tr>
            <td valign="top" >Option 1</td>
            <td>
            	<input type="text" class="text_area form-control" name="opt1" required ="required"/> 
            	<input type="radio" name="ans" value="1" />
            </td>
          </tr>
          <tr>
            <td valign="top" >Option 2</td>
            <td><input type="text" class="text_area form-control" name="opt2" required ="required"/>
            	<input type="radio" name="ans" value="2" />
            </td>
          </tr>
          <tr>
            <td valign="top" >Option 3</td>
            <td><input type="text" class="text_area form-control" name="opt3" required ="required"/>
            	<input type="radio" name="ans" value="3" />
            </td>
          </tr>
          <tr>
            <td valign="top" >Option 4</td>
            <td><input type="text" class="text_area form-control" name="opt4" required ="required"/>
            	<input type="radio" name="ans" value="4" />
            </td>
          </tr>
          <tr>
          	<td></td>
            <td><input type="submit" class="btn btn-info" name="submit" value="submit"/></td>
          <input type="hidden" value="<%=id%>" name="id">
          </tr>
        </table>
      </form>
      <hr />
      
      <table class="table table-striped" width="100%;">
      	<tr>
        	<td>No.</td>
            <td>Question</td>
            <td>Ans</td>
            <td>Action</td>
        </tr>
        <%int i2=1;%>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><%=i2%></td>
                
                <td><c:out value="${row.ques}"/> </td>
                <td><c:out value="${row.ans}" /> </td>
                <td>
                    <a href="delquestion.jsp?id=<%=id%>&qid= ${row.q_id}" class="btn btn-info">Delete</a>
                </td>
                <%i2++;%>
            </tr>
        </c:forEach>
      </table>
            
    </div>
    
    </body>
</html>
