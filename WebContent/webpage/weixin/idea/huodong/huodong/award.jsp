<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>奖品表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="awardController.do?save">
		<input id="id" name="id" type="hidden" value="${awardPage.id }">
		<fieldset class="step">
			<div class="form">
		      <label class="Validform_label">奖品名称:</label>
		      <input class="inputxt" id="name" name="name" ignore="ignore"
					   value="${awardPage.name}">
		      <span class="Validform_checktip"></span>
		    </div>
	    </fieldset>
  </t:formvalid>
 </body>