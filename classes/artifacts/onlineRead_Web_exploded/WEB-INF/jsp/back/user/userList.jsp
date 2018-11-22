<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>用户管理</title>

    <!-- Css files -->
    <link href="<%=request.getContextPath()%>/static/back/css/icons.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/bootstrap.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/plugins.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/main.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/custom.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/back/plugins/dataTables/css/jquery.dataTables.css">

</head>
<body>
<div id="content" style="margin-left: 0px;padding: 0px;">
<div class="content-wrapper">
    <div class="row">
        <div class="col-lg-12 heading">
            <h1 class="page-header">用户管理</h1>
            <div class="option-buttons">
                <div class="btn-toolbar" role="toolbar">
                    <div class="btn-group dropdown">
                        <a class="btn dropdown-toggle" href="${ctx}/back/userAdd"><i class="en-plus s32"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="outlet">
        <div class="row">
            <div class="col-lg-12">
                <!-- col-lg-12 start here -->
                <div class="panel panel-default plain toggle panelClose panelRefresh">
                    <!-- Start .panel -->
                    <div class="panel-body">
                        <table class="table display" id="datatable">
                            <thead>
                            <tr>
                                <th>头像</th>
                                <th>用户名</th>
                                <th>登入名</th>
                                <th>角色</th>
                                <th>注册时间</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${userList}" var="user" >
                                <tr class="odd gradeX">
                                    <td><img src="${ctx}${user.headImg}" alt="${user.userName}" style="width: 30px;"/></td>
                                    <td>${user.userName}</td>
                                    <td>${user.loginName}</td>
                                    <td>
                                        <c:if test="${user.role eq 'admin'}">管理员</c:if>
                                        <c:if test="${user.role eq 'author'}">作者</c:if>
                                    </td>
                                    <td><fmt:formatDate value="${user.registTime}" pattern="yyyy/MM/dd" /></td>
                                    <td >
                                        <a href="${ctx}/back/userUpdate?id=${user.id}"><i class="ec-pencil s24"></i>修改</a>
                                        <a href="${ctx}/back/userDelete?id=${user.id}" onclick="return confirm('是否删除该数据')"><i class="fa-remove s24"></i>删除</a>

                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>

                        </table>
                    </div>
                </div>
                <!-- End .panel -->
            </div>
            <!-- col-lg-12 end here -->
        </div>
    </div>
</div>
</div>
<!-- End .content-wrapper -->
<div class="clearfix"></div>
<!-- End #content -->
<!-- Javascripts -->
<!-- Load pace first -->
<script src="<%=request.getContextPath()%>/static/back/plugins/core/pace/pace.min.js"></script>
<!-- Important javascript libs(put in all pages) -->
<script src="<%=request.getContextPath()%>/static/back/js/jquery-1.8.3.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/js/libs/jquery-ui-1.10.4.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/js/bootstrap/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/static/back/js/jRespond.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/autosize/jquery.autosize.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/core/quicksearch/jquery.quicksearch.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/ui/bootbox/bootbox.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/core/moment/moment.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/charts/sparklines/jquery.sparkline.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/tags/jquery.tagsinput.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/tinymce/tinymce.min.js"></script>
<script type="text/javascript" charset="utf8" src="<%=request.getContextPath()%>/static/back/plugins/dataTables/js/jquery.js"></script>
<script type="text/javascript" charset="utf8" src="<%=request.getContextPath()%>/static/back/plugins/dataTables/js/jquery.dataTables.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/misc/highlight/highlight.pack.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="<%=request.getContextPath()%>/static/back/js/jquery.sprFlat.js"></script>

<script type="text/javascript">
    <!-- 初始化Datatables-->
    $(document).ready(function () {
        $('#datatable').DataTable({
            language: {
                url:"<%=request.getContextPath()%>/static/back/plugins/dataTables/zh_CN.txt"
            },
            ordering: false
        });
    });
</script>
</body>
</html>
