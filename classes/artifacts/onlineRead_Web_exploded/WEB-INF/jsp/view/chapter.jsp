<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <title>${chapter.title}-多味书屋</title>

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


    <!-- FontsOnline -->
    <link href='https://fonts.googleapis.com/css?family=Merriweather:300,300italic,400italic,400,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic,900italic,900,100italic,100'
          rel='stylesheet' type='text/css'>

</head>
<body>


<!-- Wrapper -->
<div class="wrapper push-wrapper">


    <!-- Main Content -->
    <main class="main-content">

        <!-- Blog List -->
        <div class="tc-padding" style="padding: 18px 0;">
            <div class="container">
                <div class="row">

                    <!-- Content -->
                    <div class="col-md-12">

                        <!-- 图书信息 -->
                        <div class="event-organizar style-1">
                            <img src="<%=request.getContextPath()%>/static/view/images/event-organizar/img-1-1.jpg" alt="">
                            <span><i>${chapter.book.name}</i></span>
                        </div>
                        <!-- 图书信息 -->

                        <!-- 章节详情 -->
                        <div class="single-event-detail">
                            <h2>${chapter.title}</h2>
                            <ul class="meta-post">
                                <li><i class="fa fa-clock-o"></i>${chapter.readCounts}</li>
                                <li><i class="fa fa-calendar"></i><fmt:formatDate value="${chapter.registTime}" pattern="yyyy/MM/dd" /></li>
                            </ul>

                            <blockquote>
                                ${chapter.content}
                            </blockquote>

                        </div>
                        <!-- 章节详情 -->
                    </div>
                    <!-- Content -->
                </div>
            </div>
        </div>
        <!-- Blog List -->

    </main>
    <!-- Main Content -->
    <jsp:include page="footer.jsp"></jsp:include>

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
