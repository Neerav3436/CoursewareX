<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
        <%@include file="admin_link.jsp" %>
        <script type="text/javascript">
            function  compare()
            {
                var pass, repass;
                pass = document.getElementById("password1").value
                repass = document.getElementById("password2").value
                if(repass != pass)
                    {
                        document.getElementById("errmsg").innerHTML = "password does not match"
                        return false;
                    }
                    return true;
                    
            }
        </script>
    </head>
    <body>
        
        <%
        String msg = "";
        if(request.getParameter("msg")!="null")
        {
        msg = request.getParameter("msg");
        }
        %>
        <div class="wrapper">
            <%@include file="admin_header.jsp" %>
        
          <div id="page-wrapper">

            <div class="container-fluid">

                
                
      
                <div class="col-lg-12" style="margin-left: 20%; margin-right: 20%;">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> Area Chart</h3>
                            </div>
                            <div class="panel-body">
                       
            
                <div class="row">
                    <label class="" style="width: 200px; margin-left: 150px; padding-left: 50px;"> 
                        <button class="btn btn-info">  Change Password</button>
                    </label>
                </div>
          <div class="col-lg-5 form-group">
              
                    <form method="post" id="passwordForm" class="form-group" action="changepass2.jsp" onsubmit="return compare();">
                        <input type="password" required="" class="form-control" name="password1" id="password1" placeholder="New Password" autocomplete="off">
                        <input type="password" required="" class="form-control" name="password2" id="password2" placeholder="Repeat Password" autocomplete="off">
                         <input type="submit" class="form-control btn btn-success btn-large" data-loading-text="Changing Password..." value="Change Password">
                         <input type="hidden" value="<%=username%>" name="propid" />
                        
                         <label class="badge badge-success"><%=msg%></label>
                         <div>
                         <label id="errmsg" class="btn btn-warning"></label>
                         </div>
                    </form>
                </div><!--/col-sm-6-->
       
        </div>  
                            </div>
                        </div>
                    </div>
            </div>
          </div>
       
    </div>
        <script type="text/javascript">
            
            $("input[type=password]").keyup(function(){
    	
	if($("#password1").val() == $("#password2").val()){
		
	}else{
		
	}
});
        </script>
       
    </body>
</html>
