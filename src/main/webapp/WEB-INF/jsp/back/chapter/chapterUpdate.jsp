<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>章节管理</title>

    <!-- Css files -->
    <link href="<%=request.getContextPath()%>/static/back/css/icons.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/bootstrap.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/plugins.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/back/css/main.css" rel="stylesheet"/>
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
                    <h3 class="panel-title">${chapter.book.name}</h3>
                    <button class="btn btn-primary" onclick="javascript:history.back();">章节管理</button>
                </div>

                <div class="panel-body ">

                    <div class="col-md-12">
                        <form class="form-horizontal group-border hover-stripped" role="form" action="${ctx}/back/chapterSave" method="post">
                            <input type="hidden" name="id" value="${chapter.id}">
                            <input type="hidden" name="book.id" value="${chapter.book.id}">
                            <div class="form-group">
                                <label class="col-md-1 control-label">标题</label>
                                <div class="col-md-11">
                                    <input type="text" class="form-control" placeholder="标题" name="title" value="${chapter.title}" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label">顺序</label>
                                <div class="col-md-11">
                                    <input type="text" class="form-control" placeholder="顺序"  name="orderNo" value="${chapter.orderNo}">
                                </div>
                            </div>
                            <!-- End .form-group  -->
                            <div class="form-group">
                                <div class="col-lg-12 col-md-12">
                                    <textarea name="content" id="texteditor" class="form-control tinymce" rows="15">${chapter.content}</textarea>
                                </div>
                            </div>
                            <!-- End .form-group  -->

                            <!-- End .form-group  -->
                            <div class="form-group">
                                <div class="col-lg-12 col-md-12">
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
<script src="<%=request.getContextPath()%>/static/back/plugins/core/pace/pace.min.js"></script>
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
<script type="text/javascript">
    tinymce.init({
        selector: "textarea.tinymce",
        menubar : false,
        language : "zh_CN",
        plugins: [
            "advlist autolink lists charmap print preview anchor",
        ],
        toolbar: "fontsizeselect bold italic strikethrough bullist numlist blockquote hr alignleft aligncenter alignright alignjustify"
    });
</script>
</body>
</html>
