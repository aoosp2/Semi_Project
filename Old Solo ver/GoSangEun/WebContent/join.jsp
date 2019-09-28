<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<%@ include file="views/common/header_log.jsp" %>
	<div class="container">
        <div class="row">
            <div class="col-lg-8 mb-4">
                <div id="signup_wrapper">
                    <h3>회원가입</h3>
                    <h5>*표는 꼭 기입해주세요</h5>
                    <br>
                    <form action="join.do" name="join" id="contactForm" method="post" novalidate>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>이름*</label>
                                <input type="text" class="form-control" name="USER_NAME" required
                                    data-validation-required-message="Please enter your name.">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>ID*</label>
                                <input type="text" class="form-control" name="USER_ID" required
                                    data-validation-required-message="Please enter your ID.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>닉네임*</label>
                                <input type="text" class="form-control" name="USER_NICKNAME" required
                                    data-validation-required-message="Please enter your nickname.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>비밀번호*</label>
                                <input type="password" class="form-control" name="USER_PASSWORD" required
                                    data-validation-required-message="Please enter your password.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>비밀번호 확인*</label>
                                <input type="password" class="form-control" name="USER_PASSWORDENT" required
                                    data-validation-required-message="Please enter your password.">
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>전화번호*</label>
                                <input type="tel" class="form-control" name="USER_PHONE" required
                                    data-validation-required-message="Please enter your phone number.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>이메일</label>
                                <input type="email" class="form-control" name="USER_EMAIL" 
                                    data-validation-required-message="Please enter your email address.">
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>주소*</label>
                                <input type="text" class="form-control" name="USER_ADDRESS" required
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
                                 <select name="USER_CARD" style="border-radius: .25rem;">
                                     <option value=" " >선택</option>
                                     <option value="BC">BC카드</option>
                                     <option value="KB">KB국민카드</option>
                                     <option value="SAMSUNG">삼성카드</option>
                                     <option value="NH">NH농협카드</option>
                                 </select>
                                     <br>
                                     <br>
                                     카드번호 :&nbsp;
                                     <input type="text" class="cardnum" name="cardnum1" style="text-align:center; width:70px; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                     <input type="text" class="cardnum" name="cardnum2" style="text-align:center; width:70px; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                     <input type="text" class="cardnum" name="cardnum3" style="text-align:center; width:70px; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                     <input type="text" class="cardnum" name="cardnum4" style="text-align:center; width:70px; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>
                                     <br>
                                     <br>
                                     유효기간 :&nbsp;
                                     <input type="month" style="width:150px; border-radius: .25rem;"><br>
                                     <br>
                                     주민번호뒷번호 :&nbsp;
                                     XXXXXX &nbsp; - &nbsp; <input type="text" class="cardnum" name="cardnum5" style="text-align:center; width:80px; border-radius: .25rem;" maxlength="7" oninput="maxLengthCheck(this)"/>
                                     <br>
                                     <br>
                                     카드비밀번호 :&nbsp;
                                     <input type="password" class="cardnum" name="cardnum6" style="width:50px; text-align:center; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>
                        
                         		</li>
                                <br>
                            </div>
                        </div>

                        <div id="success"></div>
                        <input type="submit" class="btn btn-primary" id="contactForm" style="width: 140px;" onclick = "location.href ='login.jsp'" value="회원가입">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-primary" id="nojoin" style="width: 140px;" onclick="location.href ='index.jsp'">비회원주문</button>
        </form>
    </div>
    </div>
    </div>
    </div>
    <script>
    $(function(){
        
        $('#USER_PASSWORDENT').change(function(){
            if($('#USER_PASSWORD').val() != $(this).val()){
            	alert("같은 비밀번호를 입력해주세요");
            }
        });

        // 기본 이벤트 동작을 막을 때 사용하는 함수
        $('form').submit(function(event){
            alert("이 내용으로 가입하시겠습니까?");
            event.preventDefault();
        });
    });
	</script>

	<%@ include file="views/common/footer.jsp" %>
</body>
</html>