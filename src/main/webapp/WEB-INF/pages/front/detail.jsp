<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="blog" type="com.tinshine.blog.entity.BlogEntity"--%>
<%--
  Created by IntelliJ IDEA.
  User: tinshine
  Date: 2020/2/7
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../include/front/header.jsp"%>

<section>
    <div class="container" style="margin-top: 90px">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="contents text-left">
                    <div class="card">
                        <div class="card-header">
                            <div class="detail-title">
                            <h1>${blog.title}</h1>
                            <ul>
                                <li style="color: #3d3fff"><i class="ion ion-clipboard"></i> ${blog.releaseDate}</li>
                                <li>|</li>
                                <li style="color: #574B90"><i class="ion ion-edit"></i> ${blog.releaseDate}</li>
                                <li>|</li>
                                <li style="color: #ff332c"><i class="ion ion-flame"></i> ${blog.click}</li>
                            </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="article-body">
                                <article>
                                    ${blog.content}
                                </article>
                            </div>
                        </div>
                        <div id="info" class="card-footer" style="text-align: right">
                            <a href="${pageContext.request.contextPath}/user/editBlog.action?id=${blog.id}">编辑</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 col-sm-12" style="margin-top: 30px">
                <div class="form-group">
                    <textarea id="review" class="form-control" name="review" rows="3" placeholder="请文明发言..."></textarea>
                    <button id="doReview" class="btn btn-primary float-right" bId="${blog.id}">评论</button>
                </div>
            </div>
            <div class="col-md-12 col-sm-12" style="margin-top: 25px">
                <div id="accordion">
                    <c:forEach items="${comments}" var="comment">
                        <div class="accordion">
                            <div class="accordion-header" data-toggle="collapse" data-target="#panel-body-${comment.id}" aria-expanded="true">
                                <h4>${comment.name}：</h4>
                            </div>
                            <div class="accordion-body collapse show" id="panel-body-${comment.id}" data-parent="#accordion">
                                ${comment.comment}
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section> <!-- end content -->

</form>
<%@include file="../include/front/footer.jsp"%>

<script>
    $("#doReview").click(function () {
        var page = "review.action";
        var blogId = $(this).attr("bId");
        console.log("blogId = " + blogId);
        var review = $("#review").val();
        if (review != "") {
            $.post(
                page,
                {"review":review, "blogId":blogId},
                function (result) {
                    if (result == "success") {
                        toastr.success("评论成功");
                        setTimeout(function () {
                            window.location.href = "${pageContext.request.contextPath}/front/detail.action?id=" + blogId;
                        }, 1000);
                    } else {
                        toastr.error("评论失败");
                    }
                }
            );
        } else {
            toastr.error("评论内容不能为空");
        }

    });
</script>