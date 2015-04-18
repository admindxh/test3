<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微信墙</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
    <link type="text/css" rel="stylesheet" href="plug-in/weixin/css/appmsg_edit.css" />
  <link type="text/css" rel="stylesheet" href="plug-in/weixin/css/jquery.fileupload.css" />
  <link type="text/css" rel="stylesheet" href="plug-in/bootstrap/css/bootstrap.min.css" />
  
   <!--fileupload-->
  <script type="text/javascript" src="plug-in/weixin/js/vendor/jquery.ui.widget.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/load-image.min.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.fileupload.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.fileupload-process.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.fileupload-image.js"></script>
  <script type="text/javascript" src="plug-in/weixin/js/jquery.iframe-transport.js"></script>
    <script type="text/javascript">
  $(function () {
    'use strict';
    // Change this to the location of your server-side upload handler:
    var url = 'weixinArticleController.do?upload',
        uploadButton = $('<button/>')
            .addClass('btn btn-primary')
            .prop('disabled', true)
            .text('上传中...')
            .on('click', function () {
                var $this = $(this), data = $this.data();
                $this.off('click').text('正在上传...').on('click', function () {
                        $this.remove();
                        data.abort();
                });
                data.submit().always(function () {
                    $this.remove();
                });
            });
    $('#fileupload').fileupload({
        url: url,
        dataType: 'json',
        autoUpload: false,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
        maxFileSize: 2000000, // 2 MB
        disableImageResize: /Android(?!.*Chrome)|Opera/
            .test(window.navigator.userAgent),
        previewMaxWidth: 290,
        previewMaxHeight: 160,
        previewCrop: true
    }).on('fileuploadadd', function (e, data) {
        $("#files").text("");
        data.context = $('<div/>').appendTo('#files');
        $.each(data.files, function (index, file) {
            //var node = $('<p/>').append($('<span/>').text(file.name));
            //fileupload
            var node = $('<p/>');
            if (!index) {
                node.append('<br>').append(uploadButton.clone(true).data(data));
            }
            node.appendTo(data.context);
        });
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
            file = data.files[index],
            node = $(data.context.children()[index]);
        if (file.preview) {
            node.prepend('<br>').prepend(file.preview);
        }
        if (file.error) {
            node
                .append('<br>')
                .append($('<span class="text-danger"/>').text(file.error));
        }
        if (index + 1 === data.files.length) {
            data.context.find('button')
                .text('上传')
                .prop('disabled', !!data.files.error);
        }
    }).on('fileuploadprogressall', function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        $('#progress .progress-bar').css(
            'width',
            progress + '%'
        );
    }).on('fileuploaddone', function (e, data) {
       // console.info(data);
        var  file = data.files[0];
        //var delUrl = "<a class=\"js_removeCover\" onclick=\"return false;\" href=\"javascript:void(0);\">删除</a>";
        $("#imgName").text("").append(file.name);
        $("#progress").hide();
		var d =data.result;
		if (d.success) {
			var link = $('<a>').attr('target', '_blank').prop('href', d.attributes.viewhref);
        	$(data.context.children()[0]).wrap(link);
        	console.info(d.attributes.viewhref);
        	$("#logo").val(d.attributes.url);
		}else{
			var error = $('<span class="text-danger"/>').text(d.msg);
            $(data.context.children()[0]).append('<br>').append(error);
		}
    }).on('fileuploadfail', function (e, data) {
        $.each(data.files, function (index, file) {
            var error = $('<span class="text-danger"/>').text('File upload failed.');
            $(data.context.children()[index])
                .append('<br>')
                .append(error);
        });
    }).prop('disabled', !$.support.fileInput)
        .parent().addClass($.support.fileInput ? undefined : 'disabled');
    /*****************************************************************************************/
    $('#fileupload1').fileupload({
        url: url,
        dataType: 'json',
        autoUpload: false,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
        maxFileSize: 2000000, // 2 MB
        disableImageResize: /Android(?!.*Chrome)|Opera/
            .test(window.navigator.userAgent),
        previewMaxWidth: 290,
        previewMaxHeight: 160,
        previewCrop: true
    }).on('fileuploadadd', function (e, data) {
        $("#files1").text("");
        data.context = $('<div/>').appendTo('#files1');
        $.each(data.files, function (index, file) {
            //var node = $('<p/>').append($('<span/>').text(file.name));
            //fileupload
            var node = $('<p/>');
            if (!index) {
                node.append('<br>').append(uploadButton.clone(true).data(data));
            }
            node.appendTo(data.context);
        });
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
            file = data.files[index],
            node = $(data.context.children()[index]);
        if (file.preview) {
            node.prepend('<br>').prepend(file.preview);
        }
        if (file.error) {
            node
                .append('<br>')
                .append($('<span class="text-danger"/>').text(file.error));
        }
        if (index + 1 === data.files.length) {
            data.context.find('button')
                .text('上传')
                .prop('disabled', !!data.files.error);
        }
    }).on('fileuploadprogressall', function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        $('#progress .progress-bar').css(
            'width',
            progress + '%'
        );
    }).on('fileuploaddone', function (e, data) {
       // console.info(data);
        var  file = data.files[0];
        //var delUrl = "<a class=\"js_removeCover\" onclick=\"return false;\" href=\"javascript:void(0);\">删除</a>";
        $("#imgName1").text("").append(file.name);
        $("#progress1").hide();
		var d =data.result;
		if (d.success) {
			var link = $('<a>').attr('target', '_blank').prop('href', d.attributes.viewhref);
        	$(data.context.children()[0]).wrap(link);
        	console.info(d.attributes.viewhref);
        	$("#qrCode").val(d.attributes.url);
		}else{
			var error = $('<span class="text-danger"/>').text(d.msg);
            $(data.context.children()[0]).append('<br>').append(error);
		}
    }).on('fileuploadfail', function (e, data) {
        $.each(data.files, function (index, file) {
            var error = $('<span class="text-danger"/>').text('File upload failed.');
            $(data.context.children()[index])
                .append('<br>')
                .append(error);
        });
    }).prop('disabled', !$.support.fileInput)
        .parent().addClass($.support.fileInput ? undefined : 'disabled');
});
  function checkradio(obj){
	  $("#type").val(obj);
  }
