<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>后台管理</title>

    <link href="<%=request.getContextPath()%>/static/back/css/icons.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet"/>
    <!-- Bootstrap stylesheets (included template modifications) -->
    <link href="<%=request.getContextPath()%>/static/back/css/bootstrap.css" rel="stylesheet"/>
    <!-- Plugins stylesheets (all plugin custom css) -->
    <link href="<%=request.getContextPath()%>/static/back/css/plugins.css" rel="stylesheet"/>
    <!-- Main stylesheets (template main css file) -->
    <link href="<%=request.getContextPath()%>/static/back/css/main.css" rel="stylesheet"/>
    <!-- Custom stylesheets ( Put your own changes here ) -->
    <link href="<%=request.getContextPath()%>/static/back/css/custom.css" rel="stylesheet"/>
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>
</head>
<body class="login-page">
<!-- Start #login -->
<div id="login" class="animated bounceIn">

    <%--<div class="navbar navbar-header navbar-brand" style="">
        <i class="im-windows8 text-logo-element animated bounceIn"></i>
        <span class="text-logo">多味</span>
        <span class="text-slogan">书屋</span>
    </div>--%>
    <div class="login-wrapper">
        <ul id="myTab" class="nav nav-tabs nav-justified bn">
            <li>
                <a style="font-size: 25px; ">
                    <i class="im-windows8 text-logo-element animated bounceIn"></i>
                    <span class="text-logo">多味书屋</span>
                </a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content bn">
            <div class="tab-pane fade active in" id="log-in">
                <form class="form-horizontal mt10" action="login" id="login-form" role="form" method="post">
                    <div class="form-group">
                        <div class="col-lg-12">
                            <input type="text" name="loginName" id="loginName" class="form-control left-icon" value="admin"
                                   placeholder="登录名">
                            <i class="ec-user s16 left-input-icon"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-12">
                            <input type="password" name="password" id="password" class="form-control left-icon"
                                   value="123" placeholder="密码">
                            <i class="ec-locked s16 left-input-icon"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button class="btn btn-success center-block" type="button" onclick="login();">登录系统</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<!-- End #login -->
<!-- Javascripts -->
<script src="<%=request.getContextPath()%>/static/back/js/libs/jquery-2.1.1.min.js"></script>
<!-- Bootstrap plugins -->
<script src="<%=request.getContextPath()%>/static/back/js/bootstrap/bootstrap.js"></script>
<!-- Form plugins -->
<script type="text/javascript">
    function login(){
        var loginName = $("#loginName").val();
        var password = $("#password").val();
        if(loginName==null||loginName==""){
            alert("请输入用户名!");
            return;
        }
        if(password==null||password==""){
            alert("请输入密码");
            return;
        }
        $.ajax({
            type: "POST",
            url: "login",
            data: {'loginName': loginName,'password': password},
            success: function (msg) {
                if (msg != "success") {
                    alert(msg);
                }else{
                    location.href = "${ctx}/back/index";
                }
            },
        });

    }
</script>
</body>
</html>