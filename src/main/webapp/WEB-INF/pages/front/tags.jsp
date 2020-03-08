<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@include file="../include/front/header.jsp"%>
<section style="min-height: 600px; margin-top: 100px">
    <div class="container">
        <div class="row">
            <c:forEach items="${tags}" var="tag">
                <c:if test="${tag != null}">
                    <a href="${pageContext.request.contextPath}/front/searchTag.action?tag=${tag}">
                        <div style="background-color: #574B90; color: white; padding: 15px 15px; margin: 10px 10px; border-radius: 20px">
                                ${tag}
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
    </div>
</section>
<%@include file="../include/front/footer.jsp"%>