<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<title>多味书屋</title>

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

	<!-- Header -->
	<header id="header">

		<!-- Top Bar -->
		<jsp:include page="head.jsp"></jsp:include>
		<!-- Top Bar -->

		<!-- Nav -->
		<jsp:include page="search.jsp"></jsp:include>
		<!-- Nav -->

		<!-- Inner Banner -->
	  	<div class="parallax-window inner-banner tc-padding overlay-dark" data-parallax="scroll" data-image-src="<%=request.getContextPath()%>/static/view/images/inner-banner/img-02.jpg">
	  		<div class="container">
	  			<div class="inner-page-heading style-2 h-white">
	  				<h2>${author.userName} 作者简介</h2>
	  				<%--<span><i class="fa fa-map-marker"></i>旧金山，加州</span>--%>
	  			</div>
	  		</div>
	  	</div>
	  	<!-- Inner Banner -->

	</header>
	<!-- Header -->


	<!-- Main Content -->
	<main class="main-content">

		<!-- Arthor Detail -->
		<div class="single-aurthor-detail tc-padding">
			<div class="container">
				<div class="row">
					
					<!-- Aside -->
					<aside class="col-lg-4 col-md-5">
						<div class="arthor-detail-column">
							<div class="arthor-img">
								<%--<c:if test="${empty author.headImg}">
									<img src="<%=request.getContextPath()%>/view/images/arthor-detail/img-01.jpg"
										 alt="">
								</c:if>
								<c:if test="${not empty book.headImg}">
									<img src="<%=request.getContextPath()%>${author.headImg}"
										 style="width:132px;height: 197px;" alt="${author.userName}">
								</c:if>--%>
								<img src="<%=request.getContextPath()%>/static/view/images/arthor-detail/img-01.jpg" alt="">
								<!-- <a class="edit-tag" href="#"><i class="fa fa-pencil-square-o"></i>Edit Profile</a> -->
							</div>
							<div class="arthor-detail">
								<h6>${author.userName}</h6>
								<span>作者</span>

							</div>
							<div class="social-activity">
								<ul class="comments-status">
									<li><i class="fa fa-heart"></i><fmt:formatDate value="${author.registTime}" pattern="yyyy/MM/dd"/></li>
									<a href="#" class="btn-1 sm shadow-0">关注我</a> 
								</ul>
								<p>多味书屋</p>
							</div>
						</div>
					</aside>
					<!-- Aside -->

					<!-- Content -->
					<div class="col-lg-8 col-md-7">
						<div class="single-arthor-detail">

							<!-- Widget -->
							<div class="single-arthor-widget">
								<h5>作者概述</h5>
								<div class="author-overview">
									<p>${author.description}</p>
								</div>
							</div>
							<!-- Widget -->

							<!-- Widget -->
							<div class="single-arthor-widget">
								<h5>推荐</h5>

								<!-- Filter Nav -->
								<div class="filter-tags-holder">
									<ul id="filterbale-nav" class="option-set">
										<li><a class="selected" data-filter="*" href="#">所有书籍</a></li>
										<!-- <li><a data-filter=".most-recent" href="#">最近的</a></li> -->
										
									</ul>
								</div>	
								<!-- Filter Nav -->

							  	<!-- Recommended -->
							  	<div id="filter-masonry" class="gallery-masonry">
									<c:forEach items="${bookList}" var="book">
					    				<div class="col-lg-3 col-xs-6 r-full-width masonry-grid most-recent">
					    					<div class="recommended-book">
					    					<div class="recommended-book-img">
					    						<img src="<%=request.getContextPath()%>/static/view/images/arthor-recommended/img-01.jpg" alt="">
					    					</div>
					    					<div class="recommended-book-detail">
						    					<h6>${book.name}</h6>
						    					<span>${book.bookType.name}</span>
												<p style="height: 48px;">
													<c:if test="${fn:length(book.description)>30 }">
														${fn:substring(book.description, 0, 27)}...
													</c:if>
													<c:if test="${fn:length(book.description)<=30 }">
														${book.description}
													</c:if>
												</p>
			    							</div>
					    				</div>
					    				</div>
									</c:forEach>
							  	</div>
							  	<!-- Recommended -->

							</div>
							<!-- Widget -->

							

						</div>
					</div>
					<!-- Content -->

				</div>
			</div>
		</div>
		<!-- Arthor Detail -->

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

<script src="<%=request.getContextPath()%>/static/view/js/main.js"></script>
</body>
</html>
