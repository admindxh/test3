<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微投票</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinSurveyController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinSurveyPage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinSurveyPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinSurveyPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinSurveyPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinSurveyPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								调研题目:
							</label>
						</td>
						<td class="value">
						     	 <input id="surveyTitle" name="surveyTitle" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinSurveyPage.surveyTitle}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投票标题</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								参与人数:
							</label>
						</td>
						<td class="value">
						     	 <input id="surveyCount" name="surveyCount" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinSurveyPage.surveyCount}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投票人数</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								调研描述:
							</label>
						</td>
						<td class="value">
						     	 <input id="surveyDescription" name="surveyDescription" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinSurveyPage.surveyDescription}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投票描述</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								赠送积分:
							</label>
						</td>
						<td class="value">
						     	 <input id="integral" name="integral" type="text" datatype="n" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinSurveyPage.integral}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">积分</label>
						</td>
					</tr>
					<tr>
					<td align="right">
						<label class="Validform_label">
							题目类型:
						</label>
					</td>
					<td class="value">
					     	 <t:dictSelect field="surveytype" id="surveytype" type="list" 
									typeGroupCode="surveytype" defaultVal="${weixinSurveyPage.surveytype}" hasLabel="false"  title="题目类型"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">题目类型</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/idea/survey/weixinSurvey.js"></script>		