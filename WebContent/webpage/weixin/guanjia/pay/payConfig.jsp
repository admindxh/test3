<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>支付方式设置</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="payConfigController.do?save">
		<input id="id" name="id" type="hidden" value="${payConfigPage.id }">
		<fieldset class="step">
			<input class="inputxt" type="hidden" id="payname" name="payname" ignore="ignore"  value="支付宝（即时到帐）">
		    <div class="form">
		      <label class="Validform_label">支付宝账号:</label>
		      <input class="inputxt" id="sellerEmail" name="sellerEmail" ignore="ignore"
					   value="${payConfigPage.sellerEmail}">
		      <span class="Validform_checktip"></span>
		    </div>
		    <div class="form">
		      <label class="Validform_label">合作身份（Partner ID):</label>
		      <input class="inputxt" id="partner" name="partner" ignore="ignore"
					   value="${payConfigPage.partner}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">安全校验码(key):</label>
		      <input class="inputxt" id="paykey" name="paykey" ignore="ignore"
					   value="${payConfigPage.paykey}">
		      <span class="Validform_checktip"></span>
		    </div>
	    </fieldset>
  </t:formvalid>
 </body>