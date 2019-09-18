<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>주문 확인</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/modern-business.css" rel="stylesheet">

    <!-- CSS icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

</head>

<body>

    <%@ include file = "views/common/header_my.jsp" %>

    <!-- Page Content -->
    <div class="container">
        <br>
        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">마이페이지</h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index_login.html">Home</a>
            </li>
            <li class="breadcrumb-item active">계정설정&주문확인</li>
        </ol>

        <br>

        <div style="border-style: dotted; width: 450px; height: 250px; border-radius: 10px; width:700px; margin:0 auto;">
            <br>
            <div>
                <div style="display: flex; align-content: center;">
                    <div style="margin-left: 30px">
                        <img src="resources/images/boy.png" style="width: 120px;">
                    </div>
                    <div>닉네임 </div>
                </div>

                <br>
                <div style="margin-left: 65px">등급</div>
            </div>
        </div>

        <br>
        <hr style="border: 5px solid gray; border-radius: 4px;">
        <br>

        <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
            <div class="card">
                <div class="card-header" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed" style="cursor: pointer">
                    <h5 class="mb-0">
                        <img src="resources/images/account.png" alt="account" style="width: 40px; height: 40px;">
                        <a style="color: #a6a6a6; text-decoration: none" onmouseover="this.style.color='#000000'" onmouseout="this.style.color='#a6a6a6'" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">&nbsp; <b>계정
                설정</b></a>
                    </h5>
                </div>
                <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne">
                    <div class="card-body">
                        <br>
                        <ul class="edit" style="list-style-type: none; text-align: right; margin-right: 40%;">
                            <li>
                                <h3>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : &nbsp;&nbsp;
                                    <input type="text" style="border-radius: 5px;"></input>
                                </h3>
                            </li>
                            <li>
                                <h3>아 이 디 : &nbsp;
                                    <input type="text" style="border-radius: 5px;"></input>
                                </h3>
                            </li>
                            <li>
                                <h3>비밀번호 : &nbsp;
                                    <input type="text" style="border-radius: 5px;"></input>
                                </h3>
                            </li>
                            <li>
                                <h3>연 락 처 : &nbsp;
                                    <input type="text" style="border-radius: 5px;"></input>
                                </h3>
                            </li>
                            <li>
                                <h3>이 메 일 : &nbsp;
                                    <input type="text" style="border-radius: 5px;"></input>
                                </h3>
                            </li>
                        </ul>
                        <div id="edit" style=" text-align: right; margin-right: 42%;">
                            <br>
                            <input type="button" style="width: 100px; height: 40px; border-radius: 4px;" value="수정">
                            <input type="button" style="width: 100px; height: 40px; border-radius: 4px; margin-left: 20px;" value="완료">
                            <br>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="card">
                <div class="card-header" role="tab" id="headingTwo" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne" class="collapsed" style="cursor: pointer">
                    <h5 class="mb-0">
                        <img src="resources/images/cart.png" alt="account" style="width: 40px; height: 40px;">
                        <a style="color: #a6a6a6; text-decoration: none" onmouseover="this.style.color='#000000'" onmouseout="this.style.color='#a6a6a6'" class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">&nbsp; <b>주문 확인</b></a>
                    </h5>
                </div>
                <div id="collapseTwo" class="collapse show" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="card-body">
                        주문기록
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->
    <br><br>
   
    <%@ include file = "views/common/footer.jsp" %>

</body>

</html>