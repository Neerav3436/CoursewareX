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
         <header id="head" class="secondary">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <h1>Register yourself here!!</h1>
                </div>
            </div>
        </div>
    </header><br>
   
   <body id="login">
    <div class="container" >
        <div style="width:100%;">
        <form class="form-signin" action="newadminjsp.jsp" method="post" >
        <h2 class="form-signin-heading">Welcome to Student Registeration</h2>
        
        
        
        <input type="text" class="input-block-level" placeholder="First Name" required name="cn">
         <input type="text" class="input-block-level" placeholder="Last Name" required name="cat">
         <div class="control-group">
                                          <label class="control-label" for="optionsradio">Gender</label>
                                          <div class="controls">
                                          
                                              <span><input  type="radio" id="optionsradio"  checked="checked" name="gen"></span>
                                              Male
                                               <span><input  type="radio" id="optionsradio"  name="gen"></span>
                                              Female
                                           
                                          </div>
                                        </div>
          <input type="text" class="input-block-level" placeholder="DOB:YYYY/MM/DD" required name="pid">
          
          <div class="control-group">
                                          <label class="control-label" for="fileInput">Image</label>
                                          <div class="controls">
                                            <div class="uploader" id="uniform-fileInput"><input class="input-file uniform_on" name="img" id="fileInput" type="file"><span class="filename" >No file selected</span><span class="action" >Choose File</span></div>
                                          </div>
                                        </div>
          
        <input type="text" class="input-block-level" placeholder="E-mail address" required name="ts">
        <input type="text" class="input-block-level" placeholder="Mobile no." required name="du">
        <input type="text" class="input-block-level" placeholder="Address" required name="du">
        <input type="text" class="input-block-level" placeholder="Username" required name="sta">
        <input type="password" class="input-block-level" placeholder="Password" required name="cu"><br>
        <input type="password" class="input-block-level" placeholder=" Confirm Password" required name="cu"><br>
        
        <div class="control-group">
                                          <label class="control-label" >Security question</label>
                                          <div class="controls">
                                            <select  name="sq">
                                             
                                              <option><--Select from here--></option>
                                              <option>What's your pet name?</option>
                                              <option>What's your nick name?</option>
                                              <option>What was your first mobile number?</option>
                                              <option>what's your favourite movie?</option>
                                              <option>What's your favourite colour?</option>
                                            </select>
                                          </div>
                                        </div>
        
        <input type="text" class="input-block-level" placeholder="Security answer" required name="cu"><br>
     
        <label class="checkbox">
                                            <input type="checkbox" value="remember-me" style="margin-left: 5%;"> I accept your <a href="stutandc.jsp"> terms & conditions</a>                                                                          
                                        </label>
        
         <button class="btn btn-large btn-primary" type="submit">Proceed</button> <button class="btn btn-large btn-primary" type="reset" >Reset</button>
        </div>
      </form>
            <div>
    </div> <!-- /container -->

 
 
   <%@include file="script4bsa.jsp" %>
   <%@include file="script4temp.jsp" %>
    </body>
    </body>
</html>
