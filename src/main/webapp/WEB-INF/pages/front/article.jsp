<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.tinshine.blog.entity.BlogEntity" %><%--
  Created by IntelliJ IDEA.
  User: tinshine
  Date: 2020/2/5
  Time: 23:03
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
                    <span style="margin: 5px 0px; font-size: 28px; color: #585b60">
                        Home
                    </span>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
                <ul class="navbar-nav mr-auto w-100 justify-content-left clearfix">
                    <li class="nav-item active">
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
<section class="section-padding" style="min-height: 450px; margin-top: 25px">
    <div class="container">
        <div class="row">
            <c:forEach items="${blogs}" var="blog">
                <div class="col-12 col-sm-6 col-lg-3">
                    <a href="${pageContext.request.contextPath}/front/detail.action?id=${blog.id}">
                    <div class="card" style="margin-top: 25px">
                        <div class="card-header">
                            <h4 id="title" style="font-size: 22px">
                                ${blog.title}
                            </h4>
                        </div>
                        <div id="summary" class="card-body" style="color: #817e7b">
                            ${blog.summary}
                        </div>
                        <div id="info" class="card-footer" style="text-align: right">
                            ${blog.releaseDate}
                        </div>
                    </div>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
        <div style="display: table; margin: 50px auto">
            <nav aria-label="Page navigation example">
                <ul class="pagination" style="font-size: 18px">
                    <li class="page-item">
                        <a class="page-link" href="${pageContext.request.contextPath}/front/articles.action?pageCount=1" aria-label="Previous" id="firstPage">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" id="preDots" href="${pageContext.request.contextPath}/front/articles.action?pageCount=${pageCount-1}">&lt;</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" id="prePage" href="${pageContext.request.contextPath}/front/articles.action?pageCount=${pageCount-1}">${pageCount-1}</a>
                    </li>
                    <li class="page-item active">
                        <a class="page-link" id="currentPage" href="#">${pageCount}</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" id="nextPage" href="${pageContext.request.contextPath}/front/articles.action?pageCount=${pageCount+1}">${pageCount+1}</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" id="nextDots" href="${pageContext.request.contextPath}/front/articles.action?pageCount=${pageCount+1}">&gt;</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="${pageContext.request.contextPath}/front/articles.action?pageCount=-1" aria-label="Next" id="lastPage">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
        </nav>
        </div>
</section>

<footer id="footer" class="main-footer" style="background: #34363a;">
    Nice to meet you
</footer>
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
<script>
    var pageCnt = ${pageCount};
    var pagePosition = "${pagePosition}";

    function hidePre() {
        $("#prePage").css('display', 'none');
        $("#preDots").css('pointer-events', 'none');
    }

    function hideNext() {
        $("#nextDots").css('pointer-events', 'none');
        $("#nextPage").css('display', 'none');
    }

    if (pagePosition == "first") {
        console.log("pagePosition: " + pagePosition);
        console.log("pageCount: " + pageCnt);
        hidePre();
    } else if (pagePosition == "last") {
        hideNext();
    } else if (pagePosition == "first-only") {
        hidePre();
        hideNext();
    } else {
        $("#preDots").css('pointer-events', 'auto');
        $("#prePage").css('display', 'block');
        $("#nextDots").css('pointer-events', 'auto');
        $("#nextPage").css('display', 'block');
    }
</script>
</body>
</html>