<%@page import="com.sun.glass.ui.Size"%>
<%@page import="sun.security.util.Length"%>
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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>마이페이지</title>



</head>

<body>
   <%@ include file="views/common/header.jsp"%>
   <br>
   <!-- Page Content -->
   <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">나의 정보</h1>

      <ol class="breadcrumb">
         <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
         <li class="breadcrumb-item active">나의 정보 & 주문 확인</li>
      </ol>
      <br>
      <div
         style="border-style: dotted; width: 450px; height: 250px; border-radius: 10px; width: 700px; margin: 0 auto;">
         <br>
         <div>
            <div style="display: flex; align-content: center;">
               <div style="margin-left: 65px">
                  <img style="width: 100px; height: 100px;"
                     src="resources/images/Rank/<%=m.getRANK()%>.png" alt="">
               </div>
               <div style="margin-left: 65px; margin-top: 20px; font-size: 40px;">
                  <%=m.getUSER_NICKNAME()%>
               </div>
            </div>
            <br> <br>
            <div style="margin-left: 30px; margin-right: 30px;">
               <div class="w3-light-grey w3-round-xlarge">
               
               	<%   if (OHlist.size() != 0) {
               			if(OHlist.get(0).getOrdergroup() <= 10){
               	%>
                  <div class="w3-container w3-blue w3-round-xlarge w3-center"
                     style="width: <%=OHlist.get(0).getOrdergroup() * 10%>%;"><%=OHlist.get(0).getOrdergroup() * 10%>%
                  </div>
                 <%     }
               			else{  %>
               		
               		<div class="w3-container w3-blue w3-round-xlarge w3-center"
                     style="width: <%=10 * 10%>%;"><%=10 * 10%>%
                  </div>		
                 <%			}
                 }
               		 
            %>
               </div>
               <div style="display: flex">
                  <p>Bronze
                  <p style="margin-left: 40%;">Silver
                  <p style="margin-left: 40%;">Gold
               </div>
            </div>
         </div>
         <br>
      </div>

      <br> <br>
      <hr style="border: 5px solid gray;">
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
                     class="collapsed">&nbsp; <b>나의 정보</b></a>
               </h5>
            </div>
            <div id="collapseOne" class="collapse" role="tabpanel"
               aria-labelledby="headingOne">
               <div class="card-body">

                  <div style="margin-left: 5%;">
                     고객님께서 가입하신 헬로,지.상.갑 회원 정보입니다.<br> 안전한 배송 안내를 위하여 핸드폰 번호와 이메일
                     주소를 필히 확인 부탁드립니다
                  </div>
                  <br>
                  <ul class="edit" style="list-style-type: none;">
                     <table align="center"
                        style="font-family: Lucida Console; font-size: 20px;">
                        <tr>
                           <td width="250px">계정</td>
                           <td width="200px">이름</td>
                           <td style="text-align: left; padding-left: 20px;"><%=m.getUSER_NAME()%></td>
                        </tr>
                        <tr style="border-bottom: 1px solid lightgray;">
                           <td width="250px"></td>
                           <td width="200px" height="45px">아이디</td>
                           <td style="text-align: left; padding-left: 20px;"><%=m.getUSER_ID()%></td>

                        </tr>
                        <tr style="border-bottom: 1px solid lightgray; height: 45px;">
                           <td width="250px">닉네임</td>
                           <td style="text-align: left;"><%=m.getUSER_NICKNAME()%></td>
                           <td width="200px"></td>
                        </tr>
                        <tr style="border-bottom: 1px solid lightgray; height: 45px;">
                           <td width="250px">전화번호</td>
                           <td style="text-align: left;"><%=m.getUSER_PHONE()%></td>
                           <td width="200px"></td>
                        </tr>
                        <tr style="border-bottom: 1px solid lightgray; height: 45px;">
                           <td width="250px">이메일</td>
                           <td colspan="2" style="text-align: left;"><%=m.getUSER_EMAIL()%></td>
                        </tr>
                        <tr style="height: 45px;">
                           <td width="250px">주소</td>
                           <td colspan="2" style="text-align: left;"><%=m.getUSER_ADDRESS()%></td>
                        </tr>
                     </table>

                  </ul>
                  <div class="btns" align="center">
                     <a href="MyPage_Update.jsp" class="btn btn-primary"
                        style="width: 140px;" button="">수정하기</a>
                  </div>
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
            <!-- 주문확인 디테일 -->

            
            <%   if (OHlist.size() != 0) {%>

            <%   }
            %>
            <div id="collapseTwo" class="collapse" role="tabpanel"
               aria-labelledby="headingTwo">
               <div class="card-body">
                  <br>
                  <h2 align="center">주문 내역</h2>
                  <br>
                  <div class="tableArea">

                     <style>

