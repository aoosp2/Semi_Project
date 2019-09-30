<%@page import="model.vo.Review"%>
<%@page import="model.vo.Shop"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.vo.ShopMenu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Shop s = (Shop) request.getAttribute("shop");
	ArrayList<ShopMenu> list = (ArrayList<ShopMenu>) request.getAttribute("list");
	ArrayList<Review> rlist = (ArrayList<Review>) request.getAttribute("rlist");
%>

<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>지상갑 음식점 선택시</title>


</head>

<body>


	<%@ include file="views/common/header.jsp"%>
	<!-- Page Content -->
	<div class="container">
		<br>
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-5 mb-2">
			<%=s.getCategoryId()%>
			<small> <%=s.getShopName()%>
			</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
			<li class="breadcrumb-item active"><%=s.getCategoryId()%></li>
		</ol>

		<!-- Intro Content -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-fluid rounded mb-4" src="resources/images/FoodMenu/<%=s.getShopLogo()%>.jpg" alt="LOGO">
			</div>

			<div class="col-lg-4">
				<h2><%=s.getShopName()%></h2>
				<h5>
					<%
						for (int i = 0; i < 5; i++) {
							if (i < s.getPoint()) {
					%>
					★
					<%
						} else {
					%>
					☆
					<%
						}
						}
					%>
					<!-- 별점 개수 -->
					<%=s.getPoint()%>
				</h5>
				<br>
				<p>
					영업 시간 :
					<%=s.getShopTime()%></p>
				<p>
					전화번호 :
					<%=s.getShopPhone()%></p>
				<p>
					설명 :
					<%=s.getShopInfo()%></p>
			</div>

			<div class="col-lg-4">
				<div class=" pre-scrollable" style="max-height: 300px;">

					<!-- 리뷰 -->
					<!-- 반복문을 늘리면 될뜻 
							일단 임시로 복붙 블록 생성 -->

					<div id="Review">
						<%
							for (int i = 0; i < rlist.size(); i++) {
						%>
						<div class="card mr-2 p-2">
							<div class='text-left'>
								<%=rlist.get(i).getUserName()%>
							</div>
							<div><%=rlist.get(i).getInfo()%></div>
							<div class="text-right">
								<%
									for (int j = 0; j < 5; j++) {
											if (j < rlist.get(i).getPoint()) {
								%>
								★
								<%
									} else {
								%>
								☆
								<%
									}
										}
								%>
							</div>
							<div class="text-right">
								<a href="#" class="" style="">리뷰 수정</a>
							</div>
						</div>
						<%
							}
						%>
					</div>

				</div>

				<div class="text-right" style="font-size: 25px;">
					<a href="#" class="" style="">리뷰 작성</a>
				</div>

			</div>
		</div>
		<!-- /.row -->

		<!-- Team Members -->
		<h2>
			메뉴 <small>인기/추천 메뉴</small>
		</h2>


		<div class="row">

			<% // 메인 메뉴 3종
			int num = 0;
			if( 0 < list.size()) {
			for( int i=0; i<3 ; i++) { 
				%>
			<div class="col-lg-4 mb-4">
				<div class="card h-100 text-center">
					<img class="card-img-top" src="resources/images/FoodMenu/<%=list.get(num).getCode()%>.jpg" alt=""
						height="250px;">
					<div class="card-body">
						<h4 class="card-title"><%=list.get(num).getName()%></h4>
						<h6 class="card-subtitle mb-2 text-muted"><%=list.get(num).getPrice()%>원
						</h6>
						<p class="card-text">
							<%
									if (list.get(num).getInfo() == null) {
								%>
							<%
									} else {
								%>
							<%=list.get(num).getInfo()%>
							<%
									}
								%>
						</p>
					</div>
					<div class="card-footer">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>

			<%  num++; } } %>

		</div>
		<!-- /.row -->

		<!-- Our Customers -->
		<h4>모든 메뉴</h4>
		<div class="row">

			<%
					int num2 = 0;
					for (int i = 0; i < list.size(); i++) {

				%>

			<div class="col-lg-2">
				<div class="card text-center h-100">
					<img class="img-thumbnail card-img-top" style="height: 120px;"
						src="resources/images/FoodMenu/<%=list.get(num2).getCode()%>.jpg" alt="">
					<div class="card-body">
						<h6 class="card-title"> <%=list.get(num2).getName()%></h6>
						<h6 class="card-subtitle mb-2 text-muted"><%=list.get(num2).getPrice()%>원
						</h6>

					</div>
					<div class="card-footer">
						<a href="#">구매하기</a>
					</div>
				</div>
			</div>
			<%
				num2++;	}
				%>
		</div>

	</div>
	<!-- /.row -->

	</div>
	<!-- /.container -->

	<br>


	<%@ include file="views/common/footer.jsp"%>
</body>

</html>
