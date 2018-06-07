<%-- 
    Document   : pro
    Created on : Mar 6, 2015, 12:18:42 AM
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
                                <div class="muted pull-left">CoursewareX Professional registeration form</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <form class="form-horizontal" action="proregister" enctype="multipart/form-data" method="post" >
                                      <fieldset>
                                    
                                           <h4 style="margin-left: 5%;">Following fields are mandatory</h4>
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">First Name</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" name="fn" value="">
                                          </div>
                                        </div>
                                          
                                         <div class="control-group">
                                          <label class="control-label" for="focusedInput" style="">Last Name</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput"  type="text" name="ln" value="">
                                          </div>
                                        </div>
                                          
                                        <div class="control-group">
                                          <label class="control-label" for="optionsradio">Gender</label>
                                          <div class="controls">
                                          <span><input  type="radio" id="optionsradio"  checked="checked" name="gen"></span>
                                              Male
                                               <span><input  type="radio" id="optionsradio"  name="gen"></span>
                                              Female
                                           
                                          </div>
                                        </div>
                                        
                             <div class="control-group">
                                          <label class="control-label" for="date01">Date input</label>
                                          <div class="controls">
                                            <input type="text" class="input-xlarge datepicker" id="date01" name="dob" value="DD/MM/YYYY">
                                          
                                          </div>
                                        </div>
                                        
                                      
                                           <div class="control-group">
                                          <label class="control-label" for="focusedInput" style="">E-mail</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput"  type="text" name="em" value="">
                                          </div>
                                        </div>
                                        
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">Mobile no.</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" name="mn">
                                          </div>
                                        </div>
                                           
                                           <div class="control-group">
                                          <label class="control-label" for="focusedInput">Experience</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" name="ex">
                                          </div>
                                        </div>
                                             
                                            
                                           
                                           <div class="control-group">
                                          <label class="control-label" for="focusedInput">Address</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" name="ad">
                                          </div>
                                        </div>
                                        
                                         <div class="control-group">
                                          <label class="control-label" for="focusedInput">State</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" name="st">
                                          </div>
                                        </div>
                                        
                                         <div class="control-group">
                                          <label class="control-label" for="focusedInput">City</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" name="ct">
                                          </div>
                                        </div>
                                           
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
                                              <option>What is your pet name?</option>
                                              <option>What is your nick name?</option>
                                              <option>What was your first mobile number?</option>
                                              <option>what is your favourite movie?</option>
                                              <option>What is your favourite colour?</option>
                                            </select>
                                             </div><br>
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
