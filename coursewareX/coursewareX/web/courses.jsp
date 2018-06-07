<%-- 
    Document   : courses
    Created on : Feb 23, 2015, 12:31:24 AM
    Author     : Neerav1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courses</title>
         <%@include file="links4temp.jsp" %>
         
        
    </head>
    <body>
        <sql:setDataSource  var="databse" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull" user="root"></sql:setDataSource>

                 <sql:query var="course" dataSource="${databse}">
                select * from courseware
            </sql:query> 

         <%@include file="mainheader.jsp" %>
         <header id="head" class="secondary">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<h1>Courses</h1>
				</div>
			</div>
		</div>
	</header>
         <section class="container">
		<div class="row">
			<div class="col-md-12">
				<section id="portfolio" class="page-section section appear clearfix">
					<br>
					<br>
					<p>
						We are here to provide you with our best error free and updated courseware
                                                design.We understand your desire to learn some new exciting stuff and  that's why<br>we have 
                                                explored our best out of public interests and demand for you. So enjoy
                                                innovative courses and boost up your knowledge at the price of your satisfaction.
					<br>
						<br>
					</p>
                                        <p><h3>Please Select the Course for further enquiry </h3> </p>
                                <br>
                                <br>
					<div class="row">
						<nav id="filter" class="col-md-12 text-center">
							<ul>
								<li><a href="#" class="current btn-theme btn-small" data-filter="*">All</a></li>
								<li><a href="#" class="btn-theme btn-small" data-filter=".webdesign">Web Design</a></li>
								<li><a href="#" class="btn-theme btn-small" data-filter=".programming">Programming</a></li>
								<li><a href="#" class="btn-theme btn-small" data-filter=".concepts">Concepts</a></li>
                                                                <li><a href="#" class="btn-theme btn-small" data-filter=".advanced">Advanced</a></li>
							</ul>
						</nav>
						<div class="col-md-12">
							<div class="row">
								<div class="portfolio-items isotopeWrapper clearfix isotope" id="3" style="position: relative; overflow: hidden; height: 915px;">
                                                                    
                                                                    <c:forEach items="${course.rows}" var="crs">
                                                                        
                                                                        <article class="col-sm-4 isotopeItem programming webdesign isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img1.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
                                                                                                    <a href="ViewCourseDetails.jsp?id=${crs.c_id}" class="fancybox">
														<h5>${crs.c_name}</h5>
														</a>
												</div>
											</div>
										</div>
									</article>
                                                                        
                                                                    </c:forEach>

									<article class="col-sm-4 isotopeItem programming webdesign isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img1.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<a href="javacourseuser.jsp" class="fancybox">
														<h5>Java Technlogy</h5>
														</a>
												</div>
											</div>
										</div>
									</article>
                                                                    
                                                                    <article class="col-sm-4 isotopeItem programming webdesign isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img2.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<a href="html5courseuser.jsp" class="fancybox">
														<h5>HTML5</h5>
														</a>
												</div>
											</div>
										</div>
									</article>

									<article class="col-sm-4 isotopeItem concepts isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img3.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<a href="networkcourseuser.jsp" class="fancybox">
														<h5>Networks</h5>
														</a>
												</div>
											</div>
										</div>
									</article>

                                                                    
                                                                    
                                                                    
                                                                    

									<article class="col-sm-4 isotopeItem advanced isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img4.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<a href="cloudcourseuser.jsp" class="fancybox">
														<h5>Cloud Computing</h5>
														</a>
												</div>
											</div>
										</div>
									</article>

									<article class="col-sm-4 isotopeItem advanced programming isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img5.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<a href="pythoncourseuser.jsp" class="fancybox">
														<h5>Python</h5>
														</a>
												</div>
											</div>
										</div>
									</article>

									<article class="col-sm-4 isotopeItem concepts isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img6.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<a href="dbcourseuser.jsp" class="fancybox">
														<h5>Database Management</h5>
														</a>
												</div>
											</div>
										</div>
									</article>


									<article class="col-sm-4 isotopeItem concepts isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img7.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<a href="securitycourseuser.jsp" class="fancybox">
														<h5>Security</h5>
														</a>
												</div>
											</div>
										</div>
									</article>

									<article class="col-sm-4 isotopeItem concepts isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img8.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<a href="oscourseuser.jsp" class="fancybox">
														<h5>Operating Systems</h5>
														</a>
												</div>
											</div>
										</div>
									</article>

									<article class="col-sm-4 isotopeItem programming isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
										<div class="portfolio-item">
											<img src="assetstemp/images/portfolio/img9.jpg" style="height:300px;width:400px;" />
											<div class="portfolio-desc align-center">
												<div class="folio-info">
													<a href="cppcourseuser.jsp" class="fancybox">
														<h5>C++</h5>
														</a>
												</div>
											</div>
										</div>
									</article>


									
								</div>

							</div>


						</div>
					</div>

				</section>
			</div>
		</div>

	</section><br><br>
       <%@include file="mainfooter.jsp" %>
    <%@include file="script4temp.jsp" %>
    </body>
</html>