#report {
   border-collapse: collapse;
   width: 800px
}

#report h4 {
   margin: 0px;
   padding: 0px;
}

#report th {
   background: #7CB8E2 repeat-x scroll center left;
   color: #fff;
   padding: 7px 15px;
   text-align: left;
}

#report td {
   background: #C7DDEE none repeat-x scroll center left;
   color: #000;
   padding: 17px 35px;
}

#report tr.odd td {
   background: #fff repeat-x scroll center left;
   cursor: pointer;
}

#report div.up {
   background-position: 0px 0px;
}
</style>
                     <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
                     <script>
                        $(document).ready(function() {
                                       $("#report tr:odd").addClass("odd");
                                       $("#report tr:not(.odd)").hide();
                                       $("#report tr:first-child").show(); //열머리글 보여주기
                                       $("#report tr.odd").click(
                                          function() {
                                             $(this).next("tr").toggle();
                                             $(this).find(".arrow").toggleClass("up");
                                          });

                        });
                     </script>

                     <table align="center" id="report">
                        <tr>
                           <th width="200px">No.</th>
                           <th width="300px">Shop</th>
                           <th width="250px">구매날짜</th>
                           <th></th>
                        </tr>

           
                        
                        <%
                        
                        if (OHlist.size() != 0) {
                           ArrayList<Integer> gList = new ArrayList<>();
                           for(int i = 0 ; i < OHlist.size() ; i++){
                              gList.add(OHlist.get(i).getOrdergroup());
                           }
                           for (int i = 0; i < OHlist.size(); i++) { %>
                              <tr>
                                 <td><%=OHlist.get(i).getOrdergroup()%></td>
                                 <td><%=OHlist.get(i).getShopName()%></td>
                                 <td><%=OHlist.get(i).getOrderDate()%></td>
                                 <td><div class="arrow"></div>Detail</td>
                              </tr>
                              <tr align   ="center">
                              	<td colspan="5">
		                        <%      
		                           int totalPrice = 0;
		                           for(int j = gList.indexOf(OHlist.get(i).getOrdergroup()) ; j <= gList.lastIndexOf(OHlist.get(i).getOrdergroup()) ; j++){
		                                 if(j != gList.lastIndexOf(OHlist.get(i).getOrdergroup())){
		                                    totalPrice += OHlist.get(j).getMenuPrice() * OHlist.get(j).getOrderCount();
		                                 }
		                                 else{
		                                    totalPrice += OHlist.get(j).getMenuPrice() * OHlist.get(j).getOrderCount() + OHlist.get(i).getShopDvPrice() ;
		                                 }		                           
		                        %>
                                    
                                 <div style="display: flex;">
	                                 <div><img src="resources/images/FoodMenu/<%=OHlist.get(j).getMenuCode()%>.jpg" style="width:80px; height:80px"></div>&nbsp;&nbsp;&nbsp;
	                                 <div><%=OHlist.get(j).getMenuName()%> X <%=OHlist.get(j).getOrderCount()%>개 &nbsp;
	                                 <%=OHlist.get(j).getMenuPrice() * OHlist.get(j).getOrderCount() %>원 <br></div>
                                 </div>               
                                                              
                                 
                       			 <% } %>
                                 <div>
				                                 배달료 &nbsp; <%=OHlist.get(i).getShopDvPrice()%>원 <br>
				                                 총 가격 &nbsp; <%= totalPrice %>원
                                 </div>
                              </td>
                        	</tr>
                           
                        <%
                              i = gList.lastIndexOf(OHlist.get(i).getOrdergroup()) ;
                        	}
                        }
                        %>

                     </table>
                  </div>

               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- /.container -->
   <br>
   <br>
   <br>
   <%@ include file="views/common/footer.jsp"%>
</body>

</html>