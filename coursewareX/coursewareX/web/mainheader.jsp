<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%
    String username = "";
    String type = "";
    try
    {
        if(!(session.getAttribute("user").equals(null)) && !(session.getAttribute("type").equals(null)))
        {
            username = (String)session.getAttribute("user");
            type = (String)session.getAttribute("type");
        }
        else
        {
            username = "";
            type = "";
        }
    }
    catch(Exception e)
    {
     //    type = "";
     e.printStackTrace();
    }
%>
     <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>

                 <sql:query var="selected" dataSource="${databse}">
                select count(*) As newmsg from messages where msg_to = '<%=username%>' and status = 'unread'
            </sql:query> 



<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="index.html">
					<img src="assetstemp/images/logo.png" alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse" style="margin-top: 6%;">
				<ul class="nav navbar-nav pull-right mainNav">
                                    
                                    <%
                                        if(type.equals(""))
                                        {
                                            
                                            %>
                                    
                                    <li class="active"><a href="mainhome.jsp">Home</a></li>
					<li><a href="about.jsp">About</a></li>
					<li><a href="courses.jsp">Courses</a></li>
					<li><a href="login.jsp">Login</a></li>
                                        <li><a href="register.jsp">Register</a></li>
					<li><a href="contact.jsp">Contact</a></li>
                                        <li><a href="help.jsp">Help?</a></li>
                                        
                                    <%
                                        
                                        }
                                        else if(type.equals("s"))
                                        {
                                         %>
                                    
                                        <li class="active"><a href="mainhome.jsp">Home</a></li>
					
                                        <li><a href="MyCourses.jsp">My Courses</a></li>
                                        <li><a href="Materials.jsp">Materials</a></li>
                                         <li><a href="courses.jsp">All Courses</a></li>
                                        <li><a href="takequiz.jsp">Quiz</a></li>
                                        <li><a href="forumhome.jsp">Forum</a></li>
                                        <li><a href="userInbox.jsp">Inbox<c:forEach items="${selected.rows}" var="tot">(${tot.newmsg})</c:forEach></a></li>
                                        <li><a href="User_notification.jsp">Notification</a></li>
                                        <li><a href="chat.jsp">Chat</a></li>
                                        <li><a href="StudentProfile.jsp"><%=username%></a></li>
                                        <li><a href="Logout.jsp">LogOut</a></li>
                                       
                                        
                                        <%   
                                        }
                                        
                                        else if(type.equals("p"))
                                        {
                                            
                                            %>
                                        
                                        <li class="active"><a href="mainhome.jsp">Home</a></li>
                                        <li><a href="forumhome.jsp">Forum</a></li>
					<li><a href="AddQuiz.jsp">Quizes</a></li>
                                        <li><a href="profMaterials.jsp">MyMaterials</a></li>
                                        <li><a href="addcourse.jsp">Course</a></li>
                                        <li><a href="courses.jsp">All Courses</a></li>
                                        <li><a href="userInbox.jsp">Inbox<c:forEach items="${selected.rows}" var="tot">(${tot.newmsg})</c:forEach></a></li>
                                        <li><a href="ProfessorProfile.jsp"><%=username%></a></li>
                                         <li><a href="chat.jsp">Chat</a></li>
                                        <li><a href="Logout.jsp">LogOut</a></li>
                                        <%
                                            
                                        }
                                    %>
					
                                        
				</ul>
			</div>
			
		</div>
	</div>