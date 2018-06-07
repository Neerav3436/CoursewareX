<%-- 
    Document   : index
    Created on : Feb 27, 2015, 12:30:30 AM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <%@include file="links4temp.jsp" %>
    </head>
    <body>
           <%@include file="mainheader.jsp" %>
        <header id="head">
		<div class="container">
			<div class="banner-content">
				<div id="da-slider" class="da-slider" style="background-position: 0% 0%;">
					<div class="da-slide da-slide-fromright da-slide-current">
						<h2>Online Education</h2>
						<p>Experience all new amazing and responsive learning environment</p>
						<div class="da-img"></div>
					</div>
					<div class="da-slide da-slide-toleft">
						<h2>Latest Courseware</h2>
						<p>Train yourself!! We have best courseware stucture you can get..</p>
						<div class="da-img"></div>
					</div>
					<div class="da-slide da-slide-toleft">
						<h2>Relive your Success</h2>
						<p>HTML5 is a markup language used for structuring and presenting Web.</p>
						<div class="da-img"></div>
					</div>
                                    <div class="da-slide da-slide-toleft">
						<h2>Learn Innovation</h2>
						<p>Python supports multiprogramming paradigm which allows you <br><br>to express more</p>
						<div class="da-img"></div>
					</div>
                                    <div class="da-slide da-slide-toleft">
						<h2>professionalise your skills</h2>
						<p>Learn network concepts with us & test your abilities</p>
						<div class="da-img"></div>
					</div>
				<nav class="da-dots"><span class="da-dots-current"></span><span class=""></span><span class=""></span><span class=""></span><span class=""></span></nav></div>
			</div>
		</div>
	</header>
        <div id="courses">
		<div class="container">
			<h2>Online Courses</h2>
			<div class="row">
				<div class="col-md-4">
					<div class="featured-box">
						<i class="fa fa-cogs fa-2x"></i>
						<div class="text">
							<h3>Java technology</h3>
							Develop the Cross platform computing applications using Object oriented programming.learn connectivity through Database & networks.
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box">
						<i class="fa fa-leaf fa-2x"></i>
						<div class="text">
							<h3>HTML5/CSS3</h3>
							HTML5 is a core technology markup language of the Internet used for structuring and presenting content for the World Wide Web.
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box">
						<i class="fa fa-tachometer fa-2x"></i>
						<div class="text">
							<h3>Python</h3>
							Python supports multiple prog. paradigms,comprehensive libraries,memory management and dynamic type systems.
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="featured-box">
						<i class="fa fa-eye fa-2x"></i>
						<div class="text">
							<h3>Security</h3>
							 practice defending information from unauthorized access, use, disclosure, disruption, modification, perusal, inspection, recording or destruction.
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box">
						<i class="fa fa-quote-right fa-2x"></i>
						<div class="text">
							<h3>Data Base</h3>
							Organize your essential data.DBMS is designed to allow the definition, creation, querying, update, and administration of databases.
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box">
						<i class="fa fa-arrows fa-2x"></i>
						<div class="text">
							<h3>Cloud computing</h3>
							Cloud computing involves deploying groups of remote servers and software networks allowing centralized storage and access to comp. services.
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
        <section class="container">
		<div class="heading">
			<!-- Heading -->
			<h2 aling="center">Our Students</h2>
		</div>
		<div class="row">
			<div class="col-md-4">
				<img src="assetstemp/images/1.jpg" alt="" class="img-responsive">
			</div>
			<div class="col-md-8">
				<p>We are here to gurantee our students with quality education delivery through our media so they they may aquire the superior knowledge which paves their path to success and excel their skills and abalities to handle abstract and tough situations of their profession
                                .Our Online based courses can help them to expetise them in their work.With our moto "Knowledge has no boundries" we are here to provide them with most demanding and recent technologies and train them to the
                                next level of knowledge and success.</p>
				<blockquote class="blockquote-1">
					<p>Live as if you were to die tomorrow. Learn as if you were to live forever.</p>
					<small><cite title="Source Title">Mahatma Gandhi</cite></small>
				</blockquote>
			</div>
		</div>
	</section>
        <br>
           <%@include file="mainfooter.jsp" %>
              <%@include file="script4temp.jsp" %>
    </body>
</html>
