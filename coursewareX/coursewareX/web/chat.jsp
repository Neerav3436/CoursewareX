<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title></title>
        <link href="http://fonts.googleapis.com/css?family=Oswald" rel="stylesheet" type="text/css" />
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        
            <style type="text/css">
            @import "gallery.css";
            </style>
            
            <%@include file="links4temp.jsp" %>
            
        </head>
<body>
    <%@include file="mainheader.jsp" %>
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                        url="jdbc:mysql://localhost:3306/e_courseware" user="root" />

                    <sql:query dataSource="${snapshot}" var="result">
                                   select * from active_login
                    </sql:query>
        <style>
            #linec
            {
                margin: 0px;
                padding: 0px;
                list-style: 0px;
               
            }
            #linec li{
                list-style: none;
            }
            .msgr
            {
                background-color: yellow;
                border-radius:3px;
                padding: 3px 10px;
                margin-bottom: 10px;
                font-size: 12px;
            }
            .msgs
            {
                background-color: #EFEFEF;
                border-radius:3px;
                padding: 3px 10px;
                margin-bottom: 10px;
                text-align: right;
                font-size: 12px;
            }
        </style>
        <div style="margin-top: 100px ;margin-left: 50px">
            <div id="login-box" style="margin-bottom: 200px;">
                <h2>Chat Box</h2>
                <h4>chatting with <%= pageContext.getRequest().getParameter("chatwithid") %></h4>
                <hr>
                <div style="float: right;width: 40% ;border: 1px solid #ddd; height:200px; margin-right: 200px; overflow: auto;">
                    
                    <label>Active Users List</label>
                    <ul>
                    <c:forEach var="row" items="${result.rows}"> 
                        <li><a href="chat.jsp?chatwithid=${row.user_id}"><c:out value="${row.user_id}" /></a></li>
                    </c:forEach>  
                    </ul>
                </div>
                <div class="chatbox" title="<%= pageContext.getRequest().getParameter("chatwithid") %>" style="width: 360px; padding: 20px;  overflow: auto; height:300px; border: 1px solid #ddd; background: #fff">
                    <ul id="linec">
                             
                    </ul>
                </div>
                    
                     
                <div style="width: 400px; height:300px; text-align: right">
                    <input type="text" style="width: 95%; border: 1px solid #ddd; padding: 12px 10px; background: #fff" name="" id="msgtxt" value="">
                </div>
            </div>
                   
        </div>
                    
        <script type="text/javascript">
            id = "<%= pageContext.getRequest().getParameter("chatwithid") %>";
            var lastid = 0;
            function test()
            {
                
                $.get("getMsg?id="+id,{"lastid":lastid}, function(d){
                    $("#linec").append(d);
                    newid = $(".msgr:last").attr("title");
                    lastid = newid;
                })
            }
            $(document).ready(function(){
                
                
                    myretrival = setInterval(
                    test
                    ,3000);
                
                $("#msgtxt").keyup(function(event){
                    if(event.keyCode == '13'){
                        
                        var msg = $(this).val();
                        
                        $("#linec").append("<li class='msgs'>" + msg + "</li>");
                        $(this).val("");
                        $.post("sendMsg",{"id":id, "msg":msg},function(d){
                            
                        });
                        
                    }
                });
            });
        </script>
</body>
</html>