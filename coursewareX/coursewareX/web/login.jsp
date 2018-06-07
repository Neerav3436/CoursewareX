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
        <title>Login</title>
       <%@include file="links4bsa.jsp" %>  <%@include file="links4temp.jsp" %> 
    </head>
    <body>
      
   <%@include file="mainheader.jsp" %>
       <body id="login">
    <div class="container">

      <form class="form-signin" action="loginjsp.jsp" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        
        <select name="usertype" >
            <option value="a">Admin</option>
            <option value="s">Student</option>
            <option value="p">Professional</option>
        </select><br><br>
        
        <input type="text" class="input-block-level" placeholder="Username" required name="username">
        <input type="password" class="input-block-level" placeholder="Password" required name="password">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
         <button class="btn btn-large btn-primary" type="submit">Sign in</button><br>
        or forgot password? <a href="forgotpass.jsp">click here!</a><br>
        new?<a href="register.jsp">register</a>
      </form>

    </div> <!-- /container -->

 <%@include file="mainfooter.jsp" %>
 
   <%@include file="script4bsa.jsp" %>
    <%@include file="script4temp.jsp" %>
    </body>
</html>
