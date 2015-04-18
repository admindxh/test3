<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微信墙信息</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="weixinWallMessageController.do?save">
		<input id="id" name="id" type="hidden" value="${weixinWallMessagePage.id }">
		<fieldset class="step">
			<div class="form">
		      <label class="Validform_label">openid:</label>
		      <input class="inputxt" id="openid" name="openid" ignore="ignore"
					   value="${weixinWallMessagePage.openid}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">accountid:</label>
		      <input class="inputxt" id="accountid" name="accountid" ignore="ignore"
					   value="${weixinWallMessagePage.accountid}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">content:</label>
		      <input class="inputxt" id="content" name="content" ignore="ignore"
					   value="${weixinWallMessagePage.content}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">nickname:</label>
		      <input class="inputxt" id="nickname" name="nickname" ignore="ignore"
					   value="${weixinWallMessagePage.nickname}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">sex:</label>
		      <input class="inputxt" id="sex" name="sex" ignore="ignore"
					   value="${weixinWallMessagePage.sex}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">headimgurl:</label>
		      <input class="inputxt" id="headimgurl" name="headimgurl" ignore="ignore"
					   value="${weixinWallMessagePage.headimgurl}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">createtime:</label>
		      <input class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  style="width: 150px" id="createtime" name="createtime" ignore="ignore"
					     value="<fmt:formatDate value='${weixinWallMessagePage.createtime}' type="date" pattern="yyyy-MM-dd hh:mm:ss"/>">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">userid:</label>
		      <input class="inputxt" id="userid" name="userid" ignore="ignore"
					   value="${weixinWallMessagePage.userid}">
		      <span class="Validform_checktip"></span>
		    </div>
	    </fieldset>
  </t:formvalid>
 </body>