<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <!-- Document Title -->
    <title>${book.name}-多味书屋</title>

    <!-- StyleSheets -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/animate.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/icomoon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/main.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/color-1.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/responsive.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/transition.css">

    <!-- Online Lib -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/view/css/tether.min.css">
    <script src="<%=request.getContextPath()%>/static/view/js/tether.min.js"></script>
</head>
<body>


<!-- Wrapper -->
<div class="wrapper push-wrapper">

    <!-- Top Bar -->
    <jsp:include page="head.jsp"></jsp:include>
    <!-- Top Bar -->

    <!-- Nav -->
    <jsp:include page="search.jsp"></jsp:include>
    <!-- Nav -->

        <!-- Inner Banner -->
        <div class="parallax-window inner-banner tc-padding overlay-dark" data-parallax="scroll"
             data-image-src="<%=request.getContextPath()%>/static/view/images/inner-banner/img-04.jpg">
            <div class="container">
                <div class="inner-page-heading h-white">
                    <h2>${book.name}</h2>
                </div>
            </div>
        </div>
        <!-- Inner Banner -->

    </header>
    <!-- Header -->


    <!-- Main Content -->
    <main class="main-content">

        <!-- Book Detail -->
        <div class="book-detail">
            <div class="container">

                <!-- Single Book Detail -->
                <div class="single-boook-detail">
                    <div class="row">

                        <!-- Book Thumnbnail -->
                        <div class="col-lg-4 col-md-5">
                            <div class="product-thumnbnail">
                                <ul class="product-slider">
                                    <li>
                                        <c:if test="${empty book.headImg}">
                                            <img src="<%=request.getContextPath()%>/static/view/images/best-seller/img-01.jpg"
                                                 alt="">
                                        </c:if>
                                        <c:if test="${not empty book.headImg}">
                                            <img src="<%=request.getContextPath()%>${book.headImg}"
                                                 style="width:132px;height: 197px;" alt="${book.name}">
                                        </c:if>
                                        <%--<img src="<%=request.getContextPath()%>/view/images/product-thumbnail/img-01.jpg" alt="">--%>

                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- Book Thumnbnail -->

                        <!-- book Detail -->
                        <div class="col-lg-8 col-md-7">
                            <div class="book-info-list single-product-detail">
                                <span class="availability">类别 :<strong>${book.bookType.name}</strong></span>
                                <h3>${book.name} </h3>
                                <ul>
                                    <li><span>名称: </span>${book.name}</li>
                                    <li><span>简称: </span>${book.simpleName}</li>
                                    <li><span>作者: </span>${book.author.userName}</li>
                                    <li><span>阅读量: </span>${book.readCounts}</li>
                                    <li><span>创建时间: </span><fmt:formatDate value="${book.registTime}"
                                                                           pattern="yyyy/MM/dd"/></li>
                                    <li><span>修改时间: </span><fmt:formatDate value="${book.updateTime}"
                                                                           pattern="yyyy/MM/dd"/></li>
                                </ul>
                                <div class="description">
                                    <p>${book.description}</p>
                                </div>
                                <c:if test="${not empty loginUser }">
                                    <ul class="btn-list">
                                        <li><a class="btn-1 sm shadow-0 " href="<%=request.getContextPath()%>/bookshelf/bookSave?bookId=${book.id}">加入我的书架</a></li>
                                    </ul>
                                </c:if>
                                <c:if test="${empty loginUser }">
                                    <ul class="btn-list">
                                        <li><a class="btn-1 sm shadow-0 ">会员可加入书架</a></li>
                                    </ul>
                                </c:if>
                            </div>

                        </div>
                        <!-- book Detail -->

                    </div>
                </div>
                <!-- Single Book Detail -->
                <div class="aside-widget">
                    <h6>章节</h6>
                    <ul class="Category-list">
                        <c:forEach items="${chapterList}" var="chapter">
                            <li class="col-md-4"><a href="<%=request.getContextPath()%>/chapter?id=${chapter.id}" target="_blank">${chapter.title}</a></li>
                        </c:forEach>
                    </ul>
                </div>


            </div>
        </div>
        <!-- Book Detail -->

    </main>
    <!-- Main Content -->

    <!-- Footer -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer -->

</div>
<!-- Wrapper -->


<!-- Java Script -->
<script src="<%=request.getContextPath()%>/static/view/js/vendor/jquery.js"></script>
<script src="<%=request.getContextPath()%>/static/view/js/vendor/bootstrap.min.js"></script>

<script src="<%=request.getContextPath()%>/static/view/js/parallax.js"></script>
<script src="<%=request.getContextPath()%>/static/view/js/turn.js"></script>
<script src="<%=request.getContextPath()%>/static/view/js/prettyPhoto.js"></script>
<script src="<%=request.getContextPath()%>/static/view/js/bxslider.js"></script>
<script src="<%=request.getContextPath()%>/static/view/js/main.js"></script>
</body>
</html>
