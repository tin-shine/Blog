<%@page import="com.tinshine.blog.entity.UserEntity" %>
<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>博客后台</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/fontawesome/fontawesome-all.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/summernote/summernote-lite.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>

<body>
<div id="app">
<%--    加载用户信息 --%>
    <%
        UserEntity user = (UserEntity) request.getSession().getAttribute("userFound");
    %>
    <div class="main-wrapper">
        <div class="navbar-bg"></div>
        <nav class="navbar navbar-expand-lg main-navbar">
            <form class="form-inline mr-auto">
                <ul class="navbar-nav mr-3">
                    <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
                    <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="ion ion-search"></i></a></li>
                </ul>
                <div class="search-element">
                    <input class="form-control" type="search" placeholder="搜索" aria-label="Search">
                    <button class="btn" type="submit"><i class="ion ion-search"></i></button>
                </div>
            </form>
            <ul class="navbar-nav navbar-right">
                <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep"><i class="ion ion-ios-bell-outline"></i></a>
                    <div class="dropdown-menu dropdown-list dropdown-menu-right">
                        <div class="dropdown-header">通知
                            <div class="float-right">
                                <a href="#">查看全部</a>
                            </div>
                        </div>
                        <div class="dropdown-list-content">
                            <a href="#" class="dropdown-item dropdown-item-unread">
                                <img alt="image" src="../dist/img/avatar/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Kusnaedi</b> has moved task <b>Fix bug header</b> to <b>Done</b>
                                    <div class="time">10 Hours Ago</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </li>
                <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg">
                    <i class="ion ion-android-person d-lg-none"></i>
                    <div class="d-sm-none d-lg-inline-block">Hi, <%=user.getName()%></div></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="profile.html" class="dropdown-item has-icon">
                            <i class="ion ion-android-person"></i> Profile
                        </a>
                        <a href="${pageContext.request.contextPath}/user/logout.action" class="dropdown-item has-icon">
                            <i class="ion ion-log-out"></i> 注销
                        </a>
                    </div>
                </li>
            </ul>
        </nav>
        <div class="main-sidebar">
            <aside id="sidebar-wrapper">
                <div class="sidebar-user">
                    <div class="sidebar-user-picture">
                        <img alt="image" src="${pageContext.request.contextPath}/static/img/avatar-1.jpeg">
                    </div>
                    <div class="sidebar-user-details">
                        <div class="user-name"><%=user.getName()%></div>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <li class="menu-header">面 板</li>
                    <li class="active">
                        <a href="#"><i class="ion ion-speedometer"></i><span>总 览</span></a>
                    </li>

                    <li class="menu-header">功 能</li>
                    <li>
                        <a href="${pageContext.request.contextPath}/blog/NewArticle.action"><i class="ion ion-android-create"></i><span>新建随笔</span></a>
                    </li>
                    <li>
                        <a href="#" class="has-dropdown"><i class="ion ion-pricetags"></i><span>博客分类</span></a>
                        <ul class="menu-dropdown">
                            <li><a href="#"><i class="ion ion-ios-paperplane-outline"></i> 随笔</a></li>
                            <li><a href="#"><i class="ion ion-android-bulb"></i> 技术博客</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="p-3 mt-4 mb-4">
                    <a href="${pageContext.request.contextPath}/user/logout.action" class="btn btn-danger btn-shadow btn-round has-icon has-icon-nofloat btn-block">
                        <i class="ion ion-log-out" style="padding-left: 35px"></i> <div>注 销</div>
                    </a>
                </div>
            </aside>
        </div>
        <div class="main-content">
            <section class="section">
                <h1 class="section-header">
                    <div>信息总览</div>
                </h1>
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-12">
                        <div class="card card-sm-3">
                            <div class="card-icon bg-primary">
                                <i class="ion ion-person"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>用户数</h4>
                                </div>
                                <div class="card-body">
                                    10
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-12">
                        <div class="card card-sm-3">
                            <div class="card-icon bg-danger">
                                <i class="ion ion-ios-paper-outline"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>文章数</h4>
                                </div>
                                <div class="card-body">
                                    42
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-12">
                        <div class="card card-sm-3">
                            <div class="card-icon bg-warning">
                                <i class="ion ion-paper-airplane"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>评论数</h4>
                                </div>
                                <div class="card-body">
                                    1,201
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-12 col-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="float-right">
                                    <a href="#" class="btn btn-primary">查看全部</a>
                                </div>
                                <h4>最新发布</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th>标题</th>
                                            <th>作者</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>
                                                Introduction Laravel 5
                                                <div class="table-links">
                                                    in <a href="#">Web Development</a>
                                                    <div class="bullet"></div>
                                                    <a href="#">View</a>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"><img src="../dist/img/avatar/avatar-1.jpeg" alt="avatar" width="30" class="rounded-circle mr-1"> Bagus Dwi Cahya</a>
                                            </td>
                                            <td>
                                                <a class="btn btn-primary btn-action mr-1" data-toggle="tooltip" title="Edit"><i class="ion ion-edit"></i></a>
                                                <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Laravel 5 Tutorial - Installation
                                                <div class="table-links">
                                                    in <a href="#">Web Development</a>
                                                    <div class="bullet"></div>
                                                    <a href="#">View</a>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"><img src="../dist/img/avatar/avatar-1.jpeg" alt="avatar" width="30" class="rounded-circle mr-1"> Bagus Dwi Cahya</a>
                                            </td>
                                            <td>
                                                <a class="btn btn-primary btn-action mr-1" data-toggle="tooltip" title="Edit"><i class="ion ion-edit"></i></a>
                                                <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Laravel 5 Tutorial - MVC
                                                <div class="table-links">
                                                    in <a href="#">Web Development</a>
                                                    <div class="bullet"></div>
                                                    <a href="#">View</a>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"><img src="../dist/img/avatar/avatar-1.jpeg" alt="avatar" width="30" class="rounded-circle mr-1"> Bagus Dwi Cahya</a>
                                            </td>
                                            <td>
                                                <a class="btn btn-primary btn-action mr-1" data-toggle="tooltip" title="Edit"><i class="ion ion-edit"></i></a>
                                                <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Laravel 5 Tutorial - Migration
                                                <div class="table-links">
                                                    in <a href="#">Web Development</a>
                                                    <div class="bullet"></div>
                                                    <a href="#">View</a>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"><img src="../dist/img/avatar/avatar-1.jpeg" alt="avatar" width="30" class="rounded-circle mr-1"> Bagus Dwi Cahya</a>
                                            </td>
                                            <td>
                                                <a class="btn btn-primary btn-action mr-1" data-toggle="tooltip" title="Edit"><i class="ion ion-edit"></i></a>
                                                <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>最新活动</h4>
                            </div>
                            <div class="card-body">
                                <ul class="list-unstyled list-unstyled-border">
                                    <li class="media">
                                        <img class="mr-3 rounded-circle" width="50" src="../dist/img/avatar/avatar-1.jpeg" alt="avatar">
                                        <div class="media-body">
                                            <div class="float-right"><small>10m</small></div>
                                            <div class="media-title">Farhan A Mujib</div>
                                            <small>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</small>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <img class="mr-3 rounded-circle" width="50" src="../dist/img/avatar/avatar-2.jpeg" alt="avatar">
                                        <div class="media-body">
                                            <div class="float-right"><small>10m</small></div>
                                            <div class="media-title">Ujang Maman</div>
                                            <small>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</small>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <img class="mr-3 rounded-circle" width="50" src="../dist/img/avatar/avatar-3.jpeg" alt="avatar">
                                        <div class="media-body">
                                            <div class="float-right"><small>10m</small></div>
                                            <div class="media-title">Rizal Fakhri</div>
                                            <small>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</small>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <img class="mr-3 rounded-circle" width="50" src="../dist/img/avatar/avatar-4.jpeg" alt="avatar">
                                        <div class="media-body">
                                            <div class="float-right"><small>10m</small></div>
                                            <div class="media-title">Alfa Zulkarnain</div>
                                            <small>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</small>
                                        </div>
                                    </li>
                                </ul>
                                <div class="text-center">
                                    <a href="#" class="btn btn-primary btn-round">
                                        查看全部
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <footer class="main-footer">
            Copyright &copy; All rights reserved
        </footer>
    </div>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/static/js/tooltip.js"></script>
<script src="${pageContext.request.contextPath}/static/modules/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/modules/nicescroll/jquery.nicescroll.min.js"></script>
<script src="${pageContext.request.contextPath}/static/modules/scroll-up-bar/scroll-up-bar.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/sa-functions.js"></script>
<script src="${pageContext.request.contextPath}/static/modules/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/static/js/scripts.js"></script>
<script src="${pageContext.request.contextPath}/static/js/custom.js"></script>

</body>
</html>