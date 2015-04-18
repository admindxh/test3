<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>分组管理</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="groupYwController.do?doSelectGroup">
			<input id="id" name="idStr" type="hidden" value="${idStr}">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							选择分组:
						</label>
					</td>
					<td class="value">
						<select name="groupId" id="groupId">
							<c:forEach items="${groupList}" var="group">
								<option value="${group.id}">${group.name}</option>
							</c:forEach>
						</select>
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>