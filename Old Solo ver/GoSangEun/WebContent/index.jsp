	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">
	
	<head>
	
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>지.상.갑</title>
	
	<!-- Bootstrap core CSS -->
	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/vendor/client/styles/square/_effect1.scss"
		rel="stylesheet">
	<link href="resources/vendor/client/styles/square/_effect13.scss"
		rel="stylesheet">
	<link href="resources/vendor/src/ihover.css" rel="stylesheet">
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	
	<!-- Custom styles for this template -->
	<link href="css/modern-business.css" rel="stylesheet">
	
	<!-- CSS font -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	</head>
	
	<body>
	
		<%@ include file="views/common/header.jsp"%>
	
		<br>
		<header>
			<!-- image slider -->
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<!-- Slide One - Set the background image for this slide in the line below -->
					<div class="carousel-item active">
						<img src="resources/images/1.jpg" alt="">
					</div>
					<!-- Slide Two - Set the background image for this slide in the line below -->
					<div class="carousel-item">
						<img src="resources/images/2.jpg" alt="">
					</div>
					<!-- Slide Three - Set the background image for this slide in the line below -->
					<div class="carousel-item">
						<img src="resources/images/3.jpg" alt="">
					</div>
					<!-- Slide four - Set the background image for this slide in the line below -->
					<div class="carousel-item">
						<img src="resources/images/4.jpg" alt="">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>	
				</a>
			</div>
		</header>
	
		<!-- Page Content -->
		<div class="container">
			<div class="row">
	
				<div class="ih-item square effect13 left_to_right">
					<a href="category.go?category=한식"> <img src="resources/images/한식.png"
						alt="img" class="img"
						style="position: inherit; top: 0; left: 0; width: 100%; height: 100%; border-radius: 8px;">
						<div class="info">
							<h3>K O R E A N</h3>
							<p>korean food</p>
						</div>
					</a>
				</div>
	
				<div class="ih-item square effect13 left_to_right">
					<a href="category.go?category=즐찾"> <img src="resources/images/일식.jpg"
						alt="korean" class="img"
						style="position: inherit; top: 0; left: 0; width: 100%; height: 100%; border-radius: 8px;">
						<div class="info">
							<h3>J A P A N E S E</h3>
							<p>japanese food</p>
						</div>
					</a>
				</div>
	
				<div class="ih-item square effect13 left_to_right">
					<a href="category.go?category=중식"> <img src="resources/images/중식.jpg"
						alt="korean" class="img"
						style="position: inherit; top: 0; left: 0; width: 100%; height: 100%; border-radius: 8px;">
						<div class="info">
							<h3>C H I N E S E</h3>
							<p>chinese food</p>
						</div>
					</a>
				</div>
	
				<div class="ih-item square effect13 left_to_right">
					<a href="category.go?category=피자"> <img src="resources/images/피자.jfif"
						alt="korean" class="img"
						style="position: inherit; top: 0; left: 0; width: 100%; height: 100%; border-radius: 8px;">
						<div class="info">
							<h3>P I Z Z A</h3>
							<p>pizza</p>
						</div>
					</a>
				</div>
	
				<div class="ih-item square effect13 left_to_right">
					<a href="category.go?category=치킨"> <img src="resources/images/치킨.jpg"
						alt="korean" class="img"
						style="position: inherit; top: 0; left: 0; width: 100%; height: 100%; border-radius: 8px;">
						<div class="info">
							<h3>C H I C K E N</h3>
							<p>chicken</p>
						</div>
					</a>
				</div>
	
				<div class="ih-item square effect13 left_to_right">
					<a href="category.go?category=족발"> <img src="resources/images/족발.jpg"
						alt="korean" class="img"
						style="position: inherit; top: 0; left: 0; width: 100%; height: 100%; border-radius: 8px;">
						<div class="info">
							<h3>J O C K B A L</h3>
							<p>jockbal</p>
						</div>
					</a>
				</div>
	
			</div>
		</div>
		<br>
		<br>
		<br>
		<!-- /.container -->
	
	
		<!-- Footer -->
		<%@ include file="views/common/footer.jsp"%>
		<!-- /.Footer -->
	
		<!-- Bootstrap core JavaScript -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	</body>
	
	</html>