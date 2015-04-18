<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinLeaveMsgList" title="留言信息" actionUrl="weixinLeaveMsgController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="昵称" field="nickName" ></t:dgCol>
   <t:dgCol title="内容" field="content" ></t:dgCol>
   <t:dgCol title="留言时间" field="createDate" formatter="yyyy-MM-dd hh:mm:ss"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgFunOpt funname="replyMsg(id)" title="回复留言" />
   <t:dgDelOpt title="删除" url="weixinLeaveMsgController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinLeaveMsgController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinLeaveMsgController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinLeaveMsgController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
</div>
<script type="text/javascript">
	function replyMsg(id) {
		createwindow('回复留言', 'weixinLeaveMsgController.do?goReplyMsg&id=' + id);
	}
</script>