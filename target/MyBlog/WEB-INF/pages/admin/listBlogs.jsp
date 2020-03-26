<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.tinshine.blog.entity.UserEntity" %><%--
  Created by IntelliJ IDEA.
  User: tinshine
  Date: 2020/2/10
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../include/admin/header.jsp"%>
<%@include file="../include/admin/navbar.jsp"%>
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
                            <li><a href="#"><i class="ion ion-ios-paperplane-outline"></i> 随笔</a></li>
                            <li><a href="#"><i class="ion ion-android-bulb"></i> 技术博客</a></li>
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
                    <div>所有随笔</div>
                </h1>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="float-right">
                                    <a href="#" class="btn btn-primary">View All</a>
                                </div>
                                <h4>Latest Posts</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th>标题</th>
                                            <th>创建时间</th>
                                            <th>修改时间</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <c:forEach items="${blogs}" var="blog">
                                            <tbody>
                                            <tr>
                                                <td>
                                                    ${blog.title}
                                                    <div class="table-links">
                                                        in <a href="${pageContext.request.contextPath}/front/detail.action?id=${blog.id}">查看全文</a>
                                                    </div>
                                                </td>
                                                <td>
                                                    ${blog.releaseDate}
                                                </td>
                                                <td>
                                                    ${blog.updateDate}
                                                </td>
                                                <td>
                                                    <a href="${pageContext.request.contextPath}/user/editBlog.action?id=${blog.id}" class="btn btn-primary btn-action mr-1" data-toggle="tooltip"
                                                       title="编辑"><i class="ion ion-edit"></i></a>
                                                    <a href="${pageContext.request.contextPath}/user/deleteBlog.action?id=${blog.id}" class="btn btn-danger btn-action" data-toggle="tooltip"
                                                       title="删除"><i class="ion ion-trash-b"></i></a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </c:forEach>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
<%@include file="../include/admin/footer.jsp"%>