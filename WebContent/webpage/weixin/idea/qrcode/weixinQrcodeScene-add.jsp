<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>二维码场景信息</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinQrcodeSceneController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinQrcodeScenePage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinQrcodeScenePage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinQrcodeScenePage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinQrcodeScenePage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinQrcodeScenePage.updateDate }">
					<input id="accountid" name="accountid" type="hidden" value="${weixinQrcodeScenePage.accountid }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							场景键:
						</label>
					</td>
					<td class="value">
					     	 <input id="scenekey" name="scenekey" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">场景键</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							场景值:
						</label>
					</td>
					<td class="value">
					     	 <input id="scenevalue" name="scenevalue" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">场景值</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/idea/qrcode/weixinQrcodeScene.js"></script>		