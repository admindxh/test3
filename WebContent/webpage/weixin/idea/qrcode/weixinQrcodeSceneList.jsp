<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinQrcodeSceneList" checkbox="true" fitColumns="false" title="二维码场景信息" actionUrl="weixinQrcodeSceneController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="公众帐号ID"  field="accountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="场景键"  field="scenekey"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="场景值"  field="scenevalue"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinQrcodeSceneController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinQrcodeSceneController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinQrcodeSceneController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinQrcodeSceneController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinQrcodeSceneController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/idea/qrcode/weixinQrcodeSceneList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinQrcodeSceneController.do?upload', "weixinQrcodeSceneList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinQrcodeSceneController.do?exportXls","weixinQrcodeSceneList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinQrcodeSceneController.do?exportXlsByT","weixinQrcodeSceneList");
}
 </script>