<%@page import="com.tinshine.blog.entity.UserEntity" %>
<%@page pageEncoding="UTF-8" %>
<%@include file="../include/admin/header.jsp"%>
<%@include file="../include/admin/navbar.jsp"%>
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
                            <li><a href="${pageContext.request.contextPath}/user/listBlogs.action"><i class="ion ion-ios-paperplane-outline"></i> 随笔</a></li>
                            <li><a href="${pageContext.request.contextPath}/user/listBlogs.action"><i class="ion ion-android-bulb"></i> 技术博客</a></li>
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
<%@include file="../include/admin/footer.jsp"%>