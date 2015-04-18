<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinVipMemberList" title="微信会员卡和用户关系表" actionUrl="weixinVipMemberController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="会员姓名" field="memberName" ></t:dgCol>
   <t:dgCol title="预存款" field="memberBalance" ></t:dgCol>
   <t:dgCol title="积分" field="memberIntegral" ></t:dgCol>
   <t:dgCol title="加入时间" field="createTime" formatter="yyyy-MM-dd"></t:dgCol>
   <t:dgCol title="会员卡级别" field="vipInfo.levelId" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinVipMemberController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinVipMemberController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinVipMemberController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinVipMemberController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>