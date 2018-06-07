<%-- 
    Document   : contact
    Created on : Feb 14, 2015, 4:08:40 PM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <%@include file="links4temp.jsp" %>
    </head>
    <body>
        <%@include file="mainheader.jsp" %>
        
        <header id="head" class="secondary">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<h1>Contact us</h1>
				</div>
			</div>
		</div>
	</header>
        <div class="container">
				<div class="row">
					<div class="col-md-6">
						<h3 class="section-title">Your Message</h3>
						<p>We consider your feedbacks are valuable for smooth operation of facality being provided<br>
                                                    We appreciate and welcome your suggestions and assure you to work progressively for<br>
                                                    improvement of our facality.We assure you value for money and hence we always focus on <br>our
                                                    client's problems.
                                                </p>
						
						<form class="form-light mt-20" role="form">
							<div class="form-group">
								<label>Name</label>
								<input type="text" class="form-control" placeholder="Your name">
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Email</label>
										<input type="email" class="form-control" placeholder="Email address">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Phone</label>
										<input type="text" class="form-control" placeholder="Phone number">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label>Subject</label>
								<input type="text" class="form-control" placeholder="Subject">
							</div>
							<div class="form-group">
								<label>Message</label>
								<textarea class="form-control" id="message" placeholder="Write you message here..." style="height:100px;"></textarea>
							</div>
							<button type="submit" class="btn btn-two">Send message</button><p><br></p>
						</form>
					</div>
					<div class="col-md-6"  >
						<div class="row">
							<div class="col-md-6">
								<h3 class="section-title">Our Address</h3>
								<div class="contact-info">
									<h5>Address</h5>
									<p>Dr. Jivraj Mehta Institute Of Technology,Mogar(Anand),INDIA</p><br>
									
									<h5>Email</h5>
									<p>neeravpatel85@gmail.com</p>
                                                                        <p>Thakkarapurv9@gmail.com</p>
                                                                        <p>rparmar9294@gmail.com</p><br>
									
									<h5>Phone</h5>
									<p>+91  97240 09919</p>
                                                                        <p>+91  90335 50084</p>
                                                                        <p>+91  78748 77967</p>
								</div>
							</div>
							
						</div>
						<h3 class="section-title">Get connected</h3>
						<p>
						Fb page: coursewareX
						</p>						
					</div>
				</div>
			</div>
         <%@include file="mainfooter.jsp" %>
      <%@include file="script4temp.jsp" %>
    </body>
</html>
