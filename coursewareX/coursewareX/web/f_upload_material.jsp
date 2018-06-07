<%-- 
    Document   : f_upload_material
    Created on : 2 Jan, 2015, 11:37:41 PM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload</title>
        <%@include file="links4temp.jsp" %>
    </head>
    <body>
     <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>

     <%@include file="mainheader.jsp" %>
                 <sql:query var="subject" dataSource="${databse}">
                select * from courseware
            </sql:query>      
      
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                              <div class="panel panel-success" style="width: 50%;">
            <div class="panel-heading">
                <h3 class="panel-title">Upload Material <span class="glyphicon glyphicon-book"></span></h3>
            </div>
            <div class="panel-body">
                <form method="POST" action="upload" enctype="multipart/form-data" class="form-group" style="margin-left: 20px;">
                    <table class="table form-group">
                        <tr>
                            <td>
                                <label class="label label-primary form-control" style="font-size: 15px;">Add File</label><br />
                                <input type="file" name="file" id="file" class="btn btn-info" style="margin-top: 15px;" />
                                <%
                                 ServletContext context = pageContext.getServletContext();
                                 String filePath = "";
                                 filePath=context.getInitParameter("upload");
                                %>
                                <input type="hidden" name="destination" value="<%=filePath%>" />
                            </td> 
                        </tr>
                        <tr>
                            <td style="padding-top: 20px;">
                                <label class="label label-primary" style="font-size: 15px; ">File Name:</label><br/>
                                <input type="text" value="" name="filename" class="form-control input-medium" style="margin-top: 15px;"/>
                        
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-top: 20px;">
                                <label class="label label-primary" style="font-size: 15px;">Material Type</label><br/>
                                <select name="type" class="form-control" style="width: 250px; margin-top: 15px;">
                            <option >Assignment</option>
                            <option >E-books</option>
                            <option >Quiz Papers</option>
                            <option ></option>
                        </select>
                          </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="label label-primary" style="font-size: 15px;">Subject</label><br/>
                                <select name="subject" class="form-control" style="width: 250px; margin-top: 15px;">
                                    <option>select subject</option>
                                <c:forEach items="${subject.rows}" var="sub">
                                    <option value="${sub.c_id}">${sub.c_name}</option>
                                </c:forEach>
                        </select>
                          </td>
                        </tr>
                        <tr>
                            <td style="padding-top: 20px;">
                                <input type="submit" value="Upload" name="upload" id="upload" class="btn btn-info btn-lg" style="width: 250px;" />
                            </td>
                        </tr>
                    </table>    
        </form>
            </div>
          </div>
                        </div>
                    </div>
                </div> 
         
     
        
                 
                            <script type="text/javascript" src="js/bootstrap.js" ></script>
                            <script type="text/javascript" src="js/bootstrap.min.js"></script>
                            <%@include file="mainfooter.jsp" %>
    </body>
</html>

