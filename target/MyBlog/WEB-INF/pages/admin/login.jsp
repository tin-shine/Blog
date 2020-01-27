<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
    <title>Login</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/modules/fontawesome/fontawesome-all.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>

<body>
<div id="app">
    <section class="section">
        <div class="container mt-5">
            <div class="row">
                <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
                    <div class="login-brand">登 录</div>
                    <div class="card card-primary">
                        <div class="card-header"><h4>Login</h4></div>
                        <div class="card-body">
                            <form id="login" method="POST" novalidate="">
                                <div class="form-group">
                                    <label for="userName">用户名</label>
                                    <input id="userName" type="text" class="form-control" name="userName" tabindex="1" required autofocus>
                                    <div id="invalid-name" class="invalid-feedback">请填写用户名</div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="d-block">密 码
                                        <%--                                        <div class="float-right">--%>
                                        <%--                                            <a href="forgot.html">--%>
                                        <%--                                                Forgot Password?--%>
                                        <%--                                            </a>--%>
                                        <%--                                        </div>--%>
                                    </label>
                                    <input id="password" type="password" class="form-control" name="password" tabindex="2" onkeypress="pressEnter(event)" required>
                                    <div id="invalid-pswd" class="invalid-feedback">请输入密码</div>
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember-me">
                                        <label class="custom-control-label" for="remember-me">记住我</label>
                                    </div>
                                </div>
                            </form>
                            <%--                            <div class="form-group">--%>
                            <button type="button" id="submit" class="btn btn-primary btn-block" tabindex="4">
                                Login
                            </button>
                            <div id="invalid-post" class="invalid-feedback" style="text-align: center; margin-top: 20px"></div>
                            <%--                            </div>--%>
                        </div>
                    </div>
                    <div class="mt-5 text-muted text-center">
                        <a href="register.action">新用户？请点这里</a>
                    </div>
                    <div class="simple-footer">Copyright &copy; All rights reserved</div>
                </div>
            </div>
        </div>
    </section>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script>
    $("#submit").click(function () {
        $("#invalid-post").css('display', 'none');
        var name = $("#userName").val();
        var pswd = $("#password").val();
        if (name == "" || pswd == "") {
            if (name == "") {
                $("#invalid-name").css('display', 'block');
            } else {
                $("#invalid-name").css('display', 'none');
            }
            if ($("#password").val() == "") {
                $("#invalid-pswd").css('display', 'block');
            } else {
                $("#invalid-pswd").css('display', 'none');
            }
        } else {
            $("#invalid-name").css('display', 'none');
            $("#invalid-pswd").css('display', 'none');
            $.ajax({
                url: "${pageContext.request.contextPath}/user/login.json",
                type: "POST",
                dataType: "json",
                data: $("#login").serialize(),
                success: function (rtn) {
                    if (rtn.code == -1) {
                        $("#invalid-post").text(rtn.msg);
                        $("#invalid-post").css('display', 'block');
                    } else {
                        window.location.href = "${pageContext.request.contextPath}" + "/user/main.action";
                    }
                },
                error: function (rtn) {
                    alert("提交失败！");
                }
            });
        }
    });
    function pressEnter(e) {
        if (e == 13) {
            // $("#submit").trigger("click");
            alert("press Enter");
        }
    }
</script>
</body>
</html>