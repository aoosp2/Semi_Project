<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<!-- �ΰ� ��ư -->
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

    <title>ȸ������</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/modern-business.css" rel="stylesheet">

</head>


	<%@ include file = "views/common/header_log.jsp" %>


<body>
    <!-- ȸ�� ���� �κ� -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mb-4">
                <div id="signup_wrapper">
                    <h3>ȸ������</h3>
                    <h5>*ǥ�� �� �������ּ���</h5>
                    <br>
                    <form name="join" id="contactForm" novalidate>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>�̸�*</label>
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
                                <label>�г���*</label>
                                <input type="text" class="form-control" id="nickname" required
                                    data-validation-required-message="Please enter your nickname.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>��й�ȣ*</label>
                                <input type="password" class="form-control" id="password" required
                                    data-validation-required-message="Please enter your password.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>��й�ȣ Ȯ��*</label>
                                <input type="password" class="form-control" id="passwordent" required
                                    data-validation-required-message="Please enter your password.">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>��ȭ��ȣ*</label>
                                <input type="tel" class="form-control" id="phone" required
                                    data-validation-required-message="Please enter your phone number.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>�̸���</label>
                                <input type="email" class="form-control" id="email" required
                                    data-validation-required-message="Please enter your email address.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>�ּ�*</label>
                                <input type="text" class="form-control" id="text" required
                                    data-validation-required-message="Please enter your address">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls" id="card">
                                <label>ī�� ���</label>
                                <br>
                                <br>
                                <li style="list-style-type: none;">
                                    ī������ :&nbsp;
                                    <form action="##" method="get">
                                        <select name="mycard">
                                            <option value="" selected="">����</option>
                                            <option value="BC">BCī��</option>
                                            <option value="KB">KB����ī��</option>
                                            <option value="SAMSUNG">�Ｚī��</option>
                                            <option value="NH">NH����ī��</option>
                                        </select>
                                            <br>
                                            <br>
                                            ī���ȣ :&nbsp;
                                            <input type="text" class="cardnum" name="cardnum1" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                            <input type="text" class="cardnum" name="cardnum2" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                            <input type="text" class="cardnum" name="cardnum3" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                            <input type="text" class="cardnum" name="cardnum4" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>
                                            <br>
                                            <br>
                                            ��ȿ�Ⱓ :&nbsp;
                                            <input type="month" style="width:140px;"><br>
                                            <br>
                                            �ֹι�ȣ�޹�ȣ :&nbsp;
                                            XXXXXX &nbsp; - &nbsp; <input type="text" class="cardnum" name="cardnum5" style="text-align:center; width:80px;" maxlength="7" oninput="maxLengthCheck(this)"/>
                                            <br>
                                            <br>
                                            ī���й�ȣ :&nbsp;
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
                        <button type="submit" class="btn btn-primary" id="joinbtn" style="width: 140px;">ȸ������</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="submit" class="btn btn-primary" id="nojoin" style="width: 140px;">��ȸ���ֹ�</button>
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