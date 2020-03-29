<%--
  Created by IntelliJ IDEA.
  User: tinshine
  Date: 2020/2/4
  Time: 0:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../include/front/header.jsp"%>

<section class="section-padding" style="min-height: 550px">
    <div class="container" style="margin-top: 50px; margin-bottom: 50px">
        <div class="contents text-center">
            <div class="active" data-tab-group="carousel" id="carousel-simple">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="${pageContext.request.contextPath}/static/img/img01.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="${pageContext.request.contextPath}/static/img/img02.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="${pageContext.request.contextPath}/static/img/img03.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="contents text-center">
                    <h2 class="head-title wow fadeInUp">Welcome,<br> My Friend</h2>
                    <div class="header-button wow fadeInUp" data-wow-delay="0.3s">
                        <a href="${pageContext.request.contextPath}/front/randomPage.action"
                           id="random" class="btn btn-common" style="background-color: #574B90; margin-top: 15px">随便看看</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="../include/front/footer.jsp"%>
