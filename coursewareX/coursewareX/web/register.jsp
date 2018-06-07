<%-- 
    Document   : newjsp
    Created on : Feb 16, 2015, 12:52:48 AM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mode selection</title>
         <%@include file="links4temp.jsp" %>
    </head>
    <body link="white" alink="white" vlink="white">
         <%@include file="mainheader.jsp" %><%@include file="links4bsm.jsp" %>
        <header id="head" class="secondary">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <h1>Welcome to registration portal!!</h1>
                </div>
            </div>
        </div>
    </header>
        <br>
          <h1> Select your Registration mode </h1>
        
           <br>
           <label class="btn btn-large btn-primary"><a href="stureg.jsp"  >  Student Membership</a><br></label>
            
           <label class="btn btn-large btn-primary"><a href="proreg1.jsp"> Professional Membership</a></label>
       
            <br><br>
         <%@include file="mainfooter.jsp" %>
      <%@include file="script4temp.jsp" %>
      <%@include file="script4bsm.jsp" %>
    </body>
</html>
