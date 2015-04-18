<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微信会员卡和用户关系表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="weixinVipMemberController.do?save">
		<input id="id" name="id" type="hidden" value="${weixinVipMemberPage.id }">
		<fieldset class="step">
			<div class="form">
		      <label class="Validform_label">会员姓名:</label>
		      <input class="inputxt" id="memberName" name="memberName" ignore="ignore"
					   value="${weixinVipMemberPage.memberName}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">预存款:</label>
		      <input class="inputxt" id="memberBalance" name="memberBalance" ignore="ignore"
					   value="${weixinVipMemberPage.memberBalance}" datatype="d">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">积分:</label>
		      <input class="inputxt" id="memberIntegral" name="memberIntegral" ignore="ignore"
					   value="${weixinVipMemberPage.memberIntegral}" datatype="n">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">加入时间:</label>
		      <input class="Wdate" onClick="WdatePicker()"  style="width: 150px" id="createTime" name="createTime" 
					   value="<fmt:formatDate value='${weixinVipMemberPage.createTime}' type="date" pattern="yyyy-MM-dd"/>" datatype="*">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">会员卡级别:</label>
		      <select id="levelId" name="levelId" value="${weixinVipInfoPage.vipInfo.levelId}" >
					      	<c:forEach  var="level" items="${LEVEL}">
					      		<c:choose>
					      		<c:when test="${level.levelIndex == weixinVipInfoPage.vipInfo.levelId}">
					      			<option value="${level.levelIndex}" selected="selected">${level.levelName}</option>
					      		</c:when>
					      		<c:otherwise>
					      			<option value="${level.levelIndex}">${level.levelName}</option>
					      		</c:otherwise>
					      		</c:choose>
					      	</c:forEach>
					      </select>
		      <span class="Validform_checktip"></span>
		    </div>
			<input type="hidden"  id="memberId" name="memberId" value="${weixinVipMemberPage.tsuer.id}">
	    </fieldset>
  </t:formvalid>
 </body>