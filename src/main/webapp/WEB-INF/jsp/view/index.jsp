<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	  	<div class="parallax-window inner-banner tc-padding overlay-dark" data-parallax="scroll" data-image-src="<%=request.getContextPath()%>/static/view/images/inner-banner/img-10.jpg">
	  		<div class="container">
	  			<div class="inner-page-heading style-2 h-white">
	  				<h2>图书</h2>
	  				<p>跨越15年的工作，Everywhere I Look是一本充满意想不到的时刻的书</p>
	  			</div>
	  		</div>
	  	</div>
	  	<!-- Inner Banner -->

	</header>
	<!-- Header -->
	
	<!-- Main Content -->
	<main class="main-content">

		<!-- Shop Grid -->
		<div class="product-grid-holder tc-padding">
			<div class="container">
				<div class="row">
					
					<!-- Aside -->
					<aside class="col-lg-3 col-md-4 pull-left pull-none">

						<!-- Aside Widget -->
						<div class="aside-widget">
							<h6>类别</h6>
							<ul class="Category-list">
								<li><a href="<%=request.getContextPath()%>">全部 </a></li>
								<c:forEach items="${bookTypeList}" var="bookType">
									<li>
										<a href="<%=request.getContextPath()%>?bookType=${bookType.id}">
											<c:if test="${empty bookType.headImg}">
												<img src="view/images/best-seller/img-01.jpg" style="width:20px;height: 20px;" >
											</c:if>
											<c:if test="${not empty bookType.headImg}">
												<img src="<%=request.getContextPath()%>${bookType.headImg}" style="width:20px;height: 20px;" >
											</c:if>
												${bookType.name} (${bookType.bookCounts})
										</a>
									</li>
								</c:forEach>
							</ul>
						</div>
						<!-- Aside Widget -->

					</aside>
					<!-- Aside -->

					<!-- Content -->
					<div class="col-lg-9 col-md-8 pull-right pull-none">
						<!-- Products -->
						<div class="row">
							<c:forEach items="${bookList}" var="book">
								<a href="<%=request.getContextPath()%>/bookInfo?id=${book.id}">
									<div class="col-lg-3 col-xs-6 r-full-width">
										<div class="product-box" >
											<div class="product-img" style="padding: 0;">
												<c:if test="${empty book.headImg}">
													<img src="<%=request.getContextPath()%>/static/view/images/best-seller/img-01.jpg" alt="">
												</c:if>
												<c:if test="${not empty book.headImg}">
													<img src="<%=request.getContextPath()%>${book.headImg}" style="width:132px;height: 197px;" alt="${book.name}">
												</c:if>
											</div>
											<div class="product-detail" style="padding: 10px;">
												<span>${book.bookType.name}</span>
												<h5 style="font-size: 14px;">${book.name}</h5>
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
								</a>
							</c:forEach>

						</div>
						<!-- Products -->

					</div>
					<!-- Content -->

					
				</div>
			</div>
		</div>
		<!-- Shop Grid -->

	</main>
	<!-- Main Content -->
	
	

	<!-- Footer -->
    <jsp:include page="footer.jsp"></jsp:include>
	<!-- Footer -->

</div>
<!-- Wrapper -->






<!-- Switcher  Panel -->
<div class="switcher"></div>  
<!-- Switcher Panel -->

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
