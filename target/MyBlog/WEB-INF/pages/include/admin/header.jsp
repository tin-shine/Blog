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