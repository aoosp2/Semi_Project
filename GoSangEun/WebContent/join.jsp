<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<%@ include file="views/common/header_log.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mb-4">
				<div id="signup_wrapper">
					<h3>회원가입</h3>
					<h5>*표는 꼭 기입해주세요</h5>
					<br>
					<form action="join.do" name="join" id="contactForm" method="post"
						onsubmit="return check()">
						<div class="control-group form-group">
							<div class="controls">
								<label>이름*</label> <input type="text" class="form-control"
									name="USER_NAME">
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>ID*</label> <input type="text" class="form-control"
									name="USER_ID"> <input type="button" name="confirm_id"
									value="중복확인" onclick="openConfirmid(this.form)" />
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>닉네임*</label> <input type="text" class="form-control"
									name="USER_NICKNAME">
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>비밀번호*</label> <input type="password" id="pwd1"
									class="form-control" name="USER_PASSWORD">
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>비밀번호 확인*</label> <input type="password" id="pwd2"
									class="form-control" name="USER_PASSWORDENT">
								<div class="alert alert-success" id="alert-success">비밀번호가
									일치합니다.</div>
								<div class="alert alert-danger" id="alert-danger">비밀번호가
									일치하지 않습니다.</div>
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>전화번호*</label> <input type="tel" class="form-control"
									name="USER_PHONE">
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>이메일</label> <input type="email" class="form-control"
									name="USER_EMAIL">
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>주소*</label> <input type="text" class="form-control"
									name="USER_ADDRESS">
							</div>
						</div>
						<!-- <div class="control-group form-group">
                            <div class="controls" id="card">
                                <label>카드 등록</label>
                                <br>
                                <br>
                                <li style="list-style-type: none;">
                                    카드종류 :&nbsp;
                                 <select name="CARD_NAME" style="border-radius: .25rem;">
                                     <option value=" " >선택</option>
                                     <option value="BC">BC카드</option>
                                     <option value="KB">KB국민카드</option>
                                     <option value="SAMSUNG">삼성카드</option>
                                     <option value="NH">NH농협카드</option>
                                 </select>
                                     <br>
                                     <br>
                                     카드번호 :&nbsp;
                                     <input type="text" class="cardnum" name="CARD_NO1" style="text-align:center; width:70px; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                     <input type="text" class="cardnum" name="CARD_NO2" style="text-align:center; width:70px; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                     <input type="text" class="cardnum" name="CARD_NO3" style="text-align:center; width:70px; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                     <input type="text" class="cardnum" name="CARD_NO4" style="text-align:center; width:70px; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>
                                     <br>
                                     <br>
                                     유효기간 :&nbsp;
                                     <input type="month" name="CARD_DATE" style="width:150px; border-radius: .25rem;"><br>
                                     <br>
                                     주민번호뒷번호 :&nbsp;
                                     XXXXXX &nbsp; - &nbsp; <input type="text" class="cardnum" name="USER_RRN" style="text-align:center; width:80px; border-radius: .25rem;" maxlength="7" oninput="maxLengthCheck(this)"/>
                                     <br>
                                     <br>
                                     카드비밀번호 :&nbsp;
                                     <input type="password" class="cardnum" name="CARD_PASSWORD" style="width:50px; text-align:center; border-radius: .25rem;" maxlength="4" oninput="maxLengthCheck(this)"/>
                        
                               </li>
                                <br>
                            </div>
                        </div> -->
						<div id="success"></div>
						<input type="submit" id="submit" class="btn btn-primary"
							id="contactForm" style="width: 140px;" value="회원가입">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-primary" id="nojoin" style="width: 140px;"
							onclick="location.href ='index.jsp'">비회원주문</button>
					</form>

					<script type="text/javascript">
						$(function() {
							$("#alert-success").hide();
							$("#alert-danger").hide();
							$("input").keyup(
									function() {
										var pwd1 = $("#pwd1").val();
										var pwd2 = $("#pwd2").val();
										if (pwd1 != "" || pwd2 != "") {
											if (pwd1 == pwd2) {
												$("#alert-success").show();
												$("#alert-danger").hide();
												$("#submit").removeAttr(
														"disabled");
											} else {
												$("#alert-success").hide();
												$("#alert-danger").show();
												$("#submit").attr("disabled",
														"disabled");
											}
										}
									});
						});

						function check() {
							if (!document.user)

						}
					</script>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="views/common/footer.jsp"%>
</body>
</html>