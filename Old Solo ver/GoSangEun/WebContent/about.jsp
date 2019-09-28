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

<title>���� ������ ���ý�</title>



</head>

<body>


	<%@ include file="views/common/header_my.jsp"%>
	<!-- Page Content -->
	<div class="container">
		<br>
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
		<%
		String categoryName = "";
		String code = ((Shop)request.getAttribute("shop")).getCategoryId();
		
		if(code.equals("KO")){
			categoryName = "�ѽ�";
		}else if(code.equals("CH")){
			categoryName = "�߽�";
		}else if(code.equals("CK")){
			categoryName = "ġŲ";
		}else if(code.equals("ZOK")){
			categoryName = "����";
		}else if(code.equals("PZ")){
			categoryName = "����";
		}
		%> <%= categoryName %>
		 <small> <%= s.getShopName() %> </small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index_login.jsp">Home</a>
			</li>
			<li class="breadcrumb-item active"><%= categoryName %></li>
		</ol>

		<!-- Intro Content -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-fluid rounded mb-4"
					src="resources/images/FoodMenu/<%= s.getShopLogo() %>.jpg" alt="LOGO">
			</div>

			<div class="col-lg-4">
				<h2><%= s.getShopName() %></h2>
				<p>���� �ð� : <%= s.getShopTime() %></p>
				<p>��ȭ��ȣ : <%= s.getShopPhone() %></p>
				<p>���� : <%= s.getShopInfo() %></p>
			</div>

			<div class="col-lg-4 pre-scrollable" style="max-height: 500px;">

				<!-- ���� -->
				<!-- �ݺ����� �ø��� �ɶ� 
      				  �ϴ� �ӽ÷� ���� ��� ���� -->

				<div id="Review"></div>

				<script>
					// �׽�Ʈ �뵵�� ���� ���� �ݺ� ���� �Լ�
					window.onload = function() {
						var test = document.getElementById('Review');

						var result = "";

						// ���� ���� �ۼ� : ����,id,����,���� ID�� �ο��ؾߵ�
						result += '<div class="card">'
								+ '<div class="text-left">��������</p>'
								+ '<div class="text-right">USER-ID</div>'
								+ '<small>��2���� ���ǰ��� 3���� ��ȸ���� �����ϴ� �ڸ�, 3���� ��������� �����ϴ� �ڸ� �Ӹ��Ѵ�.</small>'
								+ '<div class="text-right">�ڡڡڡڡ�</div> '
								+ ' <div class="text-right"> '
								+ ' <a href="#" class="" style="">���� ����</a>'
								+ '</div> </div> </div>';

						// i�� �ִ밪�� �����ϸ� ���� ����
						for (var i = 0; i < 5; i++) {
							test.innerHTML += result;
						}

					}
				</script>


			</div>
			<div class="text-right row" style="margin-left: 92%;">
				<a href="#" class="" style="">���� �ۼ�</a>
			</div>
		</div>
		<!-- /.row -->

		<!-- Team Members -->
		<h2>
			�޴� <small>�α�/��õ �޴�</small>
		</h2>

		<div class="row">
			<div class="col-lg-4 mb-4">
				<div class="card h-100 text-center">
					<img class="card-img-top"
						src="resources/images/chicken/01/menu02.jpg" alt=""
						height="250px;">
					<div class="card-body">
						<h4 class="card-title">ġŲ �̸�1</h4>
						<h6 class="card-subtitle mb-2 text-muted">���� : 20,000��</h6>
						<p class="card-text">��2���� ���ǰ��� 3���� ��ȸ���� �����ϴ� �ڸ�, 3���� ���������
							�����ϴ� �ڸ� �Ӹ��Ѵ�.</p>
					</div>
					<div class="card-footer">
						<a href="#">�����ϱ�</a>
					</div>
				</div>
			</div>

			<div class="col-lg-4 mb-4">
				<div class="card h-100 text-center">
					<img class="card-img-top"
						src="resources/images/chicken/01/menu03.jpg" alt=""
						height="250px;">
					<div class="card-body">
						<h4 class="card-title">ġŲ �̸�2</h4>
						<h6 class="card-subtitle mb-2 text-muted">23,000��</h6>
						<p class="card-text">������� ������ ���ϴ� �ٿ� ���Ͽ� ���� ��Ÿ�� ������ �����Ѵ�.��2����
							���ǰ��� 3���� ��ȸ���� �����ϴ� �ڸ�, 3���� ��������� �����ϴ� �ڸ� �Ӹ��Ѵ�.</p>
					</div>
					<div class="card-footer">
						<a href="#">�����ϱ�</a>
					</div>
				</div>
			</div>

			<div class="col-lg-4 mb-4">
				<div class="card h-100 text-center">
					<img class="card-img-top"
						src="resources/images/chicken/01/menu04.jpg" alt=""
						height="250px;">
					<div class="card-body">
						<h4 class="card-title">ġŲ �̸�3</h4>
						<h6 class="card-subtitle mb-2 text-muted">23,000��</h6>
						<p class="card-text">������ �����ִ� ���ΰ����� ���� �� ������ ������ �ҵ��� �й踦 �����ϰ�,
							������ ����� �������� ������ �����ϸ�, ������ü���� ��ȭ�� ���� ������ ����ȭ�� ���Ͽ� ������ ���� ������ ������
							�� �� �ִ�.</p>
					</div>
					<div class="card-footer">
						<a href="#">�����ϱ�</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->

		<!-- Our Customers -->
		<h4>�ٸ� �޴�</h4>
		<div class="row">

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu01.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">ġŲ�̸�</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000��</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">�����ϱ�</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu03.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">ġŲ�̸�</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000��</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">�����ϱ�</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu04.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">ġŲ�̸�</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000��</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">�����ϱ�</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu01.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">ġŲ�̸�</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000��</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">�����ϱ�</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu03.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">ġŲ�̸�</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000��</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">�����ϱ�</a>
					</div>
				</div>
			</div>

			<div class="col-lg-2 col-sm-4 mb-4 text-center h-auto">
				<img class="img-fluid" src="resources/images/chicken/01/menu04.jpg"
					alt="">
				<div class="card-body">
					<h6 class="card-title">ġŲ�̸�</h6>
					<h6 class="card-subtitle mb-2 text-muted">15,000��</h6>
					<br>
					<div class="card" style="bottom: 10px;">
						<a href="#">�����ϱ�</a>
					</div>
				</div>
			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->


	<%@ include file="views/common/footer.jsp"%>


	<!-- <script>
        // �׽�Ʈ�� ũ�ҿ��� �۵��ȵ� ( ���߿� �����ϱ� )
        self.moveTo(0, 0);
        self.resizeTo(1024, 768);
    </script> -->


</body>

</html>