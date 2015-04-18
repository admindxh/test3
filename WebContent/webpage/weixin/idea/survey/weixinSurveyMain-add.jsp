<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微投票</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
 </head>
 <body>
  <t:formvalid  formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinSurveyMainController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinSurveyMainPage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinSurveyMainPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinSurveyMainPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinSurveyMainPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinSurveyMainPage.updateDate }">
					<input id="surveyCount" name="surveyCount" type="hidden" value="${weixinSurveyMainPage.surveyCount }">
					<input id="statement" name="statement" type="hidden" value="${weixinSurveyMainPage.statement }">
		<table  cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							调研问卷:
						</label>
					</td>
					<td class="value">
					     	 <textarea id="surveyTitle" rows="2" cols="100" name="surveyTitle"  >${weixinSurveyMainPage.surveyTitle}</textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">调研题目</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							调研描述:
						</label>
					</td>
					<td class="value">
					     	 <textarea rows="2" cols="100" id="surveyDescription" name="surveyDescription">${weixinSurveyMainPage.surveyDescription}</textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">调研描述</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							赠送积分:
						</label>
					</td>
					<td class="value">
					     	 <input id="integral" name="integral" type="text" datatype="n" style="width: 150px" class="inputxt" value="${weixinSurveyMainPage.integral}">
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">赠送积分</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							开始时间:
						</label>
					</td>
					<td class="value">
					     	 <input id="beginDate" name="beginDate" type="text"  class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width: 150px" class="inputxt" value="${weixinSurveyMainPage.beginDate}">
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">开始时间</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							截止时间:
						</label>
					</td>
					<td class="value">
					     	 <input id="validDate" name="validDate" type="text"  class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width: 150px" class="inputxt" value="${weixinSurveyMainPage.validDate}">
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">截止时间</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/idea/survey/weixinSurvey.js"></script>		