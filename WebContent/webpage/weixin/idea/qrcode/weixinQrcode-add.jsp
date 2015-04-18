<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>二维码信息</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
	  $("#actionName").change(function(){
		  var type=$("#actionName").val();
	  		if(type==2){
	  			$("#expireSeconds").attr("readonly","readonly");
	  		}else{
	  			$("#expireSeconds").removeAttr("readonly");
	  		}
	  });
	});
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinQrcodeController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinQrcodePage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinQrcodePage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinQrcodePage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinQrcodePage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinQrcodePage.updateDate }">
					<input id="accountid" name="accountid" type="hidden" value="${weixinQrcodePage.accountid }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							二维码类型:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="actionName" id="actionName" type="list" 
									typeGroupCode="qrcodetype" defaultVal="${weixinQrcodePage.actionName}" hasLabel="false"  title="二维码类型"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">二维码类型</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							二维码详细信息:
						</label>
					</td>
					<td class="value">
					     	 <input id="actionInfo" name="actionInfo" type="text" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">二维码详细信息</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							场景键:
						</label>
					</td>
					<td class="value">
						<select name="sceneId" id="sceneId">
							<c:forEach items="${scenelist}" var="scene">
          						<option value="${scene.scenekey}">${scene.scenevalue}</option>
          					</c:forEach>
          				</select>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">场景键</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							有效时间:
						</label>
					</td>
					<td class="value">
					     	 <input id="expireSeconds" name="expireSeconds" type="text" style="width: 150px" class="inputxt"   >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">有效时间</label>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/idea/qrcode/weixinQrcode.js"></script>		