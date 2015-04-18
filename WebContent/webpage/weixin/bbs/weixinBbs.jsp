<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微社区</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="weixinBbsController.do?save">
		<input id="id" name="id" type="hidden" value="${weixinBbsPage.id }">
		<fieldset class="step">
			<div class="form">
		      <label class="Validform_label">社区名称:</label>
		      <input class="inputxt" id="name" name="name" ignore="ignore"
					   value="${weixinBbsPage.name}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">官方昵称:</label>
		      <input class="inputxt" id="nickName" name="nickName" ignore="ignore"
					   value="${weixinBbsPage.nickName}">
		      <span class="Validform_checktip"></span>
		    </div>
		    <!-- 
			<div class="form">
		      <label class="Validform_label">访问权限:</label>
		      <input class="inputxt" id="accessAuth" name="accessAuth" ignore="ignore"
					   value="${weixinCommunityPage.accessAuth}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">发帖审核:</label>
		      <input class="inputxt" id="postCheck" name="postCheck" ignore="ignore"
					   value="${weixinCommunityPage.postCheck}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">评论审核:</label>
		      <input class="inputxt" id="commentCheck" name="commentCheck" ignore="ignore"
					   value="${weixinCommunityPage.commentCheck}">
		      <span class="Validform_checktip"></span>
		    </div>
		     -->
		     <div class="form">
		     <button type="button" id="codGoPay" onclick="saveBbs()">确认</button>
		     </div>
	    </fieldset>
  </t:formvalid>
 </body>
<script type="text/javascript">
function saveBbs() {
	var url = 'weixinBbsController.do?save';
	doAjaxSubmit(url, cc);
}
function cc(){
	tip('操作成功');
	reloadTable();
}
</script>