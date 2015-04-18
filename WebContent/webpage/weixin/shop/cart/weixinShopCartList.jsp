<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinShopCartList" title="购物车 " actionUrl="weixinShopCartController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="商品名称" field="shopGoodsEntity.title" width="100"></t:dgCol>
   <t:dgCol title="商品属性" field="goodsProperty" width="100"></t:dgCol>
   <t:dgCol title="单价" field="buyPrice" width="100"></t:dgCol>
   <t:dgCol title="数量" field="count" width="100"></t:dgCol>
   <t:dgCol title="总结金额" field="total" width="100"></t:dgCol>
   <t:dgCol title="买家名称" field="buyer.userName" width="100"></t:dgCol>
  </t:datagrid>
  </div>
 </div>