<%-- 
    Document   : attend
    Created on : 02-Mar-2014, 23:47:00
    Author     : krashhy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="links4temp.jsp" %>
    </head>
    <body>
      <div>
          <%@include file="mainheader.jsp" %>
       </div>  
           
        <%
            String strv=request.getParameter("id");
        %>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/e_courseware" user="root"/>
        
              
           <div style="float:left; width:72%; padding:10px; margin-left:100px;">
               <h3 style="background-color: lightblue ; padding-left: 15px; border-style: outset">
                   
                   <sql:query dataSource="${snapshot}" var="result">
                select * from quiz where q_id= '<%=strv%>'
       </sql:query>
           <c:forEach var="nm" items="${result.rows}" >
               <c:out value="${nm.q_name}"/>
           </c:forEach>
          
          </h3>
      <hr />
      <form  name="frm1"  action="result_1.jsp">    
           <sql:query dataSource="${snapshot}" var="ques">
           select * from questions where c_id = '<%=strv%>'
       </sql:query>
           <sql:query dataSource="${snapshot}" var="totques">
           select count(*) as tot from questions where c_id = '<%=strv%>'
       </sql:query>
    <%int i1=1;%>
    <c:forEach var="que" items="${ques.rows}" >
        <p style="line-height:25px;"><%=i1%>.<c:out value="${que.ques}"/> <br/>
        <input type="radio" name="r<%=i1%>" value="4"/>
        A. ${que.op1} <br />
        <input type="radio" name="r<%=i1%>" value="3">
        B. ${que.op2} <br />
        <input type="radio" name="r<%=i1%>" value="2">
        C. ${que.op1}
        <input type="radio" name="r<%=i1%>" value="1">
        <input type="hidden" name="a<%=i1%>" value="${que.ans}">
        C. ${que.op4}
        
        <%i1++;%>
      </p>
    </c:forEach>
      
      <c:forEach var="que" items="${totques.rows}" >
        <input type="hidden" name="totques" value="${que.tot}">
          
      </c:forEach>
      <br />
      <br />
    	<input type="submit" name="submit" class="btn btn-large btn-info" value="Submit"/>
        <a  class="btn" href="takequiz.jsp">Back</a> 
	</form>
    </div>


    </body>
</html>
