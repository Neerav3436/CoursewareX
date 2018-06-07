<%-- 
    Document   : rateTemp
    Created on : 25 Apr, 2015, 2:34:21 AM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jRate.min.js"></script>
	<script type="text/javascript">
		$(function () {
			var that = this;
			$("#jRate").jRate({
				rating: 1,
				strokeColor: 'black',
				width: 80,
				height: 80,
				precision: 0.1,
				minSelected: 1,
				onChange: function(rating) {
					console.log("OnChange: Rating: "+rating);
                                        $('#lbl1').html(rating);
				},
				onSet: function(rating) {
					console.log("OnSet: Rating: "+rating);
				}
			});
			
		});
	</script>
	
</head>
<body>
	<h2>jRate Demo Page</h2>
	<div id="jRate" style="height:50px;width: 200px;"></div>
        <label id="lbl1"></label>
</html>
