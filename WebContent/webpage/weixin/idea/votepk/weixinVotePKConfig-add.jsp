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
  <t:formvalid  formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinVotePKConfigController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinVotePKConfigPage.id }">
					<input id="accountid" name="accountid" type="hidden" value="${weixinVotePKConfigPage.accountid }">
		<table  cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							参数名:
						</label>
					</td>
					<td class="value">
					     	 <textarea rows="1" cols="100" id="configName" datatype="*"  name="configName">${weixinVotePKConfigPage.configName}</textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">参数名:</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							参数值:
						</label>
					</td>
					<td class="value">
					     	 <textarea rows="4" cols="100" id="configValue" datatype="*"  name="configValue">${weixinVotePKConfigPage.configValue}</textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">参数值</label>
						</td>
				</tr>
			</table>
	</t:formvalid>
 </body>
  <script src = "webpage/weixin/idea/vote/weixinVote.js"></script>		