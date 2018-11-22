<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>多味书屋</title>
    
    <!-- Css files -->
    <link href="<%=request.getContextPath()%>/static/back/css/icons.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/static/back/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/static/back/css/bootstrap.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/static/back/css/plugins.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/static/back/css/main.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/static/back/css/custom.css" rel="stylesheet" />
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>
</head>
<body>
<!-- Start #header -->
<div id="header">
    <div class="container-fluid">
        <div class="navbar">
            <div class="navbar-header">
                <a class="navbar-brand" href="${ctx}" target="_blank">
                    <i class="im-windows8 text-logo-element animated bounceIn"></i><span class="text-logo">多味</span><span class="text-slogan">书屋</span>
                </a>
            </div>
            <nav class="top-nav" role="navigation">

                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown">
                        <a href="${ctx}" target="_blank"><i class="br-alarm"></i>首页</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown">
                            <img class="user-avatar" src="<%=request.getContextPath()%>/static/back/img/avatars/48.jpg" alt="SuggeElson">${loginUser.userName}</a>
                    </li>
                    <li class="dropdown">
                        <a href="${ctx}/back/loginOut"><i class="im-exit"></i> 退出</a>
                    </li>
                </ul>
            </nav>
        </div>

    </div>
    <!-- Start .header-inner -->
</div>
<!-- End #header -->
<!-- Start #sidebar -->
<div id="sidebar">
    <!-- Start .sidebar-inner -->
    <div class="sidebar-inner">
        <!-- Start #sideNav -->
        <ul id="sideNav" class="nav nav-pills nav-stacked">
            <%--  管理员--%>
            <c:if test="${'admin' eq loginUser.role}">
                <li><a href="${ctx}/back/userUpdate?id=${loginUser.id}" target="iframe">个人信息 <i class="ec-user"></i></a></li>
                <li><a href="${ctx}/back/userList" target="iframe">用户管理 <i class="ec-users"></i></a></li>
                <li><a href="${ctx}/back/bookList" target="iframe">图书管理 <i class="st-files"></i></a></li>
                <li><a href="${ctx}/back/bookCheckList" target="iframe">图书审核 <i class="br-eye"></i></a></li>
                <li><a href="${ctx}/back/censorList" target="iframe">图书审核关键字 <i class="br-eye"></i></a></li>
                <li><a href="${ctx}/back/bookTypeList" target="iframe"> 图书类别管理 <i class="im-stack"></i></a></li>
            </c:if>
            <%--  作者--%>
            <c:if test="${'author' eq loginUser.role}">
                <li><a href="${ctx}/back/userUpdate?id=${loginUser.id}" target="iframe">个人信息 <i class="ec-user"></i></a></li>
                <li><a href="${ctx}/back/bookList" target="iframe">图书管理 <i class="st-diamond"></i></a></li>
            </c:if>

        </ul>
        <!-- End #sideNav -->

    </div>
    <!-- End .sidebar-inner -->
</div>
<!-- End #sidebar -->

<!-- Start #content -->
<div id="content" style="padding-left: 0px;padding-right: 0px;">
    <iframe class="J_iframe" style="min-height:600px;" name="iframe" width="100%" height="100%" src="${ctx}/back/userUpdate?id=${loginUser.id}" frameborder="0" data-id="" seamless></iframe>
</div>
<!-- End #content -->
<!-- Javascripts -->
<script src="<%=request.getContextPath()%>/static/back/js/libs/jquery-2.1.1.min.js"></script>
<!-- Bootstrap plugins -->
<script src="<%=request.getContextPath()%>/static/back/js/bootstrap/bootstrap.js"></script>

</body>
</html>
