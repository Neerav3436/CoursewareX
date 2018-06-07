

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>



<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

    <%@include file="admin_link.jsp" %>

</head>

<body>
                             <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>

                 <sql:query var="country" dataSource="${databse}">
                select * from notification order by n_id desc
            </sql:query> 

    <div id="wrapper">

        <!-- Navigation -->
        <%@include file="admin_header.jsp" %>

        <div id="page-wrapper">

            <div class="container-fluid">

                
                

            

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> Area Chart</h3>
                            </div>
                            <div class="panel-body">
               
               
                <div>
             
               
           
        
                <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Students</h3>
            </div>
                    <div class="panel-body">
               
                 
                        <div class="container" style="width: 60%;">
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
      <div style="margin-top: 50px; ">
                <c:forEach items="${forum.rows}" var="questions">
                    
                    <div class="container" style="width: 80%;">
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
												
                       
                 
            </div>
          </div>
            </div>
        </div>
    </div>
                          
                    </div>
                </div>
                <!-- /.row -->

           
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>

