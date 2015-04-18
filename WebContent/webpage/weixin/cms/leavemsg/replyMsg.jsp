、<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <title>留言信息</title>
    <t:base type="jquery,easyui,tools,DatePicker"></t:base>
   </head>
   <body style="overflow-y: hidden" scroll="no">
     <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinLeaveMsgController.do?replyMsg">
	   <input id="msgId" name="msgId" type="hidden" value="${weixinLeaveMsgPage.id }">
	     <table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
		   <tr>
		     <td align="right">
			   <label class="Validform_label">
			       回复内容:
			   </label>
			 </td>
			 <td class="value">
			   <textarea  rows="7" cols="60" name="content" id="content"></textarea>
			   <span class="Validform_checktip"></span>
			 </td>
		   </tr>
		 </table>
	  </t:formvalid>
	  <t:datagrid name="weixinLeaveMsgReplyList" title="回复列表" actionUrl="weixinLeaveMsgController.do?datagridReply&msgId=${weixinLeaveMsgPage.id }" idField="id" fit="true">
        <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
        <t:dgCol title="内容" field="content" ></t:dgCol>
        <t:dgCol title="回复时间" field="createDate" formatter="yyyy-MM-dd hh:mm:ss"></t:dgCol>
        <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
        <t:dgDelOpt title="删除" url="weixinLeaveMsgController.do?delReply&id={id}" />
      </t:datagrid>
    </body>
</html>