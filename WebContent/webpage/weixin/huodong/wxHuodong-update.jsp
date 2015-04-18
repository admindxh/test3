<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>活动表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="wxHuodongController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${wxHuodongPage.id }">
					<input id="createName" name="createName" type="hidden" value="${wxHuodongPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${wxHuodongPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${wxHuodongPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${wxHuodongPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								活动名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="hdName" name="hdName" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${wxHuodongPage.hdName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">活动名称</label>
						</td>
					</tr>
					<tr>
					<td align="right">
						<label class="Validform_label">
							活动说明:
						</label>
					</td>
					<td class="value">
					     	 <input id="hdCaption" name="hdCaption" type="text" style="width: 150px" class="inputxt"  
								               datatype="*"
								               value='${wxHuodongPage.hdCaption}'
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">活动说明</label>
						</td>
				</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								活动状态:
							</label>
						</td>
						<td class="value">
<%--						     	 <input id="hdStatus" name="hdStatus" type="text" style="width: 150px" class="inputxt"  --%>
<%--									               --%>
<%--									                 value='${wxHuodongPage.hdStatus}'>--%>
							<t:dictSelect field="hdStatus" typeGroupCode="hdType"   hasLabel="false" type="select" defaultVal="${wxHuodongPage.hdStatus}"></t:dictSelect>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">活动状态</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/buss/weixin/huodong/wxHuodong.js"></script>		