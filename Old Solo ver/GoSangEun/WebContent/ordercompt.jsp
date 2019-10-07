<%@page import="java.util.ArrayList"%>
<%@page import="model.vo.ShopOrder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String phone = request.getParameter("phone");
   String pay = request.getParameter("pay");
   String orderInfo = request.getParameter("textrequest");
   String addr = request.getParameter("addr");
   String payStr = "";
   if(pay.equals("kakao")){
      payStr = "카카오페이 결제";
   }
   else{
      payStr = "현금결제";
   }

%>   
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>주문완료</title>


    <!-- Custom styles for this template -->
    <link href="resources/css/payment.css" rel="stylesheet"><!-- 지우지 마세요!! -->

</head>


<body>

    <%@ include file = "views/common/header.jsp" %>
    
    <%
   ArrayList<ShopOrder> soList = null;
    if(m != null){
       soList = (ArrayList<ShopOrder>)session.getAttribute("soList");
    }
    else{
       soList = (ArrayList<ShopOrder>)session.getAttribute("noList");
    }
   System.out.println("complete jsp : " + soList);
   int totalPrice = 0;
   for(int i = 0; i < soList.size() ; i++) {
            totalPrice += soList.get(i).getOrderSum();
         }
   totalPrice += soList.get(0).getDvPrice();
   int orderId = (int)((Math.random() * 1000000000) + 1);

   %> 

    <!-- Page Content -->
    <div class="container">
        <br><br><br><br>
        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">주문완료</h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index_login.html">Home</a>
            </li>
            <li class="breadcrumb-item active">주문완료</li>
        </ol>
        <br>

        <p><br><h2 style="text-align: center;">고객님의 주문이 정상적으로 완료되었습니다.</h2><br></p>
       

        <div class="card mb-4">
            <div class="card-body" style = "margin-left : 30%;">
                <h4 class="card-title" style = "margin-left : 15%;">주문 번호 : <%= orderId %></h4>
                  <span style="margin-left:40px;">주문 내역 확인은 마이페이지의 "주문확인"에서 하실 수 있습니다.</span>

                <!-- <p class="card-text">Lorem </p> -->
                <div class="receipt_order_info">
                    <table class="receipt_table">
                        <!-- <tr class="receipt_title"> -->
                        <tr class="receipt_bold_1">
                            <td class="item">상품명</td>
                            <td class="item">수량</td>
                            <td class="item">금액(원)</td>
                            
                        </tr>
                        
                        <% 
                           for(int i=0; i<soList.size(); i++){
                        %>
                        <tr class="line">
                            <td class="txt_align_left2" style="width:230px;">
                                <p class="itemtext"><%= soList.get(i).getMenuName() %></p>
                            </td>
                            <td class="txt_qty" style="width:130px; text-align:left;">
                                <p class="itemtext"><%= soList.get(i).getOrderCount() %></p>
                            </td>
                            <td class="txt_total" style="width:150px;">
                                <p class="itemtext"><%= soList.get(i).getOrderSum() %></p>
                            </td>
                            
                        </tr>
                        
                        <% } %>
                        <tr>
                        <td class="txt_total" style="width:150px;">
                                <p class="itemtext">배달료</p>
                        </td>
                        <td class="txt_total" style="width:150px;">
                                <p class="itemtext"></p>
                        </td>
						<td class="txt_total" style="width:150px; ">
                                <p class="itemtext" style = "margin-left : 10px;"><%= soList.get(0).getDvPrice() %></p>
                        </td>
                        
                        </tr>

                        <tr class="receipt_bold_2">
                            <td class="item_red"></td>
                            <td class="item_red">합계</td>
                            <td class="item_red"><%= totalPrice %></td> 
                        </tr>

                        <br><br>
                        <tr>
                            <td style="width: 10px; border-top: 1px solid lightgray;;">
                                <p class="receipt_info_txt">결제 수단</p>
                            </td>
                            <td colspan="2" style="border-top: 1px solid lightgray;;"><%= payStr %></td>
                        </tr>
                        <tr>
                            <td style="width: 10px;">
                                <p class="receipt_info_txt">핸드폰</p>
                            </td>
                            <td colspan="2"><%= phone %></td>
                        </tr>
                        <tr>
                            <td style="width: 10px;">
                                <p class="receipt_info_txt">주문 요청사항</p>
                            </td>
                            <td colspan="2"><%= orderInfo %></td>
                        </tr>
                        <tr>
                            <td style="width: 10px;">
                                <p class="receipt_info_txt">배달 주소</p>
                            </td>
                            <td colspan="2"><%= addr %></td>
                        </tr>
                        <tr class="line">
                            <!-- <td></td> -->
                        </tr>

                        <!-- colspan=2 -->
                    </table>
                    <!-- /.table -->
                </div>

            </div>
        </div>

        <a href="index.jsp" class="btn btn-primary" style="align-content: center;margin-left : 40%;">메인으로 </a>
        <p></p>
    </div>
    <!-- /.container -->
   
    <%@ include file = "views/common/footer.jsp" %>

</body>
</html>