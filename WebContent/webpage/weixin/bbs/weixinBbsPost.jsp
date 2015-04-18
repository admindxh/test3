<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微社区帖子</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <link type="text/css" rel="stylesheet" href="plug-in/weixin/css/appmsg_edit.css" />
  <link type="text/css" rel="stylesheet" href="plug-in/bootstrap/css/bootstrap.min.css" />
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  
  <!--UEditor-->
  <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.config.js"></script>
  <script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.all.min.js"></script>
    
  <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
  <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
  <script type="text/javascript" charset="utf-8" src="plug-in/ueditor/lang/zh-cn/zh-cn.js"></script>
 </head>
 <body>
	<div class="main_bd">
 		<div class="media_edit_area" id="js_appmsg_editor">	
			<div class="appmsg_editor" style="margin-top: 0px;width:80%>
		 		<div class="inner">
					<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinBbsPostController.do?save" callback="@Override uploadFile">
					<input type="hidden" id="id" name="id" value="${weixinBbsPostPage.id}"/>
					<input type="hidden" id="postId" name="postId" />
					<table cellpadding="0" cellspacing="1" class="formtable" >
						<tr>
							<td align="right">
								<label class="Validform_label">
									标题:
								</label>
							</td>
							<td class="value">
								<input class="inputxt" id="title" name="title" value="${weixinBbsPostPage.title}" datatype="*"/>
		      					<span class="Validform_checktip"></span>
							</td>
						</tr>
						<tr>
							<td align="right">
								<label class="Validform_label">
									内容:
								</label>
							</td>
							<td class="value">
								 <textarea name="content" id="content" style="width: 350px;height:300px">${weixinBbsPostPage.content}</textarea>
							    <script type="text/javascript">
							        var editor = UE.getEditor('content');
							    </script>
							</td>
						</tr>
						<tr>
						<td align="right">
								<label class="Validform_label">
								</label>
							</td>
							<td class="value">
							<c:forEach items="${weixinBbsPostPage.postImg}" var="postImg">
								<img src="${postImg.realpath}" width="130" height="107" >
								<a href="#" class="easyui-linkbutton" plain="true" icon="icon-remove" onclick="delImg('${postImg.id}')" title="删除相片"></a>
	         				</c:forEach>
	         				<t:upload name="fiels" id="file_upload" extend="*.jpg;*.png;" buttonText="添加照片" formData="postId" uploader="weixinBbsPostController.do?uploadPostImg">
							</t:upload>
							<div class="form" id="filediv"></div>
						</td>
					</tr>
				</table>
				</t:formvalid>
			</div>
			<i class="arrow arrow_out" style="margin-top: 0px;"></i>
			<i class="arrow arrow_in" style="margin-top: 0px;"></i>
		</div>
	</div>
	</div>
 </body>
<script lang="javascript">
	//跳转到上传照片页面
  	function delImg(imgId){
  		var url = 'weixinBbsPostController.do?delImg&id='+imgId;
  		doAjaxSubmit(url,handledel);
  	}
	function handledel(data){
		var postId = data.attributes.postId;
	    var url = 'weixinBbsPostController.do?addorupdate';
	    formobj.action = url;
	    formobj.submit();
	}
  	function uploadFile(data){
  		$('#postId').val(data.attributes.postId)
  		if($(".uploadify-queue-item").length>0){
  			upload();
  		}else{
  			frameElement.api.opener.reloadTable();
  			frameElement.api.close();
  		}
  	}
</script>