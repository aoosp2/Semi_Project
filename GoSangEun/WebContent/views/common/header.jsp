<%@page import="java.util.ArrayList"%>
<%@page import="model.vo.ShopOrder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="model.vo.Member"%>
<%
   Member m = (Member) session.getAttribute("member");
   ArrayList<ShopOrder> olist = (ArrayList<ShopOrder>) session.getAttribute("ShopOrder");
%>
<!DOCTYPE html>
<html>

<head>
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

   <!-- Bootstrap core CSS -->
   <link href="resources/css/bootstrap.min.css" rel="stylesheet">

   <!-- Custom styles for this template -->
   <link href="resources/css/modern-business.css" rel="stylesheet">

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

   <!-- Bootstrap core CSS -->
   <link href="resources/vendor/src/ihover.css" rel="stylesheet">

   <script src="resources/js/bootstrap.bundle.min.js"></script>

   <!-- CSS font -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <!-- favicon erroe -->
   <link rel="shortcut icon" href="">
   <!-- 폰트 -->
   <link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">

   <style>
      *,
      a,
      h1 {
         font-family: 'Sunflower';
      }

   </style>

</head>

<body>
   <!-- Navigation -->
   <%
      if (m == null) {
   %>
   <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
         <a class="navbar-brand" href="index.jsp"><img src="resources/images/logo.png" alt="logo"
               style="width: 120px;"></a>
         <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>

         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item active dropdown">
                  <a class="nav-link dropdown-toggle" href="MyPage.jsp" id="navbarDropdownBlog"
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 장바구니 </a>
                  <!-- servlet으로 이동 -->
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio"
                     style="width: 220px; height: auto;">
                     <div class="dropdown-item-text" style="padding-left: 47px;">장바구니
                        목록</div>
                     <div class="card">
                        <div>치킨메뉴1</div>
                        <div class="text-right">20,000원</div>
                     </div>
                     <div class="card">
                        <div>치킨메뉴2</div>
                        <div class="text-right">20,000원</div>
                     </div>
                     <hr>
                     <div class="card" style="color: red;">
                        <div style="font-size: 20px;">총 금액</div>
                        <div class="text-right">40,000원</div>
                     </div>
                     <a class="dropdown-item;" href="payment.jsp"
                        style="font-size: 20px; float: right; margin-right: 10px;">구매하기</a>
                  </div>
               </li>

               <li class="nav-item">
                  <a class="nav-link dropdown-toggle" href="login.jsp" style="color: #fff;">로그인</a>
               </li>
            </ul>
         </div>
      </div>
   </nav>
   <%
      } else {
   %>
   <!-- Navigation -->
   <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
         <a class="navbar-brand" href="index.jsp">
            <img src="resources/images/logo.png" alt="logo" style="width: 120px;">
         </a>
         <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item active dropdown">
                  <a class="nav-link dropdown-toggle" href="MyPage.jsp" id="navbarDropdownBlog"
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 장바구니 </a>
                  <!-- servlet으로 이동 -->
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio"
                     style="width: 220px; height: auto;">
                     <div class="dropdown-item-text" style="font-size: 18px;">장바구니 목록</div>
                     <%
                           int total = 0;
                         for(int i=0; i<olist.size(); i++) { %>
                     <div class="card">
                        <div style="font-size: 20px;"><%= olist.get(i).getMenuName() %></div>
                        <div class="text-right" style="font-size: 20px;">
                           <%= olist.get(i).getOrderCount() %>개 :
                           &nbsp;&nbsp;<%= olist.get(i).getOrderSum() / olist.get(i).getOrderCount() %>원</div>
                        <a href="#" class="text-right" style="color: red;" onclick="deleteOrderMenu();">취소</a>
                        <form action="/GoSangEun/OrderDelete.s" method="get" name="deleteOrder">
                           <input type="hidden" name="orderNo" value="<%= olist.get(i).getOrderId() %>">
                           <input type="hidden" name="reURI">
                        </form>
                        <script>
                           function deleteOrderMenu() {
                              var returnURL = document.URL;
                              $('input[name="reURI"]').val(returnURL);
                              alert($('input[name=reURI]').val());
                              $('form[name=deleteOrder]').submit();
                           }
                        </script>
                     </div>
                     <% total += olist.get(i).getOrderSum(); %>
                     <% } %>
                     <hr>
                     <div class="card" style="color: red;">
                        <div style="font-size: 20px;">총 금액</div>
                        <div class="text-right" style="font-size: 35px;"><%= total %>원</div>
                     </div>
                     <a class="dropdown-item;" href="payment.jsp"
                        style="font-size: 20px; float: right; margin-right: 10px;">구매하기</a>
                  </div>
               </li>
               <li class="nav-item active dropdown">
                  <a class="nav-link dropdown-toggle" href="MyPage.jsp" id="navbarDropdownBlog"
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <img style="width: 25px; height: 25px;" src="resources/images/Rank/<%=m.getRANK()%>.png"
                        alt=""><%=m.getUSER_NICKNAME()%>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                     <a class="dropdown-item" href="MyPage.jsp">나의 정보</a>
                     <a class="dropdown-item" href="MyPage.jsp">주문 확인</a>
                     <a class="dropdown-item" onclick='logout()'>로그아웃</a>
                  </div>
               </li>
            </ul>
         </div>
      </div>
   </nav>
   <%
      }
   %>

   <script>
      function logout() {
         location.href = "/GoSangEun/logout.me";
      }

   </script>
</body>

</html>