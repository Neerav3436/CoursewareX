

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

    <%@include file="links4temp.jsp" %>

</head>

<body>
                             <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>

                 <sql:query var="country" dataSource="${databse}">
                select * from courseware order by c_id desc
            </sql:query> 

    <div id="wrapper">

        <!-- Navigation -->
    <%@include file="mainheader.jsp" %>

        <div id="page-wrapper">

            <div class="container-fluid">

                <header id="head" class="secondary">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<h1>Courses</h1>
				</div>
			</div>
		</div>
	</header>
                

            

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
               
                 
                        <table class="table">
                            <tr>
                                
                            </tr>
                             <c:forEach items="${country.rows}" var="items">
                                 <tr>
                                     <td>
                                         ${items.c_name}
                                     </td>
                                     <td>
                                         ${items.c_category}
                                     </td>
                                     <td>
                                         ${items.duration}
                                         <sql:query var="crsr" dataSource="${databse}">
                select * from professional_register where p_id = '${items.p_id}'
            </sql:query> 
                <c:forEach var="crs" items="${crsr.rows}">
                    ${crs.l_name} ${crs.f_name}
                </c:forEach>
                                         
                                     </td>
                                     <td>
                                         ${items.status}
                                     </td>
                                     <td>
                                         <a href="ViewCourseDetails.jsp?id=${items.c_id}" style="float: right;" class="btn btn-danger"><span class="glyphicon glyphicon-edit"></span>Delete</a>
                                         
                                     </td>
                                 </tr>
                              
                             
                         </c:forEach>
                            
                        </table> 
                       
                 
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

