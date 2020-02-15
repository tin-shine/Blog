<%--
  Created by IntelliJ IDEA.
  User: tinshine
  Date: 2020/2/4
  Time: 0:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Blog Tinshine</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/modules/bootstrap/css/bootstrap.min.css" >
    <!-- Icon -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/fonts/line-icons.css">
    <!-- Slicknav -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/slicknav.css">
    <!-- Owl carousel -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/owl.theme.css">
    <!-- Slick Slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/slick.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/slick-theme.css" >
    <!-- Animate -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/animate.css">
    <!-- Main Style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/main.css">
    <!-- Responsive Style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/responsive.css">

<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/style.css">--%>
</head>
<body>

<!-- Header Area wrapper Starts -->
<header id="header-wrap">
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg fixed-top scrolling-navbar indigo">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                    <span class="icon-menu"></span>
                    <span class="icon-menu"></span>
                    <span class="icon-menu"></span>
                </button>
                <a href="${pageContext.request.contextPath}/front/index.action" class="navbar-brand" style="margin-top: 10px; margin-bottom: 10px">
                    <span style="margin: 5px 0px; font-size: 28px">
                        Home
                    </span>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
                <ul class="navbar-nav mr-auto w-100 justify-content-left clearfix">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/front/articles.action?pageCount=1">
                            文章
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#tags">
                            标签
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">
                            关于
                        </a>
                    </li>
                </ul>
                <div class="btn-sing float-right">
                    <a class="btn btn-border" href="${pageContext.request.contextPath}/user/index.action">登录/注册</a>
                </div>
            </div>
        </div>

        <!-- Mobile Menu Start -->
        <ul class="mobile-menu navbar-nav">
            <li>
                <a class="page-scroll" href="${pageContext.request.contextPath}/front/articles.action?pageCount=1">
                    文章
                </a>
            </li>
            <li>
                <a class="page-scroll" href="#tags">
                    标签
                </a>
            </li>
            <li>
                <a class="page-scroll" href="#about">
                    关于
                </a>
            </li>
            <li>
                <a class="page-scroll" href="${pageContext.request.contextPath}/user/index.action">
                    登录/注册
                </a>
            </li>
        </ul>
        <!-- Mobile Menu End -->

    </nav>
    <!-- Navbar End -->

</header>
<!-- Header Area wrapper End -->

<section class="section-padding" style="min-height: 450px">
    <div class="container" style="margin-top: 50px; margin-bottom: 50px">
        <div class="contents text-center">
            <div class="active" data-tab-group="carousel" id="carousel-simple">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="${pageContext.request.contextPath}/static/img/img01.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="${pageContext.request.contextPath}/static/img/img02.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="${pageContext.request.contextPath}/static/img/img03.jpg" alt="Third slide">
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
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="contents text-center">
                    <h2 class="head-title wow fadeInUp">Welcome,<br> My Friend</h2>
                    <div class="header-button wow fadeInUp" data-wow-delay="0.3s">
                        <a href="${pageContext.request.contextPath}/front/randomPage.action" id="random" class="btn btn-common" style="background-color: #574B90">随便看看</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Footer Section Start -->
<footer id="footer" class="main-footer" style="background: #34363a;">
    Nice to meet you
</footer>
<!-- Footer Section End -->

<!-- Go to Top Link -->
<a href="#" class="back-to-top">
    <i class="lni-arrow-up"></i>
</a>

<!-- Preloader -->
<div id="preloader">
    <div class="loader" id="loader-1"></div>
</div>
<!-- End Preloader -->

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/static/modules/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/wow.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.nav.js"></script>
<script src="${pageContext.request.contextPath}/static/js/scrolling-nav.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
<script src="${pageContext.request.contextPath}/static/js/form-validator.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/contact-form-script.min.js"></script>


</body>
</html>
