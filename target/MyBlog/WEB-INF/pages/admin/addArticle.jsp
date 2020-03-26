<%@page import="com.tinshine.blog.entity.UserEntity" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
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
            <li class="active">
                <a href="#"><i class="ion ion-android-create"></i><span>新建随笔</span></a>
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
            <div>新建随笔</div>
        </h1>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h4 style="text-align: center; font-size: 18px">写文章</h4>
                    </div>
                    <div class="card-body">
                        <form id="save" method="post" class="needs-validation" novalidate>
                            <div class="form-group">
                                <label for="title">标题</label>
                                <input type="text" id="title" name="title" class="form-control" required>
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
                                <label for="keyword">关键字</label>
                                <input type="text" id="keyword" name="keyword" class="form-control" required>
                                <div class="invalid-feedback">
                                    请填写关键字
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="summary">摘要</label>
                                <textarea id="summary" class="form-control" name="summary" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="content">内容</label>
                                <textarea id="content" class="form-control" name="content" rows="20"></textarea>
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

<%@include file="../include/admin/footer.jsp"%>

<script>
    $("#submit").click(function () {
        $.ajax({
            url: "${pageContext.request.contextPath}/blog/addArticle.json",
            type: "POST",
            dataType: "json",
            data: $("#save").serialize(),
            success: function (rtn) {
                toastr.success("保存成功");
                setTimeout(function () {
                    window.location.href = "${pageContext.request.contextPath}/user/listBlogs.action";
                }, 1800);
            },
            error: function (rtn) {
                toastr.error("保存失败");
            }
        });
    });
</script>