<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

	<!-- Top Bar -->
	<div class="topbar">
		<div class="container">

			<!-- Cart Option -->
			<div class="cart-option">
				<ul>
					<c:if test="${not empty loginUser }">
						<li><a href=""  onclick="return false;">${loginUser.userName}</a></li>
						<li><a href="<%=request.getContextPath()%>/bookshelf/bookshelfList"  ><i class="fa fa-tasks"></i>我的书架</a></li>
						<li><a href="<%=request.getContextPath()%>/view/readLog"  ><i class="fa fa-eye"></i>阅读历史</a></li>
						<li><a href="<%=request.getContextPath()%>/view/loginOut" ><i class="fa fa-sign-out"></i>退出</a></li>
					</c:if>
					<c:if test="${empty loginUser}">
						<li><a href="#" data-toggle="modal" data-target="#login-modal"><i class="fa fa-user"></i>登录</a></li>
						<li><a href="#" data-toggle="modal" data-target="#regist-modal"><i class="fa fa-user"></i>注册</a></li>
					</c:if>

					<li><a href="<%=request.getContextPath()%>/back/login" target="_blank" >后台管理</a></li>

				</ul>
			</div>
			<!-- Cart Option -->

		</div>
	</div>
	<!-- Top Bar -->
<!-- Login Modal -->
<div class="modal fade login-modal" id="login-modal" role="dialog">
	<div class="position-center-center" role="document">
		<div class="modal-content">
			<strong>欢迎登录</strong>
			<button class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<div class="social-options">
				<ul>
					<li><a class="facebook" href="#"><i class="fa fa-facebook"></i>多味书屋</a></li>
				</ul>
			</div>
			<form class="sending-form" action="loign" method="post">
				<div class="form-group">
					<input class="form-control" required="required" id="loginName" name="loginName" placeholder="登入名">
					<i class="fa fa-user"></i>
				</div>
				<div class="form-group">
					<input class="form-control" type="password" id="password" name="password" required="required" placeholder="密码">
					<i class="fa fa-lock"></i>
				</div>

				<button class="btn-1 shadow-0 full-width" type="button" onclick="login();">登录</button>
			</form>
		</div>
	</div>
</div>
<!-- Login Modal -->



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
		            url: "<%=request.getContextPath()%>/user/login",
		            data: {'loginName': loginName,'password': password},
					success: function (msg) {
		                if (msg != "success") {
		                    alert(msg);
		                }else{
		                	location.reload();
		                }
		            },
		        });

			}
		
		</script>

	
	<!-- //登入 -->
  	<!-- 注册 -->
<!-- Login Modal -->
<div class="modal fade login-modal" id="regist-modal" role="dialog">
	<div class="position-center-center" role="document">
		<div class="modal-content">
			<strong>欢迎成为我们的一员</strong>
			<button class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<div class="social-options">
				<ul>
					<li><a class="facebook" href="#"><i class="fa fa-facebook"></i>多味书屋</a></li>
				</ul>
			</div>
			<form class="sending-form">
				<div class="form-group">
					<input class="form-control" required="required" id="registloginName" placeholder="登录名">
					<i class="fa fa-user"></i>
				</div>
				<div class="form-group">
					<input class="form-control" required="required" id="registuserName" placeholder="用户名">
					<i class="fa fa-user"></i>
				</div>
				<div class="form-group">
					<input class="form-control" type="password" id="registpassword" required="required" placeholder="密码">
					<i class="fa fa-lock"></i>
				</div>
				<div class="form-group">
					<input class="form-control" type="password" id="registpassword2" required="required" placeholder="密码">
					<i class="fa fa-lock"></i>
				</div>
				<div class="form-group">
					<select id="registrole" class="form-control">
						<option value="author" >作者</option>
						<option value="member" >会员</option>
					</select>
				</div>

				<button class="btn-1 shadow-0 full-width" type="button" onclick="regist();">注册</button>
			</form>
		</div>
	</div>
</div>

						
						<script type="text/javascript">
							function regist(){
								var loginName = $("#registloginName").val();
								var userName = $("#registuserName").val();
								var password = $("#registpassword").val();
								var conform_password = $("#registpassword2").val();
                                var role = $("#registrole").val();
								if(loginName==null||loginName==""){
									alert("请输入用户名!");return;
								}
								if(userName==null||userName==""){
									alert("请输入登入名");return;
								}
								if(password==null||password==""){
									alert("请输入密码");return;
								}else if(password!=conform_password){
									alert("输入的两次密码必须相同");return;
								}
								$.ajax({
						            type: "POST",
						            url: "<%=request.getContextPath()%>/user/regist",
						            data: {'loginName': loginName,'userName':userName,'role':role,'password': password},
									success: function (msg) {
						                if (msg != "success") {
						                    alert(msg);
						                }else{
						                	location.reload();//刷新当前页面
						                	//window.location.href="<%=request.getContextPath()%>";
						                }
						            },
						        });
							
							}
						
						</script>

	<!-- //注册 -->
