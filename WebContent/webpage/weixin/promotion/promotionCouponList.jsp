<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="promotionCouponList" title="促销模块--优惠劵" actionUrl="promotionCouponController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="优惠劵名称" field="name" ></t:dgCol>
   <t:dgCol title="优惠劵批次" field="code" ></t:dgCol>
      <t:dgCol title="面值" field="price" ></t:dgCol>
   <t:dgCol title="发放数量" field="quantity"></t:dgCol>
   <t:dgCol title="发放状态" field="status" ></t:dgCol>
   <t:dgCol title="开始时间" field="startTime" formatter="yyyy-MM-dd hh:mm:ss"></t:dgCol>
   <t:dgCol title="结束时间" field="endTime" formatter="yyyy-MM-dd hh:mm:ss"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="promotionCouponController.do?del&id={id}" exp="status#ne#0" />
   <t:dgToolBar title="录入" icon="icon-add" url="promotionCouponController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="promotionCouponController.do?addorupdate" funname="update" ></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="promotionCouponController.do?addorupdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="发放优惠劵" icon="icon-redo" url="memberCouponController.do?grantMemberByCoupon" funname="add"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
   <script type="text/javascript">
  $(document).ready(function(){  
	  setTimeout(function(){
		  $(".datagrid-cell-c1-status").each(function(){
			  if($(this).text()=='0'){
				  $(this).html("发放中");
			  }else if($(this).text()=='1'){
				  $(this).html("已发完");
			  }else if($(this).text()=='2'){
				  $(this).html("已结束");
			  }
		  });
	  },500);
  });
  function yellow(){
	  alert("123");
  }
  </script>