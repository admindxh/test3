<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinVotePKConfigList" checkbox="true" fitColumns="false" title="微投票PK报名信息" actionUrl="weixinVotePKSignUserinfoController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="姓名"  field="realname"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系电话"  field="tel"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="电子邮箱"  field="email"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="当前票数"  field="votecount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="报名时间"  field="signdate" formatter="yyyy-MM-dd hh:mm:ss"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="OPENID"  field="openid" dictionary="votepktype"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="昵称"  field="openid" dictionary="weixin_gzuserinfo,id,nickname,accountid='${WEIXIN_ACCOUNT.id}'"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinVotePKRecordController.do?goUpdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/idea/vote/weixinVotePKConfigList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinVotePKRecordController.do?upload', "weixinVotePKConfigList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinVotePKRecordController.do?exportXls","weixinVotePKConfigList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinVotePKRecordController.do?exportXlsByT","weixinVotePKConfigList");
}
 </script>