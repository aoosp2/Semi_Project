<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<!-- 로고 버튼 -->
<style>
    button.navbar-brand {
        width: 130px;
        height: 70px;
    }
    
    #signup_wrapper {
        margin-bottom: 20px;
        background: white;
        box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
    }
    
    body {
        background: #ffffff !important;
        padding-top: 100px !important;
    }
    
    #card {
        width: 610px;
        height: auto;
        background-color: rgb(211, 242, 252);
    }
</style>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>회원가입</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/modern-business.css" rel="stylesheet">

</head>


	<%@ include file = "views/common/header_log.jsp" %>


<body>
    <!-- 회원 가입 부분 -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mb-4">
                <div id="signup_wrapper">
                    <h3>회원가입</h3>
                    <h5>*표는 꼭 기입해주세요</h5>
                    <br>
                    <form name="join" id="contactForm" novalidate>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>이름*</label>
                                <input type="text" class="form-control" id="name" required
                                    data-validation-required-message="Please enter your name.">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>ID*</label>
                                <input type="text" class="form-control" id="id" required
                                    data-validation-required-message="Please enter your ID.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>닉네임*</label>
                                <input type="text" class="form-control" id="nickname" required
                                    data-validation-required-message="Please enter your nickname.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>비밀번호*</label>
                                <input type="password" class="form-control" id="password" required
                                    data-validation-required-message="Please enter your password.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>비밀번호 확인*</label>
                                <input type="password" class="form-control" id="passwordent" required
                                    data-validation-required-message="Please enter your password.">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>전화번호*</label>
                                <input type="tel" class="form-control" id="phone" required
                                    data-validation-required-message="Please enter your phone number.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>이메일</label>
                                <input type="email" class="form-control" id="email" required
                                    data-validation-required-message="Please enter your email address.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>주소*</label>
                                <input type="text" class="form-control" id="text" required
                                    data-validation-required-message="Please enter your address">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls" id="card">
                                <label>카드 등록</label>
                                <br>
                                <br>
                                <li style="list-style-type: none;">
                                    카드종류 :&nbsp;
                                    <form action="##" method="get">
                                        <select name="mycard">
                                            <option value="" selected="">선택</option>
                                            <option value="BC">BC카드</option>
                                            <option value="KB">KB국민카드</option>
                                            <option value="SAMSUNG">삼성카드</option>
                                            <option value="NH">NH농협카드</option>
                                        </select>
                                            <br>
                                            <br>
                                            카드번호 :&nbsp;
                                            <input type="text" class="cardnum" name="cardnum1" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                            <input type="text" class="cardnum" name="cardnum2" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                            <input type="text" class="cardnum" name="cardnum3" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                            <input type="text" class="cardnum" name="cardnum4" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>
                                            <br>
                                            <br>
                                            유효기간 :&nbsp;
                                            <input type="month" style="width:140px;"><br>
                                            <br>
                                            주민번호뒷번호 :&nbsp;
                                            XXXXXX &nbsp; - &nbsp; <input type="text" class="cardnum" name="cardnum5" style="text-align:center; width:80px;" maxlength="7" oninput="maxLengthCheck(this)"/>
                                            <br>
                                            <br>
                                            카드비밀번호 :&nbsp;
                                            <input type="password" class="cardnum" name="cardnum6" style="width:50px; text-align:center;" maxlength="4" oninput="maxLengthCheck(this)"/>
                                            
                                            <script>
                                            function maxLengthCheck(object){
                                                if (object.value.length > object.maxLength){
                                                object.value = object.value.slice(0, object.maxLength);
                                                }    
                                            }
                                            </script>
                                    </form>
                                </li>
                                <br>
                            </div>
                        </div>

                        <div id="success"></div>
                        <button type="submit" class="btn btn-primary" id="joinbtn" style="width: 140px;">회원가입</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="submit" class="btn btn-primary" id="nojoin" style="width: 140px;">비회원주문</button>
        </form>
    </div>
    </div>

    </div>
    <!-- /.row -->

    </div>
    <!-- /.container -->
    </body>

    
    <%@ include file = "views/common/footer.jsp" %>


</html>