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
    </head>
    <body>
      
   
       <body id="login">
    <div class="container">

      <form class="form-signin" action="newadminjsp.jsp" method="post">
        <h2 class="form-signin-heading">Welcome to Admin Registeration</h2>
        
        
        
        <input type="text" class="input-block-level" placeholder="Admin Name" required name="an">
         <input type="text" class="input-block-level" placeholder="Email" required name="em">
          <input type="text" class="input-block-level" placeholder="Admin Name" required name="un">
        <input type="password" class="input-block-level" placeholder="Password" required name="pwd">
        <input type="password" class="input-block-level" placeholder=" Retype Password" required name="password">
       
        <button class="btn btn-large btn-primary" type="submit">Add</button> <button class="btn btn-large btn-primary" type="reset" >Reset</button>
      </form>

    </div> <!-- /container -->

 
 
   <%@include file="script4bsa.jsp" %>
    
    </body>
</html>