</script>
 </head>
 <body>
		<fieldset class="step">
		
		<table>
				<tr>
					<td style="height:350px;">
					<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="weixinWallController.do?save">
					<input id="id" name="id" type="hidden" value="${weixinWallPage.id }">
						<div class="form">
		      <label class="Validform_label">活动名称:</label>
		      <input class="inputxt" id="name" name="name" ignore="ignore"
					   value="${weixinWallPage.name}" <c:if test="${not empty weixinWallPage.name}">readonly='readonly'</c:if> />
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">关键字:</label>
		      <input class="inputxt" id="keyword" name="keyword" ignore="ignore"
					   value="${weixinWallPage.keyword}" <c:if test="${not empty weixinWallPage.keyword}">readonly="readonly"</c:if>>
		      <span class="Validform_checktip"></span>
		    </div>
		    <div class="form" style="width:300px;">
					    	<label class="Validform_label">logo:</label>
				      			 <div style="height:20px;">
							      <span class="btn btn-success fileinput-button" style="height:20px;<c:if test="${not empty weixinWallPage.qrCode}">display:none;</c:if>">
								        <i class="glyphicon glyphicon-plus"></i>
								        <span>浏览</span>
								        <!-- The file input field used as target for the file upload widget -->
								        <input id="fileupload" type="file" name="files[]" multiple <c:if test="${not empty weixinWallPage.logo}">readonly="readonly"</c:if>>
								        <input id="logo" name="logo" type="hidden"  datatype="*" nullmsg="请添加图片"
								         <c:if test="${not empty weixinWallPage.logo}">readonly="readonly"</c:if>  value="${weixinWallPage.logo}">
									</span>
									<div id="imgName"></div>
								  </div>
					      <span class="Validform_checktip"></span>
			</div>
			<div class="form" style="width:300px;">
					    	<label class="Validform_label">二维码:</label>
				      			 <div style="height:20px;">
				      			 
							      <span class="btn btn-success fileinput-button" style="height:20px; <c:if test="${not empty weixinWallPage.qrCode}">display:none;</c:if>" >
								        <i class="glyphicon glyphicon-plus"></i>
								        <span>浏览</span>
								        <!-- The file input field used as target for the file upload widget -->
								        <input id="fileupload1" type="file" name="files[]" multiple  <c:if test="${not empty weixinWallPage.qrCode}">readonly="readonly"</c:if>>
								        <input id="qrCode" name="qrCode" type="hidden"  datatype="*" nullmsg="请添加图片"
										 <c:if test="${not empty weixinWallPage.qrCode}">readonly="readonly"</c:if> value="${weixinWallPage.qrCode}">
									</span>
									<div id="imgName1"></div>
								  </div>
					      <span class="Validform_checktip"></span>
			</div>
			<div class="form">
		      <label class="Validform_label">开始时间:</label>
		      <input class="Wdate"   style="width: 150px" id="starttime" name="starttime" ignore="ignore"
		      			<c:choose>
		      				<c:when test="${not empty weixinWallPage.starttime}">
		      					readonly="readonly"
		      				</c:when>
		      				<c:otherwise>
		      				onClick="WdatePicker()"
		      				</c:otherwise>
		      			</c:choose>
					   value="<fmt:formatDate value='${weixinWallPage.starttime}'  type="date" pattern="yyyy-MM-dd"/>">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">结束时间:</label>
		      <input class="Wdate"   style="width: 150px" id="endtime" name="endtime" ignore="ignore"
					<c:choose>
		      				<c:when test="${not empty weixinWallPage.endtime}">
		      					readonly="readonly"
		      				</c:when>
		      				<c:otherwise>
		      				onClick="WdatePicker()"
		      				</c:otherwise>
		      			</c:choose>
					   value="<fmt:formatDate value='${weixinWallPage.endtime}' type="date" pattern="yyyy-MM-dd"/>">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">审核：</label>
		      <input type="radio" name="type_radio" value="0" checked="checked" onclick="checkradio(0)">不审核
		      <input type="radio" name="type_radio" value="1" onclick="checkradio(1)">人工审核
		      <input type="hidden" class="inputxt" id="type" name="type" ignore="ignore" value="0">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">屏幕刷新间隔:</label>
		      <input class="inputxt" id="timer" style="width:30px;" name="timer" ignore="ignore"
					   value="${weixinWallPage.timer}" datatype="n">秒
		      <span class="Validform_checktip"></span>
		    </div>
		      </t:formvalid>
					</td>
					<td  style="height:350px;">
						<div class="media_preview_area" style="margin-left:-325px;">
							<div class="appmsg editing">
								<div class="appmsg_content" id="js_appmsg_preview">
									<h4 class="appmsg_title">
										<a target="_blank" href="javascript:void(0);"
											onclick="return false;">logo封面</a>
									</h4>
									<div class="appmsg_info">
										<em class="appmsg_date"></em>
									</div>
									<div id="files" class="files">
										<i class="appmsg_thumb default">封面图片</i>
									</div>
									 <div id="progress" class="progress">
								        <div class="progress-bar progress-bar-success"></div>
								    </div>
									<p class="appmsg_desc"></p>
								</div>
							</div>
					</div>
					<div class="media_preview_area" style="margin-left:-325px;">
							<div class="appmsg editing">
								<div class="appmsg_content" id="js_appmsg_preview1">
									<h4 class="appmsg_title">
										<a target="_blank" href="javascript:void(0);"
											onclick="return false;">二维码封面</a>
									</h4>
									<div class="appmsg_info">
										<em class="appmsg_date"></em>
									</div>
									<div id="files1" class="files">
										<i class="appmsg_thumb default">封面图片</i>
									</div>
									 <div id="progress1" class="progress">
								        <div class="progress-bar progress-bar-success"></div>
								    </div>
									<p class="appmsg_desc"></p>
								</div>
							</div>
					</div>
					</td>
					</tr>
					</table>
			
	    </fieldset>
 </body>