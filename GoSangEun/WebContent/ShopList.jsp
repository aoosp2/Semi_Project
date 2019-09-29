<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- 수진쓰 페이지 -->

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  
</head>

<body onload="defaultCheck();">
    
    <%@ include file = "views/common/header.jsp" %>

    <!-- Page Content -->
    <div class="container">
        <br><br>
        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">식당 리스트</h1>
        <ol class="breadcrumb">
            <li id="choice" style="margin-left: 50%; font-size: 25px;">한&nbsp;식</li>
        </ol>
        <!-- /.Page Heading/Breadcrumbs -->

        <div style="display: flex ;">
            <div class="col-lg-2" style="text-align: center; ">
                <a href="#" class="list-group-item" onclick="changeCate(this);">한식</a>
                <a href="#" class="list-group-item" onclick="changeCate(this);">중식</a>
                <a href="#" class="list-group-item" onclick="changeCate(this);">일식</a>
                <a href="#" class="list-group-item" onclick="changeCate(this);">피자</a>
                <!-- <a href="about.html" class="list-group-item" onclick="changeCate(this);">치킨</a> -->
                <a href="#" class="list-group-item" onclick="changeCate(this);">치킨</a>
                <a href="#" class="list-group-item" onclick="changeCate(this);">분식</a>
                <a href="#" class="list-group-item" onclick="changeCate(this);">나만의 메뉴</a>
            </div>

            <div class="row view" style="width: 780px; ; height:600px; overflow:hidden;border-color : white;">
                <div class="row pre-scrollable myScroll" style="width: 830px; ;max-height: 600px;border-color : white;margin-right: -30px;">
                    <!-- 식당 content -->
                    <div class="col-lg-11" style="border-radius: 5px; border: 0.5px solid gainsboro ; margin-left :  5%; margin-bottom: 23px;">
                        <div style="display: flex;">
                            <div style="margin-top: 25px; margin-left: 25px;">
                                <a href="#"><img class="img-fluid rounded" src="resources/images/마부육전.PNG" alt="" style="width : 150px; height : 150px;"></a>
                            </div>

                            <div style="margin-left: 30px;margin-top: 28px;">
                                <h2 class="card-title shopName">마부육전</h2>
                                <br>
                                <p class="card-text shopText">마부육전은 육회비빔밥이 맛있어요</p>
                                <p class="card-text shopInfo">평점 ★4.2 리뷰 23 최소금액 15000원 소요시간 15-20분</p>
                            </div>
                        </div>
                        <div style="margin-top: 25px; margin-left: 3% ; float:right; margin-right : 20px; margin-bottom: 20px; ">
                            <a href="#" class="btn btn-primary more" onclick="goMore();">&nbsp;&nbsp;&nbsp; More
                            &rarr;&nbsp;&nbsp;</a>
                        </div>
                    </div>
                    <!-- /.식당 content -->

                    <!-- 식당 content -->
                    <div class="col-lg-11" style="border-radius: 5px; border: 0.5px solid gainsboro ; margin-left : 5%;margin-bottom: 23px;">
                        <div style="display: flex;">
                            <div style="margin-top: 25px; margin-left: 25px;">
                                <a href="#"><img class="img-fluid rounded" src="resources/images/봉된장.PNG" alt="" style="width : 150px; height : 150px;"></a>
                            </div>

                            <div style="margin-left: 30px; margin-top: 28px; ">
                                <h2 class="card-title shopName">봉된장</h2>
                                <br>
                                <p class="card-text shopText">봉된장은 6번메뉴가 제일 맛있어요 꼭 드세요</p>
                                <p class="card-text shopInfo">평점 ★4.7 리뷰 42 최소금액 20000원 소요시간 30-40분</p>
                            </div>
                        </div>
                        <div style="margin-top: 25px; margin-left: 3% ; float:right; margin-right : 20px; margin-bottom: 20px; ">
                            <a href="#" class="btn btn-primary more">&nbsp;&nbsp;&nbsp; More &rarr;&nbsp;&nbsp;</a>
                        </div>
                    </div>
                    <!-- /.식당 content -->



                    <script>
                        $(function() {
                            var input = "";
                            for (var i = 0; i < 5; i++) {
                                input = '<div class="col-lg-11" style="border-radius: 5px; border: 0.5px solid gainsboro ; margin-left : 5%; margin-bottom: 23px;">' +
                                    '<div style="display: flex;">' +
                                    '<div style="margin-top: 25px; margin-left: 25px;">' +
                                    '<a href="#"><img class="img-fluid rounded" src="http://placehold.it/750x300" alt="" style="width : 150px; height : 150px;"></a>' +
                                    '</div>' +
                                    '<div style="margin-left: 30px;margin-top: 28px;">' +
                                    '<h2 class="card-title shopName">준비중' + (i + 1) +
                                    '</h2>' +
                                    '<br>' +
                                    '<p class="card-text shopText">현재 준비중 입니다</p>' +
                                    '<p class="card-text shopInfo">평점 --- 리뷰 --- 최소금액 --- 소요시간 ---</p>' +
                                    '</div>' +
                                    '</div>' +
                                    '<div style="margin-top: 25px; margin-left: 3% ; float:right; margin-right : 20px; margin-bottom: 20px; ">' +
                                    '<a href="#" class="btn btn-primary more">&nbsp;&nbsp;&nbsp; More &rarr;&nbsp;&nbsp;</a>' +
                                    '</div>' +
                                    '</div>';
                                $(".myScroll").append(input);

                            }
                        });
                    </script>




                    <!-- 식당 content -->
                    <!-- <div class="col-lg-11" style="border-radius: 5px; border: 0.5px solid gainsboro ; margin-left : 5%;margin-bottom: 5px;">
                    <div style="display: flex;">
                        <div style="margin-top: 25px; margin-left: 25px;">
                            <a href="#"><img class="img-fluid rounded" src="http://placehold.it/750x300" alt="" style="width : 150px; height : 150px;"></a>
                        </div>

                        <div style="margin-left: 30px; margin-top: 28px;">
                            <h2 class="card-title shopName">준비중2</h2>
                            <br>
                            <p class="card-text shopText">현재 준비중 입니다</p>
                            <p class="card-text shopInfo">평점 --- 리뷰 --- 최소금액 --- 소요시간 ---</p>
                        </div>
                    </div>
                    <div style="margin-top: 25px; margin-left: 3% ; float:right; margin-right : 20px; margin-bottom: 20px; ">
                        <a href="#" class="btn btn-primary more">&nbsp;&nbsp;&nbsp; More &rarr;&nbsp;&nbsp;</a>
                    </div>
                </div> -->
                    <!-- /.식당 content -->


                </div>
            </div>

            <script>
                function defaultCheck() {
                    var others = document.getElementsByClassName("list-group-item");

                    others[0].style.background = "crimson";
                    others[0].style.color = "snow";
                }

                function changeCate(obj) {

                    var choice = document.getElementById("choice");
                    var others = document.getElementsByClassName("list-group-item");

                    var cate = obj.innerText.split("");
                    var change = "";

                    var shopName = document.getElementsByClassName("shopName");
                    var shopText = document.getElementsByClassName("shopText");
                    var shopInfo = document.getElementsByClassName("shopInfo");
                    var shopImg = document.getElementsByClassName("img-fluid");

                    $(".myScroll").scrollTop(0);
                    for (var i = 0; i < cate.length; i++) {
                        if (obj.innerText == "나만의 메뉴") {
                            choice.style.marginLeft = "42%";
                        } else {
                            choice.style.marginLeft = "50%";
                        }
                        change += cate[i] + "&nbsp;&nbsp;&nbsp;&nbsp;";
                    }
                    choice.innerHTML = change;

                    for (var i = 0; i < others.length; i++) {
                        if (obj.innerText != others[i].innerText) {
                            others[i].style.background = "white";
                            others[i].style.color = "black";
                        } else {
                            others[i].style.background = "crimson";
                            // others[i].style.opacity = "0.8";
                            others[i].style.color = "snow";
                        }
                    }

                    if (obj.innerText == "한식") {
                        shopName[0].innerText = "마부육전";
                        shopName[1].innerText = "봉된장";
                        shopName[2].innerText = "중비중1";
                        shopName[3].innerText = "준비중2";

                        shopText[0].innerText = "봉된장은 6번메뉴가 제일 맛있어요 꼭 드세요";
                        shopText[1].innerText = "봉된장은 6번메뉴가 제일 맛있어요 꼭 드세요";
                        shopText[2].innerText = "현재 준비중 입니다";
                        shopText[3].innerText = "현재 준비중 입니다";

                        shopInfo[0].innerText = "평점 ★4.2 리뷰 23 최소금액 15000원 소요시간 15-20분";
                        shopInfo[1].innerText = "평점 ★4.7 리뷰 42 최소금액 20000원 소요시간 30-40분";
                        shopInfo[2].innerText = "평점 --- 리뷰 --- 최소금액 --- 소요시간 ---";
                        shopInfo[3].innerText = "평점 --- 리뷰 --- 최소금액 --- 소요시간 ---";

                        shopImg[0].src = "resources/images/마부육전.PNG";
                        shopImg[1].src = "resources/images/봉된장.PNG";
                        shopImg[2].src = "http://placehold.it/750x300";
                        shopImg[3].src = "http://placehold.it/750x300";

                    } else if (obj.innerText == "치킨") {
                        for (var i = 0; i < 4; i++) {
                            if (i == 0) {
                                shopName[i].innerText = "치킨집01";
                                shopText[i].innerText = "치킨먹자아아 ~~ ";
                                shopInfo[i].innerText = "평점 ★4.0 리뷰 30 최소금액 18000원 소요시간 30-45분";
                                shopImg[i].src = "resources/images/치킨01.PNG";
                            } else {
                                shopName[i].innerText = "준비중" + i;
                                shopText[i].innerText = "현재 준비중 입니다";
                                shopInfo[i].innerText = "평점 --- 리뷰 --- 최소금액 --- 소요시간 ---";
                                shopImg[i].src = "http://placehold.it/750x300";
                            }
                        }
                    } else {
                        for (var i = 0; i < 7; i++) {

                            shopName[i].innerText = "준비중" + (i + 1);
                            shopText[i].innerText = "현재 준비중 입니다";
                            shopInfo[i].innerText = "평점 --- 리뷰 --- 최소금액 --- 소요시간 ---";
                            shopImg[i].src = "http://placehold.it/750x300";

                        }
                    }
                }

                function goMore() {
                    var choice = document.getElementById("choice");
                    var more = document.getElementsByClassName("more");

                    if (choice.innerHTML == "치&nbsp;&nbsp;&nbsp;&nbsp;킨&nbsp;&nbsp;&nbsp;&nbsp;") {
                        more[0].href = "/GoSangEun/Menu.s?shopId=102";
                    }
                }
            </script>

            <div class="col-lg-2">
                <!-- <a href="#" class="list-group-item" onclick="changeCate(this);">한식</a>
                <a href="#" class="list-group-item" onclick="changeCate(this);">중식</a>
                <a href="#" class="list-group-item" onclick="changeCate(this);">중식</a> -->
                <div style="border-radius: 5px; border: 0.5px solid gainsboro ; margin-left: 9%; ">
                    <h6 class="card-header" style="text-align: center">정렬 기준</h6>
                    <ul class="list-unstyled mb-0" style="text-align: center;">
                        <li style="margin-top: 20px;">
                            <a href="#">가격</a>
                        </li>
                        <br>
                        <li>
                            <a href="#">별점</a>
                        </li>
                        <br>
                        <li style="margin-bottom: 20px;">
                            <a href="#">배달시간</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <br>
        <!-- /.container -->

        <!-- Pagination -->
        <!-- <ul class="pagination justify-content-center">
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#" onclick="test1();">1</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#" onclick="test2();">2</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">4</a>
            </li>
            <li class="page-item" style="margin-bottom: 10px;">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul> -->
    </div>
    
    <%@ include file = "views/common/footer.jsp" %>

</body>

</html>