<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="formobj" title="微社区帖子" actionUrl="weixinBbsPostController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="标题" field="title" ></t:dgCol>
   <t:dgCol title="发帖人" field="postPerson" ></t:dgCol>
   <t:dgCol title="是否置顶" sortable="true" field="topStatus" dictionary="yesorno" query="true"></t:dgCol>
   <t:dgCol title="评论数" field="commentCount" ></t:dgCol>
   <t:dgCol title="赞数" field="praiseCount" ></t:dgCol>
   <t:dgCol title="发帖时间" field="createDate" formatter="yyyy-MM-dd hh:mm:ss" query="true" queryMode="group"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgFunOpt funname="comment(id)" title="评论" />
   <t:dgFunOpt funname="postTop(id)" title="置顶" />
   <t:dgDelOpt title="删除" url="weixinBbsPostController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinBbsPostController.do?addorupdate" funname="add" width="800" height="600"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinBbsPostController.do?addorupdate" funname="update" width="800" height="600"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
<script type="text/javascript">
function comment(id) {
	createwindow('评论', 'weixinBbsPostController.do?goComment&id=' + id);
}
function postTop(id) {
  	var url = 'weixinBbsPostController.do?postTop&id='+id;
  	$.dialog.confirm("确认置顶", function(){
		doAjaxSubmit(url,cc);
	}, function(){
	}).zindex();
}
function cc(r){
  	reloadTable();
}
</script>