<%-- 
    Document   : stupanel
    Created on : Mar 19, 2015, 4:16:16 PM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Panel</title>
        <%@include file="links4bsm.jsp" %>
         
    </head>
    <body >
    
        
        <div class="navbar navbar-inverse navbar-fixed-top" >
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
          <div class="nav-collapse collapse">
              <a class="brand" href="./index.html">coursewareX</a>
            <ul class="nav">
                
              <li class="">
                <a href="./index.html">Home</a>
              </li>
              
              <li class="">
                <a href="./index.html">Courseware</a>
              </li>
              
              <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Personal settings<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li><a href="#">Edit Profile</a></li>
                          <li><a href="#">Change Password</a></li>
                          
                          
                        </ul>
                      </li>
                      
               <li class="">
                <a href="./index.html">Help?</a>
              </li>
              
                
              
              
             
             
                      
                      
                      <li class="">
                <a href="./index.html">Logout</a>
              </li>
                     </ul> 
              
            
              <form class="navbar-search pull-left" action="" style="margin-left:30%;">
                      <input type="text" class="search-query span2" placeholder="Search">
                    </form>
             
           
             
          </div>
        </div>
      </div>
    </div>
        
<!--        <br>
        <header id="head" class="secondary" style="margin-top: ">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <h1>Welcome to Professional Panels</h1>
                </div>
            </div>
        </div>
    </header>-->
        
        
       <div class="row" style="margin-left:1%; ">
      <div class="span3 bs-docs-sidebar">
        <ul class="nav nav-list bs-docs-sidenav">
            <li><a href="#tables"><i class="icon-chevron-right"></i>Upload material</a></li>
          <li><a href="#forms"><i class="icon-chevron-right"></i> Start Chat</a></li>
          <li><a href="#buttons"><i class="icon-chevron-right"></i>Discuss</a></li>
          
          <li><a href="#icons"><i class="icon-chevron-right"></i> Assessment </a></li>
          <li><a href="#icons"><i class="icon-chevron-right"></i>  Messages</a></li>
          <li><a href="#icons"><i class="icon-chevron-right"></i> Saved People</a></li>
         
          
          <li><a href="#images"><i class="icon-chevron-right"></i>feedback</a></li>
          <li><a href="#icons"><i class="icon-chevron-right"></i> Logs</a></li>
          </ul>
      </div>
       </div>
      
         <%@include file="script4bsm.jsp" %>
   
       </body>
</html>

