<%@page import="model.vo.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  ShopOrder sod = (ShopOrder)request.getAttribute("ShopOrder"); 
   //Member m = (Member)session.getAttribute("member"); 
    //System.out.println("payment"+m);
    // 장바구니 객체 - 주문내역
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>결제하기</title>

    <!-- Custom styles for this template -->
    <link href="resources/css/payment.css" rel="stylesheet"><!-- 지우지 마세요!! -->
</head>

<body>
    
    <%-- <%@ include file = "views/common/header_my.jsp" %> --%>
    <%@ include file = "views/common/header.jsp" %>

    <!-- Page Content -->
    <div class="container">
        <br><br><br><br>
        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3"> 결제하기
            <!-- <small>Subheading</small> -->
        </h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index_login.html">Home</a>
            </li>
            <li class="breadcrumb-item active">결제하기</li>
        </ol>
        <br>
        <div class="row">
            <!-- Blog Entries Column -->
            <div class="col-md-8">

                <!-- Blog Post -->
                <div class="pay">
                    <h4 class="pay_header">배달정보</h4>
                        <div class="delivery_content">
                           <input type="radio" name="radioTxt" id="radioChk" value="addAddr" style="margin-left: 50px;">&nbsp;&nbsp;새로 입력<br><br>
                            <div class="pay_h_txt">
                                <label>주소</label>
                            </div>
                            <input type="text" size="75" name="addr" value="<%= m.getUSER_ADDRESS() %>" readonly="readonly" disabled="disabled" style="float: left;"><br><br>
                            <!-- <input type="text" size="75" name="addr" value="서울특별시 강남구 역삼동 823-25 KH정보교육원 강남지원1관" readonly="readonly" disabled="disabled" style="float: left;"> -->
                            <!-- <div class="pay_h_txt">
                                <label></label>
                            </div> -->
                            <!-- <input type="text" size="75" name="addr_detail" placeholder="(필수) 상세주소 입력" required="required"> -->
                            <div class="pay_h_txt">
                                <label>핸드폰</label>
                            </div>
                            <input type="text" size="75" required="required" value="<%= m.getUSER_PHONE() %>" >
                            <!-- 핸드폰 번호만 입력되도록, 안심번호 클릭 -->
                        </div>
                        <br>
                        <h4 class="pay_header">주문시 요청사항</h4>
                        <div class="order_request">
                            <textarea name="textrequest" id="area" rows="4" cols="93" placeholder="주문시 요청 사항이 있으시면 남겨주세요."></textarea>
                            <!-- textarea 글자수 카운팅 -->
                        </div>
                        <br>
                        <h4 class="pay_header">결제수단 선택</h4>
                        <div class="pay_select_list_wrapper">
                            <br>
                            <!-- <label>현장결제 음식받고 직접 결제</label> -->
                            <ul class="p_select_list">
                                <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="card_box">
                                        <div class="card-header" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed" style="cursor: pointer; border-radius: 4px;">
                                            <h5 class="mb-0">
                                                <img src="resources/images/account.png" alt="account" style="width: 40px; height: 40px;">
                                                <a style="color: #a6a6a6; text-decoration: none" onmouseover="this.style.color='#000000'" onmouseout="this.style.color='#a6a6a6'" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">&nbsp;
                                                    <b>신용/체크카드</b></a>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne" style="height : 210px;">
                                            <div class="card-body" >
                                                <!-- <ul><input type="checkbox" name="checkbox">내 정보 불러오기 <br><br> -->
                                                <div style = "height : 300px;"> 
                                                <input type="checkbox" name="checkbox" style= "margin-left : 45px;">카드 정보 불러오기 <br><br>
                                                    <ul class="edit" style="list-style-type: none;">
                                                        <li>
                                                            <h6>
                                                                카드종류: &nbsp;
                                                            </h6><br>
                                                            
                                                        </li>
                                                        <li>
                                                            <select>
                                                                <option value="" selected="">선택</option>
                                                                <option value="BC">BC카드</option>
                                                                <option value="KB">KB국민카드</option>
                                                                <option value="SAMSUNG">삼성카드</option>
                                                                <option value="NH">NH농협카드</option>
                                                            </select>
                                                            <!-- <h6>카드번호: &nbsp;</h6> -->
                                                            <!-- <div class="card-body-sub"></div> -->
                                                            <!-- <h6>카드번호: </h6>
                                                            <input type="text" size="4" name="card_1">-<input type="text" size="4" name="card_2">
                                                            -<input type="text" size="4" name="card_3">-<input type="text" size="4" name="card_3"> -->
                                                        </li><br><br>
                                                        <li style = "margin-left : -77px;">
                                                        <h6 > 카드번호: </h6>
                                                        </li>
                                                        <li >
                                                            <input type="text" class="cardnum" name="cardnum1" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                                            <input type="text" class="cardnum" name="cardnum2" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                                            <input type="text" class="cardnum" name="cardnum3" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>&nbsp;-&nbsp;
                                                            <input type="text" class="cardnum" name="cardnum4" style="text-align:center; width:70px;" maxlength="4" oninput="maxLengthCheck(this)"/>
                                                            <!-- <input type="text" size="4" name="card_1">-<input type="text" size="4" name="card_2">-<input type="text" size="4" name="card_3">-<input type="text" size="4" name="card_3"> -->
                                                        </li> 
                                                        <li>
                                                            <br>유효기간 :&nbsp;
                                                            <input type="month" style="width:140px;"><br>
                                                        </li>
                                                        <br><br><br>
                                                        <li style = "margin-left : -220px;">
                                                            <br>주민번호뒷번호 :&nbsp;
                                                            XXXXXX &nbsp; - &nbsp; <input type="text" class="cardnum" name="cardnum5" style="text-align:center; width:80px;" maxlength="7" oninput="maxLengthCheck(this)"/>
                                                            <br>
                                                        </li>
                                                        
                                                        <li style = "margin-left : -300px;">
                                                            <br><br><br>
                                                                  카드비밀번호 :&nbsp;
                                                            <input type="password" class="cardnum" name="cardnum6" style="width:50px; text-align:center;" maxlength="4" oninput="maxLengthCheck(this)"/>
                    
                                                        </li>
                                                    </ul>
                                                </div>       

                                                    
                                                <!-- </ul> -->
                                            </div>
                                            <br>
                                        </div>
                                    </div>

                                    <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
                                        <div class="card_box">
                                            <div class="card-header" role="tab" id="headingTwo" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseOne" class="collapsed" style="cursor: pointer;  border-radius: 4px;">
                                                <h5 class="mb-0">
                                                    <img src="resources/images/account.png" alt="account" style="width: 40px; height: 40px;">
                                                    <a style="color: #a6a6a6; text-decoration: none" onmouseover="this.style.color='#000000'" onmouseout="this.style.color='#a6a6a6'" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">&nbsp; <b>현금</b></a>
                                                </h5>
                                            </div>
                                            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                <div class="card-body">
                                                       현장에서 결제
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </div>
                        <br>
                        <!-- /. paytype_content -->
                </div>
            </div>

            <!-- Sidebar Widgets Column -->
            <div class="col-md-4" style="height: 300px;">
                <!-- Search Widget -->
                <div class="card mb-4">
                    <h5 class="card-header">주문내역</h5>
                    <div class="card-body" style="height: 150px;">
                        <div class="input-group">
                            <label>KH정식 - 역삼점</label><br>
                        </div>
                        <div class="input-group2">
                            <label>파닭치킨 x 1개
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                20,000</label><br>
                            <label>양념치킨 x 1개
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                20,000</label><br>
                            <label>배달료
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3,000</label><br>
                        </div>
                    </div>
                    <div class="input-group3">
                        <label>&nbsp;&nbsp;&nbsp;&nbsp;총 결제금액
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;43,000</label>
                    </div>
                </div>
                <div class="order-button">
                    <button class="btn btn-secondary" type="button" onclick="location.href='oInsert.go'" style="width: 350px;">주문하기</button>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->
    
    <script>
       $(function(){
          var beforeChecked = -1;
          $('#radioChk').click(function() {
               /* var checked = $(this).attr('checked', true);
               //$(this).prop('checked', false);
               if(checked){ 
                 $(this).attr('checked', false);
               }
               else{ 
                 $(this).attr('checked', true);
               } 
             }); */
          
//            $("input:radio[name='radioTxt']:radio[value='VALUE']").attr("checked", true);
//         $("input:radio[name='radioTxt'].removeAttr("checked");
              
             /*  $(document).on("click", "input[type=radio]", function(e) {
                  
                  var index = $(this).parent().index("label");
                  if(beforeChecked == index) {
                  beforeChecked = -1;
                  $(this).prop("checked", false);
                  
                  }else{
                  beforeChecked = index;
                  } */
           // });
        });
    </script>

   
    <%@ include file = "views/common/footer.jsp" %>

</body>

</html>