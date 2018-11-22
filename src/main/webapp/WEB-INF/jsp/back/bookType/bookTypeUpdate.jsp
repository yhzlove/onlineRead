<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Tables</title>

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
    <%--  图片上传 --%>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/back/css/home_img/font-awesome.4.6.0.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/back/css/home_img/amazeui.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/back/css/home_img/amazeui.cropper.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/back/css/home_img/custom_up_img.css">

    <style type="text/css">
        .up-img-cover {width: 100px;height: 100px;}
        .up-img-cover img{width: 100%;}
    </style>


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
                    <h3 class="panel-title">类别信息</h3>
                    <button class="btn btn-primary" onclick="javascript:history.back();">类别管理</button>
                </div>

                <div class="panel-body ">
                    <center>
                    <div class="col-md-4">
                        <div class="up-img-cover"  id="up-img-touch" >
                            <img class="am-circle" alt="点击图片上传" src="${ctx}${bookType.headImg}" data-am-popover="{content: '点击上传', trigger: 'hover focus'}" >
                        </div>
                    </div>
                    </center>
                    <div class="col-md-8">
                        <form class="form-horizontal group-border hover-stripped" role="form" action="${ctx}/back/bookTypeSave" method="post">
                            <input type="hidden" name="id" value="${bookType.id}">
                            <input type="hidden" name="headImg" id="headImg" value="${bookType.headImg}"/>
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">类别名称</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" placeholder="类别名称" name="name" value="${bookType.name}" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-2 control-label">书籍数量</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" placeholder="书籍数量"  disabled value="${bookType.bookCounts}">
                                </div>
                            </div>
                            <!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">排序</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" name="orderNo" value="${bookType.orderNo}">
                                </div>
                            </div>
                            <!-- End .form-group  -->
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

<script src="<%=request.getContextPath()%>/static/back/js/home_img/amazeui.min.js" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/static/back/js/home_img/cropper.min.js" charset="utf-8"></script>
<!-- /home_img  -->
<!--图片上传框-->
<div class="am-modal am-modal-no-btn up-frame-bj " tabindex="-1" id="doc-modal-1">
    <div class="am-modal-dialog up-frame-parent up-frame-radius">
        <div class="am-modal-hd up-frame-header">
            <label>修改头像</label>
            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
        </div>
        <div class="am-modal-bd  up-frame-body">
            <div class="am-g am-fl">
                <div class="am-form-group am-form-file">
                    <div class="am-fl">
                        <button type="button" class="am-btn am-btn-default am-btn-sm">
                            <i class="am-icon-cloud-upload"></i> 选择要上传的文件</button>
                    </div>
                    <input type="file" id="inputImage">
                </div>
            </div>
            <div class="am-g am-fl" >
                <div class="up-pre-before up-frame-radius">
                    <img alt="" src="" id="image" >
                </div>
                <div class="up-pre-after up-frame-radius">
                </div>
            </div>
            <div class="am-g am-fl">
                <div class="up-control-btns">
                    <span class="am-icon-rotate-left"  onclick="rotateimgleft()"></span>
                    <span class="am-icon-rotate-right" onclick="rotateimgright()"></span>
                    <span class="am-icon-check" id="up-btn-ok" url="${ctx}/file/upload.do"></span>
                </div>
            </div>

        </div>
    </div>
</div>

<!--加载框-->
<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="my-modal-loading">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">正在上传...</div>
        <div class="am-modal-bd">
            <span class="am-icon-spinner am-icon-spin"></span>
        </div>
    </div>
</div>

<!--警告框-->
<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">信息</div>
        <div class="am-modal-bd"  id="alert_content">
            成功了
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">确定</span>
        </div>
    </div>
</div>
<!-- //home_img -->
</body>
<script type="text/javascript">
    $(document).ready(function(){
        $("#up-img-touch").click(function(){
            $("#doc-modal-1").modal({width:'600px'});
        });
    });
    $(function() {
        'use strict';
// 初始化
        var $image = $('#image');
        $image.cropper({
            aspectRatio: '1',
            autoCropArea:0.8,
            preview: '.up-pre-after',

        });

// 事件代理绑定事件
        $('.docs-buttons').on('click', '[data-method]', function() {

            var $this = $(this);
            var data = $this.data();
            var result = $image.cropper(data.method, data.option, data.secondOption);
            switch (data.method) {
                case 'getCroppedCanvas':
                    if (result) {
                        // 显示 Modal
                        $('#cropped-modal').modal().find('.am-modal-bd').html(result);
                        $('#download').attr('href', result.toDataURL('image/jpeg'));
                    }
                    break;
            }
        });



// 上传图片
        var $inputImage = $('#inputImage');
        var URL = window.URL || window.webkitURL;
        var blobURL;

        if (URL) {
            $inputImage.change(function () {
                var files = this.files;
                var file;

                if (files && files.length) {
                    file = files[0];

                    if (/^image\/\w+$/.test(file.type)) {
                        blobURL = URL.createObjectURL(file);
                        $image.one('built.cropper', function () {
                            // Revoke when load complete
                            URL.revokeObjectURL(blobURL);
                        }).cropper('reset').cropper('replace', blobURL);
                        $inputImage.val('');
                    } else {
                        window.alert('请选择图片文件.');
                    }
                }

                // Amazi UI 上传文件显示代码
                var fileNames = '';
                $.each(this.files, function() {
                    fileNames += '<span class="am-badge">' + this.name + '</span> ';
                });
                $('#file-list').html(fileNames);
            });
        } else {
            $inputImage.prop('disabled', true).parent().addClass('disabled');
        }

//绑定上传事件
        $('#up-btn-ok').on('click',function(){
            var $modal = $('#my-modal-loading');
            var $modal_alert = $('#my-alert');
            var img_src=$image.attr("src");
            if(img_src==""){
                set_alert_info("没有选择上传的图片");
                $modal_alert.modal();
                return false;
            }

            $modal.modal();

            var url=$(this).attr("url");
            var canvas=$("#image").cropper('getCroppedCanvas');
            var data=canvas.toDataURL(); //转成base64
            console.log(data.toString())
            $.ajax( {
                url:url,
                dataType:'text',
                type: "POST",
                data: {"image":data.toString()},
                success: function(data, status){
                    $modal.modal('close');
                    set_alert_info("保存成功!");
                    $modal_alert.modal();

                    $("#up-img-touch img").attr("src",'${ctx}' + data);

                    var img_name=data.split('/')[2];
                    console.log(img_name);
                    $("#headImg").val(data);

                },
                error: function(data, status, e){
                    $modal.modal('close');
                    set_alert_info("上传文件失败了！");
                    $modal_alert.modal();
                }
            });

        });

    });

    function rotateimgright() {
        $("#image").cropper('rotate', 90);
    }


    function rotateimgleft() {
        $("#image").cropper('rotate', -90);
    }

    function set_alert_info(content){
        $("#alert_content").html(content);
    }
</script>
</body>
</html>
