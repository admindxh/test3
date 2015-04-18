<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>活动和奖品关系表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="huoDongAwardController.do?save">
		<input id="id" name="id" type="hidden" value="${huoDongAwardPage.id }">
		<fieldset class="step">
			<div class="form">
		      <label class="Validform_label">awardId:</label>
		      <input class="inputxt" id="awardId" name="awardId" ignore="ignore"
					   value="${huoDongAwardPage.awardId}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">huodongId:</label>
		      <input class="inputxt" id="huodongId" name="huodongId" ignore="ignore"
					   value="${huoDongAwardPage.huodongId}">
		      <span class="Validform_checktip"></span>
		    </div>
	    </fieldset>
  </t:formvalid>
 </body>