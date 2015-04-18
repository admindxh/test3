<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="payConfigList" title="支付方式设置" actionUrl="payConfigController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="支付方式名称" field="payname" ></t:dgCol>
    <t:dgCol title="商户账号" field="sellerEmail" ></t:dgCol>
	<t:dgCol title="合作身份（Partner ID）" field="partner" ></t:dgCol>
   <t:dgCol title="安全校验码（key）" field="paykey" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="payConfigController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="payConfigController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="payConfigController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="payConfigController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>