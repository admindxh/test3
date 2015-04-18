<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="wxZhongjiangList" checkbox="true" fitColumns="false" title="中奖记录" actionUrl="wxZhongjiangController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="社区平台"  field="platformCode"  query="true" hidden="true" replace="微博_1,贴吧_2,QQ空间_3,微信_4"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="平台账号"  field="userAccount"  query="true" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="活动名称"  field="huoddongId"  query="true"  hidden="true" dictionary="wx_huodong,id,hd_name" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="奖品名称"  field="jpName"  query="true" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="奖品代码"  field="jpCode"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="奖品级别"  field="jpLevel"  hidden="true" replace="小于200_0,大于200_1" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="兑奖状态"  field="jpFlag"  hidden="true"  replace="未兑奖_0,已兑奖_1" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="兑奖人姓名"  field="userAnme"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="联系方式"  field="userTelphone"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收件地址"  field="userAddress"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="备注"  field="content"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="身份证正面"  image="true"  imageSize="140,50" field="idcardAFile"  hidden="true"  queryMode="single"></t:dgCol>
   <t:dgCol title="身份证反面"  image="true"  imageSize="140,50" field="idcardBFile"  hidden="true"  queryMode="single"  ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="wxZhongjiangController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="wxZhongjiangController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="wxZhongjiangController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="wxZhongjiangController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="wxZhongjiangController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入中奖记录" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出中奖用户信息" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
<%--   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/buss/weixin/wxZhongjiangList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {

	//add('中奖记录Excel数据导入','wxZhongjiangController.do?upload','wx_zhongjiangList');
	
	openuploadwin('中奖记录Excel数据导入', 'wxZhongjiangController.do?upload', "wxZhongjiangList");

}

//导出
function ExportXls() {
	JeecgExcelExport("wxZhongjiangController.do?exportXls","wxZhongjiangList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("wxZhongjiangController.do?exportXlsByT","wxZhongjiangList");
}
 </script>