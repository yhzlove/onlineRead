<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>审查关键字</title>

    <!-- Css files -->
    <!-- Icons -->
    <link href="<%=request.getContextPath()%>/static/back/css/icons.css" rel="stylesheet"/>
    <!-- jQueryUI -->
    <link href="<%=request.getContextPath()%>/static/back/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet"/>
    <!-- Bootstrap stylesheets (included template modifications) -->
    <link href="<%=request.getContextPath()%>/static/back/css/bootstrap.css" rel="stylesheet"/>
    <!-- Plugins stylesheets (all plugin custom css) -->
    <link href="<%=request.getContextPath()%>/static/back/css/plugins.css" rel="stylesheet"/>
    <!-- Main stylesheets (template main css file) -->
    <link href="<%=request.getContextPath()%>/static/back/css/main.css" rel="stylesheet"/>
    <!-- Custom stylesheets ( Put your own changes here ) -->
    <link href="<%=request.getContextPath()%>/static/back/css/custom.css" rel="stylesheet"/>



</head>
<body>


<div class="outlet">
    <!-- Page start here ( usual with .row ) -->
    <div class="row">
        <!-- Start .row -->
        <div class="col-lg-12">
            <!-- Start col-lg-12 -->
            <div class="panel panel-default toggle">
                <!-- Start .panel -->
                <div class="panel-heading">
                    <h3 class="panel-title">关键字</h3>
                    <button class="btn btn-primary" onclick="javascript:history.back();">关键字管理</button>
                </div>

                <div class="panel-body ">

                    <div class="col-md-12">
                        <form class="form-horizontal group-border hover-stripped" role="form" action="${ctx}/back/censorSave" method="post">
                            <input type="hidden" name="id" value="${censor.id}">
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">关键字</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" placeholder="关键字" name="word" value="${censor.word}" >
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label"></label>
                                <div class="col-lg-10 col-md-10">
                                    <button class="btn btn-primary">保存</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
            <!-- End .panel -->
        </div>
        <!-- End col-lg-12 -->
    </div>
    <!-- End .row -->

</div>
<div class="clearfix"></div>
<!-- Javascripts -->
<!-- Load pace first -->
<script src="<%=request.getContextPath()%>/static/back/plugins/core/pace/pace.min.js"></script>
<!-- Important javascript libs(put in all pages) -->
<script src="<%=request.getContextPath()%>/static/back/js/jquery-1.8.3.min.js"></script>

<script src="<%=request.getContextPath()%>/static/back/js/libs/jquery-ui-1.10.4.min.js"></script>

<!-- Bootstrap plugins -->
<script src="<%=request.getContextPath()%>/static/back/js/bootstrap/bootstrap.js"></script>


<script src="<%=request.getContextPath()%>/static/back/js/jRespond.min.js"></script>
<!-- Custom scroll for sidebars,tables and etc. -->
<script src="<%=request.getContextPath()%>/static/back/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
<!-- Resize text area in most pages -->
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/autosize/jquery.autosize.js"></script>
<!-- Proivde quick search for many widgets -->
<script src="<%=request.getContextPath()%>/static/back/plugins/core/quicksearch/jquery.quicksearch.js"></script>
<!-- Bootbox confirm dialog for reset postion on panels -->
<script src="<%=request.getContextPath()%>/static/back/plugins/ui/bootbox/bootbox.js"></script>
<!-- Other plugins ( load only nessesary plugins for every page) -->
<script src="<%=request.getContextPath()%>/static/back/plugins/core/moment/moment.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/charts/sparklines/jquery.sparkline.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/icheck/jquery.icheck.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/tags/jquery.tagsinput.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/tinymce/tinymce.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/switch/jquery.onoff.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/maxlength/bootstrap-maxlength.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/color-picker/spectrum.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/daterangepicker/daterangepicker.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/globalize/globalize.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/maskedinput/jquery.maskedinput.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/select2/select2.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/forms/checkall/jquery.checkAll.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/misc/highlight/highlight.pack.js"></script>
<script src="<%=request.getContextPath()%>/static/back/plugins/misc/countTo/jquery.countTo.js"></script>
<script src="<%=request.getContextPath()%>/static/back/js/jquery.sprFlat.js"></script>
<script src="<%=request.getContextPath()%>/static/back/js/app.js"></script>

</body>
</html>
