<%-- 
    Document   : login
    Created on : Feb 14, 2015, 4:09:11 PM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin register</title>
       <%@include file="links4bsa.jsp" %>  
       <%@include file="links4temp.jsp" %>  
    </head>
    <body>
      
        <%@include file="mainheader.jsp" %>
       <body id="login">
    <div class="container">

        <form class="form-signin" action="CourseDao" method="post" enctype="multipart/form-data">
        <h2 class="form-signin-heading">Welcome to Course Registeration</h2>
        
        
        
        <input type="text" class="input-block-level" placeholder="Course Name" required name="cn">
         <input type="text" class="input-block-level" placeholder="Category" required name="cat">
          <input type="text" class="input-block-level" placeholder="Professional ID" required name="pid">
        <input type="text" class="input-block-level" placeholder="Timestamp" required name="ts">
         <input type="text" class="input-block-level" placeholder="duration" required name="dur">
         <input type="text" class="input-block-level" placeholder="status" required name="st">
         <input type="text" class="input-block-level" placeholder="evaluevation" required name="eva">
         <input type="text" class="input-block-level" placeholder="details" required name="details">
        
         <br>
        
         <div class="control-group">
                                          <label class="control-label" for="fileInput">Image</label>
                                          <div class="controls">
                                            <div class="uploader" id="uniform-fileInput"><input class="input-file uniform_on" name="file" id="fileInput" type="file"><span class="filename" >No file selected</span><span class="action" >Choose File</span></div>
                                          </div>
                                          <%
                                 ServletContext context = pageContext.getServletContext();
                                 String filePath = "";
                                 filePath=context.getInitParameter("upload");
                                %>
                                <input type="hidden" name="destination" value="<%=filePath%>" />
                                        </div>
        
         <button class="btn btn-large btn-primary" type="submit">Add</button> <button class="btn btn-large btn-primary" type="reset" >Reset</button>
        </div>
      </form>

    </div> <!-- /container -->

 
    <%@include file="mainfooter.jsp" %>
   <%@include file="script4bsa.jsp" %>
    
    </body>
</html>
