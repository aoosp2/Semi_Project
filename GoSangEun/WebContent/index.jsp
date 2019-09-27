<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>��.��.��</title>

</head>

<body>
 
    <%@ include file = "views/common/header_log.jsp" %>

    <header>
        <!-- image slider -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <!-- Slide One - Set the background image for this slide in the line below -->
                <div class="carousel-item active">
                    <img src="resources/images/1.jpg" alt="">
                </div>
                <!-- Slide Two - Set the background image for this slide in the line below -->
                <div class="carousel-item">
                    <img src="resources/images/2.jpg" alt="">
                </div>
                <!-- Slide Three - Set the background image for this slide in the line below -->
                <div class="carousel-item">
                    <img src="resources/images/3.jpg" alt="">
                </div>
                <!-- Slide four - Set the background image for this slide in the line below -->
                <div class="carousel-item">
                    <img src="resources/images/4.jpg" alt="">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </header>

    <!-- Page Content -->
    <br><br>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header" style="text-align: center">�ѽ�</h4>
                    <div class="card-body">
                        <img src="resources/images/�ѽ�.png" alt="korean" style="position: inherit; top:0; left: 0; width: 100%; height: 100%;">
                    </div>
                    <div class="card-footer" style="text-align: center">
                        <div>
                            <a href="ShopList.html" class="btn btn-primary">�����ϱ�</a> <!-- servlet���� �̵� -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header" style="text-align: center">�Ͻ�</h4>
                    <div class="card-body">
                        <img src="resources/images/�Ͻ�.jpg" alt="korean" style="position: inherit; top:0; left: 0; width: 100%; height: 100%;">
                    </div>
                    <div class="card-footer" style="text-align: center">
                        <a href="#" class="btn btn-primary">�����ϱ�</a> <!-- servlet���� �̵� -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header" style="text-align: center">�߽�</h4>
                    <div class="card-body">
                        <img src="resources/images/�߽�.jpg" alt="korean" style="position: inherit; top:0; left: 0; width: 100%; height: 100%;">
                    </div>
                    <div class="card-footer" style="text-align: center">
                        <a href="#" class="btn btn-primary">�����ϱ�</a> <!-- servlet���� �̵� -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header" style="text-align: center">����</h4>
                    <div class="card-body">
                        <img src="resources/images/����.jfif" alt="korean" style="position: inherit; top:0; left: 0; width: 100%; height: 100%;">

                    </div>
                    <div class="card-footer" style="text-align: center">
                        <a href="#" class="btn btn-primary">�����ϱ�</a> <!-- servlet���� �̵� -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header" style="text-align: center">ġŲ</h4>
                    <div class="card-body">
                        <img src="resources/images/ġŲ.jpg" alt="korean" style="position: inherit; top:0; left: 0; width: 100%; height: 100%;">
                    </div>
                    <div class="card-footer" style="text-align: center">
                        <a href="resources/about.html" class="btn btn-primary">�����ϱ�</a> <!-- servlet���� �̵� -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header" style="text-align: center">����</h4>
                    <div class="card-body">
                        <img src="resources/images/����.jpg" alt="korean" style="position: inherit; top:0; left: 0; width: 100%; height: 100%;">
                    </div>
                    <div class="card-footer" style="text-align: center">
                        <a href="#" class="btn btn-primary">�����ϱ�</a>  <!-- servlet���� �̵� -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->

    
    <%@ include file = "views/common/footer.jsp" %>

</body>

</html>