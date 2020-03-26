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

<%@include file="../include/front/header.jsp"%>

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

<%@include file="../include/front/footer.jsp"%>

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