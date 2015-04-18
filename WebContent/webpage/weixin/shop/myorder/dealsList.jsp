<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="dealsList" title="购物车 " actionUrl="weixinShopDealController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="订单号" field="dealNumber" width="100"></t:dgCol>
   <t:dgCol title="买家名称" field="createName"  width="100"></t:dgCol>
   <t:dgCol title="商品名称" field="shopGoods.title"  width="100"></t:dgCol>
   <t:dgCol title="数量" field="buycount"  width="100"></t:dgCol>
   <t:dgCol title="支付方式" field="paytype"  width="100"></t:dgCol>
   <t:dgCol title="订单状态" field="dealStatement"  width="100"></t:dgCol>
   <t:dgCol title="配送信息" field="addressDetail"  width="100"></t:dgCol>
   <t:dgCol title="应付款" field="yfmny"  width="100"></t:dgCol>
   <t:dgCol title="买家留言" field="buyerLeaveWords" width="100"></t:dgCol>
   <t:dgCol title="收件人姓名" field="receivename" width="100"></t:dgCol>
   <t:dgCol title="联系电话" field="receivemobile" width="100"></t:dgCol>
   <t:dgCol title="邮编" field="receivepostno" width="100"></t:dgCol>
    <t:dgCol title="收货地址" field="receiveaddress" width="100"></t:dgCol>
   <t:dgCol title="创建时间" field="createDate" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinShopDealController.do?doDel&id={id}" />
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinShopDealController.do?goUpdate" funname="update"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>