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

<title>마이페이지</title>



</head>

<body>
	<%@ include file="views/common/header.jsp"%>

	<!-- Page Content -->
	<div class="container">
		<br>
		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">마이페이지</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index_login.html">Home</a>
			</li>
			<li class="breadcrumb-item active">계정설정&주문확인</li>
		</ol>

		<br>

		<div
			style="border-style: dotted; width: 450px; height: 250px; border-radius: 10px; width: 700px; margin: 0 auto;">
			<br>
			<div>
				<div style="display: flex; align-content: center;">
					<div style="margin-left: 30px">
						<img src="resources/images/boy.png" style="width: 120px;">
					</div>
					<div>닉네임 : <%=m.getUSER_NICKNAME()%></div>
				</div>

				<br>
				<div style="margin-left: 65px"><%=m.getRANK()%></div>
			</div>
		</div>

		<br>
		<hr style="border: 5px solid gray; border-radius: 4px;">
		<br>

		<div class="mb-4" id="accordion" role="tablist"
			aria-multiselectable="true">
			<div class="card">
				<div class="card-header" role="tab" id="headingOne"
					data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
					aria-expanded="true" aria-controls="collapseOne" class="collapsed"
					style="cursor: pointer">
					<h5 class="mb-0">
						<img src="resources/images/account.png" alt="account"
							style="width: 40px; height: 40px;"> <a
							style="color: #a6a6a6; text-decoration: none"
							onmouseover="this.style.color='#000000'"
							onmouseout="this.style.color='#a6a6a6'" data-toggle="collapse"
							data-parent="#accordion" href="#collapseOne"
							aria-expanded="false" aria-controls="collapseOne"
							class="collapsed">&nbsp; <b>계정 설정</b></a>
					</h5>
				</div>
				<div id="collapseOne" class="collapse" role="tabpanel"
					aria-labelledby="headingOne">
					<div class="card-body">
						<br>
						<ul class="edit"
							style="list-style-type: none; text-align: right; margin-right: 40%;">
							<table align="center">
								<tr>
									<td width="200px">* 이름:</td>
									<td style="text-align: left; padding-left: 20px;"><%=m.getUSER_NAME()%></td>
									<td width="200px"></td>
								</tr>
								<tr>
									<td width="200px">* 아이디:</td>
									<td style="text-align: left; padding-left: 20px;"><%=m.getUSER_ID()%></td>
									<td width="200px"></td>
								</tr>
								<tr>
									<td width="200px">* 닉네임:</td>
									<td style="text-align: left; padding-left: 20px;"><%=m.getUSER_NICKNAME()%></td>
									<td width="200px"></td>
								</tr>
								<tr>
									<td width="200px">* 비밀번호:</td>
									<td style="text-align: left; padding-left: 20px;"><%=m.getUSER_PASSWORD()%></td>
									<td width="200px"></td>
								</tr>
								<tr>
									<td width="200px">* 전화번호:</td>
									<td style="text-align: left; padding-left: 20px;"><%=m.getUSER_PHONE()%></td>
									<td width="200px"></td>
								</tr>
								<tr>
									<td width="200px">* 이메일:</td>
									<td style="text-align: left; padding-left: 20px;"><%=m.getUSER_EMAIL()%></td>
									<td width="200px"></td>
								</tr>
								<tr>
									<td width="200px">* 주소:</td>
									<td style="text-align: left; padding-left: 20px;"><%=m.getUSER_ADDRESS()%></td>
									<td width="200px"></td>
								</tr>								
							</table>

						</ul>

					</div>
				</div>
			</div>
			<br>
			<div class="card">
				<div class="card-header" role="tab" id="headingTwo"
					data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"
					aria-expanded="true" aria-controls="collapseOne" class="collapsed"
					style="cursor: pointer">
					<h5 class="mb-0">
						<img src="resources/images/cart.png" alt="account"
							style="width: 40px; height: 40px;"> <a
							style="color: #a6a6a6; text-decoration: none"
							onmouseover="this.style.color='#000000'"
							onmouseout="this.style.color='#a6a6a6'" class="collapsed"
							data-toggle="collapse" data-parent="#accordion"
							href="#collapseTwo" aria-expanded="true"
							aria-controls="collapseTwo">&nbsp; <b>주문 확인</b></a>
					</h5>
				</div>
				<div id="collapseTwo" class="collapse" role="tabpanel"
					aria-labelledby="headingTwo">
					<div class="card-body">주문기록</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<br>
	<br>

	<%@ include file="views/common/footer.jsp"%>

</body>

</html>