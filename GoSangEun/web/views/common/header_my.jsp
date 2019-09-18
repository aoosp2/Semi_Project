<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

</head>
<body>
	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index_login.html"><img
				src="resources/images/logo.png" alt="logo"
				style="width: 120px;"></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active dropdown"><a
						class="nav-link dropdown-toggle" href="MyPage.html"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 장바구니 </a>  <!-- servlet으로 이동 -->
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownPortfolio"
							style="width: 220px; height: auto;">
							<div class="dropdown-item-text" style="padding-left: 47px;">장바구니
								목록</div>
							<div class="card">
								<div>치킨메뉴1</div>
								<div class="text-right">20,000원</div>
							</div>
							<div class="card">
								<div>치킨메뉴2</div>
								<div class="text-right">20,000원</div>
							</div>
							<hr>
							<div class="card" style="color: red;">
								<div style="font-size: 20px;">총 금액</div>
								<div class="text-right">40,000원</div>
							</div>
							<a class="dropdown-item;" href="payment.html"
								style="font-size: 20px; float: right; margin-right: 10px;">구매하기</a>
						</div></li>
					<li class="nav-item active dropdown"><a
						class="nav-link dropdown-toggle" href="MyPage.html"
						id="navbarDropdownBlog" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 마이페이지 </a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="MyPage.html">계정 설정</a> <a
								class="dropdown-item" href="MyPage_CheckOrder.html">주문 확인</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>