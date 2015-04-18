<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinShopOrderDetailList" title="订单详情" actionUrl="weixinShopOrderDetailController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="单订Id" field="orderId" ></t:dgCol>
   <t:dgCol title="goodsId" field="goodsId" ></t:dgCol>
   <t:dgCol title="宝贝属性" field="goodsProperty" ></t:dgCol>
   <t:dgCol title="购买单价" field="buyPrice" ></t:dgCol>
   <t:dgCol title="购买数量" field="count" ></t:dgCol>
   <t:dgCol title="优惠/降价" field="reducePrice" ></t:dgCol>
   <t:dgCol title="总计金额" field="total" ></t:dgCol>
   <t:dgCol title="买家Id" field="buyerId" ></t:dgCol>
   <t:dgCol title="卖家Id" field="sellerId" ></t:dgCol>
   <t:dgCol title="商家微信号Id" field="accountid" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinShopOrderDetailController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinShopOrderDetailController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinShopOrderDetailController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinShopOrderDetailController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>