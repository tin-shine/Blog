<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/head2.png">

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/toastr.css">

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
                    <span style="margin: 5px 0px; font-size: 28px; height: 30px; width: 50px">
<%--                        <i class="ion ion-home"></i>--%>
                        <img src="${pageContext.request.contextPath}/static/img/head3.png" style="width: 40px"> Home
                    </span>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
                <ul class="navbar-nav mr-auto w-100 justify-content-left clearfix">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/front/articles.action?pageCount=0">
                            <i class="ion ion-ios-paper-outline"></i> 文章
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/front/tag.action">
                            <i class="ion ion-ios-pricetags-outline"></i> 标签
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/front/about.action">
                            <i class="ion ion-paper-airplane"></i> 关于
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
                <a class="page-scroll" href="${pageContext.request.contextPath}/front/tag.action">
                    标签
                </a>
            </li>
            <li>
                <a class="page-scroll" href="${pageContext.request.contextPath}/front/about.action">
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
