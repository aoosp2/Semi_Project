<%@page import="model.vo.Review"%>
<%@page import="model.vo.Shop"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.vo.ShopMenu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%
	Shop s = (Shop)request.getAttribute("shop");
	ShopMenu sm = null;
	ArrayList<ShopMenu> list = (ArrayList<ShopMenu>)request.getAttribute("list");
	ArrayList<Review> rlist = (ArrayList<Review>)request.getAttribute("rlist");
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>지상갑 음식점 선택시</title>

<style> /* 별점기능 테스트중 */
.starR1 { 
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat -52px 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR2 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR1.on {
	background-position: 0 0;
}

.starR2.on {
	background-position: -15px 0;
}
</style>

</head>

<body>


	<%@ include file="views/common/header.jsp"%>
	<!-- Page Content -->
	<div class="container">
		<br>
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
		<%= s.getCategoryId() %>
		 <small> <%= s.getShopName() %> </small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index_login.jsp">Home</a>
			</li>
			<li class="breadcrumb-item active"><%= s.getCategoryId() %></li>
		</ol>

		<!-- Intro Content -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-fluid rounded mb-4"
					src="resources/images/FoodMenu/<%= s.getShopLogo() %>.jpg" alt="LOGO">
			</div>

			<div class="col-lg-4">
				<h2><%= s.getShopName() %></h2>
				<h5>
					<!-- 별점 테스트기능 -->
					<div class="starRev">
						<span class="starR1 on">별1_왼쪽</span> <span class="starR2">별1_오른쪽</span>
						<span class="starR1">별2_왼쪽</span> <span class="starR2">별2_오른쪽</span>
						<span class="starR1">별3_왼쪽</span> <span class="starR2">별3_오른쪽</span>
						<span class="starR1">별4_왼쪽</span> <span class="starR2">별4_오른쪽</span>
						<span class="starR1">별5_왼쪽</span> <span class="starR2">별5_오른쪽</span>
						<div> <%= s.getPoint() %></div>
					</div>
				</h5>
				<br>
				<p>영업 시간 : <%= s.getShopTime() %></p>
				<p>전화번호 : <%= s.getShopPhone() %></p>
				<p>설명 : <%= s.getShopInfo() %></p>
			</div>
			
			<script> // 별점기능 테스트용 (별점 주기용으로 써야할뜻)
				$('.starRev span').click(function() {
					$(this).parent().children('span').removeClass('on');
					$(this).addClass('on').prevAll('span').addClass('on');
					return false;
				});
			</script>

			<div class="col-lg-4 pre-scrollable" style="max-height: 500px;">

				<!-- 리뷰 -->
				<!-- 반복문을 늘리면 될뜻 
      				  일단 임시로 복붙 블록 생성 -->

				<div id="Review"></div>

				<script>
					// 테스트 용도로 만든 리뷰 반복 생성 함수
					window.onload = function() {
						var test = document.getElementById('Review');

						var result = "";

						// 덧글 예문 작성 : 제목,id,내용,별점 ID값 부여해야됨
						result += '<div class="card">'
								+ '<div class="text-left">리뷰제목</p>'
								+ '<div class="text-right">USER-ID</div>'
								+ '<small>제2항의 재판관중 3인은 국회에서 선출하는 자를, 3인은 대법원장이 지명하는 자를 임명한다.</small>'
								+ '<div class="text-right">★★★★★</div> '
								+ ' <div class="text-right"> '
								+ ' <a href="#" class="" style="">리뷰 수정</a>'
								+ '</div> </div> </div>';

						// i의 최대값을 조절하면 갯수 증가
						for (var i = 0; i < 5; i++) {
							test.innerHTML += result;
						}

					}
				</script>


			</div>
			<div class="text-right row" style="margin-left: 92%;">
				<a href="#" class="" style="">리뷰 작성</a>
			</div>
		</div>
		<!-- /.row -->

		<!-- Team Members -->
		<h2>
			메뉴 <small>인기/추천 메뉴</small>
		</h2>

		<div class="row">
			<div class="col-lg-4 mb-4">
				<div class="card h-100 text-center">
					<img class="card-img-top"
						src="resources/images/chicken/01/menu02.jpg" alt=""
						height="250px;">
					<div class="card-body">
						<h4 class="card-title">치킨 이름1</h4>
						<h6 class="card-subtitle mb-2 text-muted">가격 : 20,000원</h6>
						<p class="card-text">제2항의 재판관중 3인은 국회에서 선출하는 자를, 3인은 대법원장이
							지명하는 자를 임명한다.</p>
					</div>
					<div class="card-footer">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-lg-4 mb-4">
				<div class="card h-100 text-center">
					<img class="card-img-top"
						src="resources/images/chicken/01/menu03.jpg" alt=""
						height="250px;">
					<div class="card-body">
						<h4 class="card-title">치킨 이름2</h4>
						<h6 class="card-subtitle mb-2 text-muted">23,000원</h6>
						<p class="card-text">대통령은 법률이 정하는 바에 의하여 훈장 기타의 영전을 수여한다.제2항의
							재판관중 3인은 국회에서 선출하는 자를, 3인은 대법원장이 지명하는 자를 임명한다.</p>
					</div>
					<div class="card-footer">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-lg-4 mb-4">
				<div class="card h-100 text-center">
					<img class="card-img-top"
						src="resources/images/chicken/01/menu04.jpg" alt=""
						height="250px;">
					<div class="card-body">
						<h4 class="card-title">치킨 이름3</h4>
						<h6 class="card-subtitle mb-2 text-muted">23,000원</h6>
						<p class="card-text">국가는 균형있는 국민경제의 성장 및 안정과 적정한 소득의 분배를 유지하고,
							시장의 지배와 경제력의 남용을 방지하며, 경제주체간의 조화를 통한 경제의 민주화를 위하여 경제에 관한 규제와 조정을
							할 수 있다.</p>
					</div>
					<div class="card-footer">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->

		<!-- Our Customers -->
		<h4>다른 메뉴</h4>
		<div class="row">

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu01.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">치킨이름</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000원</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu03.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">치킨이름</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000원</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu04.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">치킨이름</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000원</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu01.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">치킨이름</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000원</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu03.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">치킨이름</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000원</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu04.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">치킨이름</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000원</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->


	<%@ include file="views/common/footer.jsp"%>


	<!-- <script>
        // 테스트용 크롬에선 작동안됨 ( 나중에 삭제하기 )
        self.moveTo(0, 0);
        self.resizeTo(1024, 768);
    </script> -->


</body>

</html>