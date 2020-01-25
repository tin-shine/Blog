<%--
  Created by IntelliJ IDEA.
  User: tinshine
  Date: 2020/1/12
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>博客后台</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/fontawesome/fontawesome-all.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>

<body>
<div id="app">
    <div class="main-wrapper">
        <div class="navbar-bg" style="height: 75px"></div>
        <nav class="navbar navbar-expand-lg main-navbar">
            <form class="form-inline mr-auto">
                <ul class="navbar-nav mr-3">
                    <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
                    <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="ion ion-search"></i></a></li>
                </ul>
                <div class="search-element">
                    <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn" type="submit"><i class="ion ion-search"></i></button>
                </div>
            </form>
            <ul class="navbar-nav navbar-right">
                <li class="dropdown dropdown-list-toggle">
                    <a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep">
                    <i class="ion ion-ios-bell-outline"></i></a>
                    <div class="dropdown-menu dropdown-list dropdown-menu-right">
                        <div class="dropdown-header">通 知
                            <div class="float-right">
                                <a href="#">查看全部</a>
                            </div>
                        </div>
                        <div class="dropdown-list-content">
                            <a href="#" class="dropdown-item dropdown-item-unread">
                                <img alt="image" src="${pageContext.request.contextPath}/static/img/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Kusnaedi</b> has moved task <b>Fix bug header</b> to <b>Done</b>
                                    <div class="time">10 Hours Ago</div>
                                </div>
                            </a>
                            <a href="#" class="dropdown-item dropdown-item-unread">
                                <img alt="image" src="${pageContext.request.contextPath}/static/img/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Ujang Maman</b> has moved task <b>Fix bug footer</b> to <b>Progress</b>
                                    <div class="time">12 Hours Ago</div>
                                </div>
                            </a>
                            <a href="#" class="dropdown-item">
                                <img alt="image" src="${pageContext.request.contextPath}/static/img/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Agung Ardiansyah</b> has moved task <b>Fix bug sidebar</b> to <b>Done</b>
                                    <div class="time">12 Hours Ago</div>
                                </div>
                            </a>
                            <a href="#" class="dropdown-item">
                                <img alt="image" src="${pageContext.request.contextPath}/static/img/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Ardian Rahardiansyah</b> has moved task <b>Fix bug navbar</b> to <b>Done</b>
                                    <div class="time">16 Hours Ago</div>
                                </div>
                            </a>
                            <a href="#" class="dropdown-item">
                                <img alt="image" src="${pageContext.request.contextPath}/static/img/avatar-1.jpeg" class="rounded-circle dropdown-item-img">
                                <div class="dropdown-item-desc">
                                    <b>Alfa Zulkarnain</b> has moved task <b>Add logo</b> to <b>Done</b>
                                    <div class="time">Yesterday</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </li>
                <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg">
                    <i class="ion ion-android-person d-lg-none"></i>
                    <div class="d-sm-none d-lg-inline-block">UserName</div></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="profile.html" class="dropdown-item has-icon">
                            <i class="ion ion-android-person"></i> 个人简历
                        </a>
                        <a href="#" class="dropdown-item has-icon">
                            <i class="ion ion-log-out"></i> 退出
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
                        <div class="user-name">UserName</div>
                        <div class="user-role">
                            用户权限
                        </div>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <li class="menu-header">主页</li>
                    <li class="active">
                        <a href="#"><i class="ion ion-speedometer"></i><span>主页</span></a>
                    </li>

                    <li class="menu-header">功能</li>
                    <li>
                        <a href="#" class="has-dropdown"><i class="ion ion-ios-albums-outline"></i><span>功能1</span></a>
                        <ul class="menu-dropdown">
                            <li><a href="general.html"><i class="ion ion-ios-circle-outline"></i> Basic</a></li>
                            <li><a href="components.html"><i class="ion ion-ios-circle-outline"></i> Main Components</a></li>
                            <li><a href="buttons.html"><i class="ion ion-ios-circle-outline"></i> Buttons</a></li>
                            <li><a href="toastr.html"><i class="ion ion-ios-circle-outline"></i> Toastr</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="has-dropdown"><i class="ion ion-flag"></i><span>功能2</span></a>
                        <ul class="menu-dropdown">
                            <li><a href="ion-icons.html"><i class="ion ion-ios-circle-outline"></i> Ion Icons</a></li>
                            <li><a href="fontawesome.html"><i class="ion ion-ios-circle-outline"></i> Font Awesome</a></li>
                            <li><a href="flag.html"><i class="ion ion-ios-circle-outline"></i> Flag</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="table.html"><i class="ion ion-clipboard"></i><span>功能3</span></a>
                    </li>
                    <li>
                        <a href="chartjs.html"><i class="ion ion-stats-bars"></i><span>功能4</span></a>
                    </li>
                    <li>
                        <a href="simple.html"><i class="ion ion-ios-location-outline"></i><span>功能5</span></a>
                    </li>
                    <li>
                        <a href="#" class="has-dropdown"><i class="ion ion-ios-copy-outline"></i><span>功能6</span></a>
                        <ul class="menu-dropdown">
                            <li><a href="login.html"><i class="ion ion-ios-circle-outline"></i> Login</a></li>
                            <li><a href="register.html"><i class="ion ion-ios-circle-outline"></i> Register</a></li>
                            <li><a href="forgot.html"><i class="ion ion-ios-circle-outline"></i> Forgot Password</a></li>
                            <li><a href="reset.html"><i class="ion ion-ios-circle-outline"></i> Reset Password</a></li>
                            <li><a href="404.html"><i class="ion ion-ios-circle-outline"></i> 404</a></li>
                        </ul>
                    </li>

                    <li class="menu-header">更多功能</li>
                    <li>
                        <a href="#" class="has-dropdown"><i class="ion ion-ios-nutrition"></i> 更多功能1</a>
                        <ul class="menu-dropdown">
                            <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Menu 1</a></li>
                            <li><a href="#" class="has-dropdown"><i class="ion ion-ios-circle-outline"></i> Menu 2</a>
                                <ul class="menu-dropdown">
                                    <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 1</a></li>
                                    <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 2</a></li>
                                    <li><a href="#" class="has-dropdown"><i class="ion ion-ios-circle-outline"></i> Child Menu 3</a>
                                        <ul class="menu-dropdown">
                                            <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 1</a></li>
                                            <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 2</a></li>
                                            <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 3</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#"><i class="ion ion-ios-circle-outline"></i> Child Menu 4</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="ion ion-heart"></i> 更多功能2 <div class="badge badge-primary">10</div></a>
                    </li>
                    <li>
                        <a href="credits.html"><i class="ion ion-ios-information-outline"></i> 更多功能3</a>
                    </li>          </ul>
                <div class="p-3 mt-4 mb-4">
                    <a href="#" class="btn btn-danger btn-shadow btn-round has-icon has-icon-nofloat btn-block">
                        <i class="ion ion-help-buoy"></i> <div>Go PRO!</div>
                    </a>
                </div>
            </aside>
        </div>
        <div class="main-content" style="min-height: 570px">Section里所有的东西都被删掉了</div>
        <footer class="main-footer" style="text-align: center">
            <div class="footer-left">
                Copyright &copy; All rights reserved <div class="bullet"></div> Blog System
            </div>
            <div class="footer-right"></div>
        </footer>
    </div>
</div>

<script>
    $("#sidebar-wrapper").css()
</script>
</body>
</html>