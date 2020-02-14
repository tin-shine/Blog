<%--@elvariable id="blog" type="com.tinshine.blog.entity.BlogEntity"--%>
<%--<jsp:useBean id="blog" scope="request" type="com.tinshine.blog.entity.BlogEntity"/>--%>
<%@ page import="com.tinshine.blog.entity.UserEntity" %><%--
  Created by IntelliJ IDEA.
  User: tinshine
  Date: 2020/2/10
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no"
          name="viewport">
    <title>编辑随笔</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/fontawesome/fontawesome-all.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/summernote/summernote-lite.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
    <link href="${pageContext.request.contextPath}/static/modules/bootstrap/css/awesome-bootstrap-checkbox.css"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/toastr.css">
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
                    <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i
                            class="ion ion-navicon-round"></i></a></li>
                    <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i
                            class="ion ion-search"></i></a></li>
                </ul>
                <div class="search-element">
                    <input class="form-control" type="search" placeholder="搜索" aria-label="Search">
                    <button class="btn" type="submit"><i class="ion ion-search"></i></button>
                </div>
            </form>
            <ul class="navbar-nav navbar-right">
                <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown"
                                                             class="nav-link notification-toggle nav-link-lg beep"><i
                        class="ion ion-ios-bell-outline"></i></a>
                    <div class="dropdown-menu dropdown-list dropdown-menu-right">
                        <div class="dropdown-header">通知
                            <div class="float-right">
                                <a href="#">查看全部</a>
                            </div>
                        </div>
                        <div class="dropdown-list-content">
                            <a href="#" class="dropdown-item dropdown-item-unread">
                                <img alt="image" src="${pageContext.request.contextPath}/static/img/avatar-1.jpeg"
                                     class="rounded-circle dropdown-item-img">
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
                    <div class="d-sm-none d-lg-inline-block">Hi, <%=user.getName()%>
                    </div>
                </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="#" class="dropdown-item has-icon">
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
                        <div class="user-name"><%=user.getName()%>
                        </div>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <li class="menu-header">面 板</li>
                    <li>
                        <a href="${pageContext.request.contextPath}/user/main.action"><i
                                class="ion ion-speedometer"></i><span>总 览</span></a>
                    </li>

                    <li class="menu-header">功 能</li>
                    <li>
                        <a href="${pageContext.request.contextPath}/blog/NewArticle.action"><i class="ion ion-android-create"></i><span>新建随笔</span></a>
                    </li>
                    <li class="active">
                        <a href="#" class="has-dropdown"><i class="ion ion-pricetags"></i><span>博客分类</span></a>
                        <ul class="menu-dropdown">
                            <li><a href="${pageContext.request.contextPath}/user/listBlogs.action"><i class="ion ion-ios-paperplane-outline"></i> 随笔</a></li>
                            <li><a href="${pageContext.request.contextPath}/user/listBlogs.action"><i class="ion ion-android-bulb"></i> 技术博客</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="p-3 mt-4 mb-4">
                    <a href="${pageContext.request.contextPath}/user/logout.action"
                       class="btn btn-danger btn-shadow btn-round has-icon has-icon-nofloat btn-block">
                        <i class="ion ion-log-out" style="padding-left: 35px"></i>
                        <div>注 销</div>
                    </a>
                </div>
            </aside>
        </div>
        <div class="main-content">
            <section class="section">
                <h1 class="section-header">
                    <div>编辑随笔</div>
                </h1>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12 col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <form id="save" method="post" class="needs-validation" novalidate>
                                    <div class="form-group">
                                        <label for="title">标题</label>
                                        <input type="text" id="title" name="title" class="form-control" value="${blog.title}" required>
                                        <div class="invalid-feedback">
                                            请填写标题
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>分类</label>
                                        <span class="radio" style="vertical-align: bottom">
                                            <input type="radio" name="type" id="note" value="note" checked>
                                            <label for="note">
                                                随笔
                                            </label>
                                        </span>
                                        <span class="radio" style="vertical-align: bottom">
                                            <input type="radio" name="type" id="blog" value="blog">
                                            <label for="blog">
                                                 技术博客
                                            </label>
                                        </span>
                                    </div>
                                    <div class="form-group">
                                        <label for="summary">摘要</label>
                                        <textarea id="summary" class="form-control" name="summary" rows="3">${blog.summary}</textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="content">内容</label>
<%--                                        <textarea id="content" class="summernote" name="content"></textarea>--%>
                                        <textarea name="content" id="content" class="form-control" rows="20">${blog.content}</textarea>
                                    </div>
                                </form>
                            </div>
                            <div class="card-footer" style="text-align: center">
                                <button type="button" id="submit" class="btn btn-primary">保 存</button>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <footer class="main-footer">
            <div class="footer-left" style="text-align: center">
                Copyright &copy; All rights reserved
            </div>
            <div class="footer-right"></div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/toastr.js"></script>
<script type="text/javascript">
    var objBlog = "<%=session.getAttribute("blog")%>";
    var typeStr = objBlog.type;
    switch (${blog.type}) {
        case 0:
            $("input:radio[value='note']").attr('checked', 'true');
            break;
        case 1:
            $("input:radio[value='blog']").attr('checked', 'true');
            break;
        default:
            break;
    }

    <%--document.getElementById("content").value = "${blog.content}";--%>

    $("#submit").click(function () {
        // console.log($("#save").serialize());
        $.ajax({
            url: "${pageContext.request.contextPath}/blog/editArticle.json?id=${blog.id}",
            type: "POST",
            dataType: "json",
            data: $("#save").serialize(),
            success: function (rtn) {
                toastr.success("修改成功");
                setTimeout(function () {
                    window.location.href = "${pageContext.request.contextPath}/user/listBlogs.action";
                }, 1500);
            },
            error: function (rtn) {
                toastr.error("修改失败");
            }
        });
    });
</script>
