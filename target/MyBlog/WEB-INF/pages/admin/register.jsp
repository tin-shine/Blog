<%--
  Created by IntelliJ IDEA.
  User: tinshine
  Date: 2020/1/17
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>注册</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/fontawesome/fontawesome-all.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>

<body>
<div id="app">
    <section class="section">
        <div class="container mt-5">
            <div class="row">
                <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
                    <div class="login-brand">
                        注 册
                    </div>

                    <div class="card card-primary">
                        <div class="card-header"><h4>Register</h4></div>

                        <div class="card-body">
                            <form method="POST" id="register">
                                <div class="form-group">
                                    <label for="userName" style="font-size: 15px">*昵称</label>
                                    <input id="userName" type="text" class="form-control" name="userName">
                                    <div id="invalid-name" class="invalid-feedback">请填写用户名</div>
                                </div>

                                <div class="form-group">
                                    <label for="email" style="font-size: 15px">*电子邮箱</label>
                                    <input id="email" type="email" class="form-control" name="email">
                                    <div id="invalid-email" class="invalid-feedback">请填写电子邮箱</div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-6">
                                        <label for="password" class="d-block" style="font-size: 15px">*密码</label>
                                        <input id="password" type="password" class="form-control" name="password">
                                        <div id="invalid-pswd" class="invalid-feedback">请填写密码</div>
                                    </div>
                                    <div class="form-group col-6">
                                        <label for="password2" class="d-block" style="font-size: 15px">*确认密码</label>
                                        <input id="password2" type="password" class="form-control" name="password-confirm">
                                        <div id="invalid-confirm" class="invalid-feedback">请再次输入密码</div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="agree" class="custom-control-input" id="agree">
                                        <label class="custom-control-label" for="agree" style="font-size: 15px">我同意用户条款</label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <button id="submit" type="button" class="btn btn-primary btn-block">注 册</button>
                                    <div id="invalid-post" class="invalid-feedback" style="text-align: center; margin-top: 20px"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="simple-footer">
                        Copyright &copy; All rights reserved
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/static/js/tooltip.js"></script>
<script src="${pageContext.request.contextPath}/static/modules/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/modules/nicescroll/jquery.nicescroll.min.js"></script>
<script src="${pageContext.request.contextPath}/static/modules/scroll-up-bar/scroll-up-bar.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/sa-functions.js"></script>


<script src="${pageContext.request.contextPath}/static/js/scripts.js"></script>

<script>
    $("#submit").click(function () {
        $("#invalid-post").css('display', 'none');
        var name = $("#userName").val();
        var email = $("#email").val();
        var pswd = $("#password").val();
        var confirm = $("#password2").val();
        if (name == "" || email == "" || pswd == "" || confirm == "") {
            if (name == "") {
                $("#invalid-name").css('display', 'block');
            } else {
                $("#invalid-name").css('display', 'none');
            }
            if (email == "") {
                $("#invalid-email").css('display', 'block');
            } else {
                $("#invalid-email").css('display', 'none');
            }
            if (pswd == "") {
                $("#invalid-pswd").css('display', 'block');
            } else {
                $("#invalid-pswd").css('display', 'none');
            }
            if (confirm == "") {
                $("#invalid-confirm").css('display', 'block');
            } else {
                $("#invalid-confirm").css('display', 'none');
            }
        } else {
            $("#invalid-name").css('display', 'none');
            $("#invalid-email").css('display', 'none');
            $("#invalid-pswd").css('display', 'none');
            $("#invalid-confirm").css('display', 'none');
            $.ajax({
                url: "${pageContext.request.contextPath}/user/register.json",
                type: "POST",
                dataType: "json",
                data: $("#register").serialize(),
                success: function (rtn) {
                    if (rtn.code == -1) {
                        $("#invalid-post").text(rtn.msg);
                        $("#invalid-post").css('display', 'block');
                    } else {
                        window.location.href = "${pageContext.request.contextPath}" + "/user/index.action";
                    }
                },
                error: function (rtn) {
                    alert("提交失败！");
                }
            });
        }
    });
</script>
</body>
</html>