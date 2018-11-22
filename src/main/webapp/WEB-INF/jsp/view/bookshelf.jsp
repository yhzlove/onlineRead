﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="en">
<head>

<title>我的书架-多味书屋</title>

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

<!-- Switcher CSS -->
<link href="<%=request.getContextPath()%>/static/view/switcher/switcher.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" id="skins" href="<%=request.getContextPath()%>/static/view/css/default.css" type="text/css" media="all">

<!-- FontsOnline -->
<link href='https://fonts.googleapis.com/css?family=Merriweather:300,300italic,400italic,400,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic,900italic,900,100italic,100' rel='stylesheet' type='text/css'>


</head>
<body>
     
<!-- Wrapper -->
<div class="wrapper push-wrapper">

	<!-- Header -->
	<header id="header">

		<!-- Top Bar -->
		<jsp:include page="head.jsp"></jsp:include>
		<!-- Top Bar -->

		<!-- Nav -->
		<jsp:include page="search.jsp"></jsp:include>
		<!-- Nav -->

		<!-- Inner Banner -->
	  	<div class="parallax-window inner-banner tc-padding overlay-dark" data-parallax="scroll" data-image-src="<%=request.getContextPath()%>/static/view/images/inner-banner/img-11.jpg">
	  		<div class="container">
	  			<div class="inner-page-heading h-white">
	  				<h2>我的书架</h2>
	  			</div>
	  		</div>
	  	</div>
	  	<!-- Inner Banner -->

	</header>
	<!-- Header -->


	<!-- Main Content -->
	<main class="main-content">

		<!-- Blog List -->
		<div class="tc-padding">
			<div class="container">
				<div class="row">
					
					<!-- Content -->
					<div class="col-md-12">

						<!-- List Blog -->
						<div class="blog-list">
							<c:forEach items="${bookshelfList}" var="bookshelfList">
							<div class="list-blog">
								<div class="row">
									<div class="col-md-3">
										<c:if test="${empty bookshelfList.book.headImg}">
											<img src="<%=request.getContextPath()%>/view/images/list-blog/img-01.jpg"  style="width: 100%;height: 100%;" alt="">
										</c:if>
										<c:if test="${not empty bookshelfList.book.headImg}">
											<img src="<%=request.getContextPath()%>${bookshelfList.book.headImg}" style="width: 100%;height: 100%;" alt="${bookshelfList.book.name}">
										</c:if>
									</div>
									<div class="col-md-9">
										<div class="blog-detail">
											<h3>${bookshelfList.book.name}</h3>
											<ul class="meta-post">
												<li><i class="fa fa-user"></i><span>${bookshelfList.book.author.userName}</span></li>
												<li><i class="fa fa-comments"></i><span>${bookshelfList.book.bookType.name}</span></li>
											</ul>
											<p>
												<c:if test="${fn:length(bookshelfList.book.description)>30 }">
													${fn:substring(bookshelfList.book.description, 0, 27)}...
												</c:if>
												<c:if test="${fn:length(bookshelfList.book.description)<=30 }">
													${bookshelfList.book.description}
												</c:if>
											</p>
											<a href="<%=request.getContextPath()%>/bookInfo?id=${bookshelfList.book.id}" class="btn-1 shadow-0 sm">了解更多<i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
						<!-- List Blog -->

					</div>
					<!-- Content -->

				</div>
			</div>
		</div>
		<!-- Blog List -->

	</main>
	<!-- Main Content -->

	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Footer -->

</div>
<!-- Wrapper -->


<!-- Java Script -->
<script src="<%=request.getContextPath()%>/static/back/js/libs/jquery-2.1.1.min.js"></script>
<%--<script src="view/js/vendor/jquery.js"></script>--%>
<script src="<%=request.getContextPath()%>/static/view/js/vendor/bootstrap.min.js"></script>

<script src="<%=request.getContextPath()%>/static/view/js/parallax.js"></script>
<script src="<%=request.getContextPath()%>/static/view/js/turn.js"></script>
<script src="<%=request.getContextPath()%>/static/view/js/prettyPhoto.js"></script>
<script src="<%=request.getContextPath()%>/static/view/js/main.js"></script>
					
</body>
</html>