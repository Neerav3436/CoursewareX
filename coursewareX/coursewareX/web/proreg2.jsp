<%-- 
    Document   : proregisterform
    Created on : Feb 17, 2015, 12:59:55 AM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>professional registration</title><%@include file="links4bsa.jsp" %>
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
    </header>
         
                               
     
                          
                        
                                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">CoursewareX Advanced Professional registeration form</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <form class="form-horizontal">
                                      <fieldset>
                                        
                                         
                                        
                                         </fieldset>
                                         <fieldset>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">Username</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" name="un" >
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">Password</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="password" name="pwd">
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput"> Confirm Password</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="password">
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="select">Select Security Question</label>
                                          <div class="controls">
                                            <select id="select" name="sq">
                                              <option><--Select from here--></option>
                                              <option>What's your pet name?</option>
                                              <option>What's your nick name?</option>
                                              <option>What was your first mobile number?</option>
                                              <option>what's your favourite movie?</option>
                                              <option>What's your favourite colour?</option>
                                            </select>
                                             </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">Your security answer</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" name="sa">
                                            In case you forgot your password
                                          </div>
                                        </div>
                                        
                                        <label class="checkbox">
                                            <input type="checkbox" value="remember-me"> I accept your <a href="protandc.jsp"> terms & conditions</a>                                                                          
                                        </label>
                                        
                                        <div class="form-actions">
                                          <button type="submit" class="btn btn-primary">Submit & proceed</button>
                                          <button type="reset" class="btn">Reset fields</button>
                                        </div>
                                        
                                        
                                       
                                        

                                        
                                        
                                      </fieldset>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>        

               <%@include file="script4temp.jsp" %>
               <%@include file="script4bsa.jsp" %>
               
               <%@include file="mainfooter.jsp" %>          
                 
    </body>
</html>
