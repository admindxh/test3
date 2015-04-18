<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinWallList" title="微信墙" actionUrl="weixinWallController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="微信墙名称" field="name" ></t:dgCol>
   <t:dgCol title="关键字" field="keyword" ></t:dgCol>
   <t:dgCol title="logo"  field="logo" image="true" imageSize="100,50"  ></t:dgCol>
   <t:dgCol title="二维码"  field="qrCode" image="true" imageSize="100,50"  ></t:dgCol>
   <t:dgCol title="开始时间" field="starttime" formatter="yyyy-MM-dd"></t:dgCol>
   <t:dgCol title="结束时间" field="endtime" formatter="yyyy-MM-dd"></t:dgCol>
   <t:dgCol title="是否审核" field="type" ></t:dgCol>
   <t:dgCol title="刷新间隔(秒)" field="timer" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinWallController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinWallController.do?addorupdate" funname="add"></t:dgToolBar>
    <t:dgToolBar title="编辑" icon="icon-edit" url="weixinWallController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinWallController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>