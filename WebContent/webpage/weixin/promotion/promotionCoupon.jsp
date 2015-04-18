<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>促销模块--优惠劵</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="" scroll="yes">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="promotionCouponController.do?save">
		<input id="id" name="id" type="hidden" value="${promotionCouponPage.id }">
		<fieldset class="step">
			<div class="form">
		      <label class="Validform_label">优惠劵民称:</label>
		      <input class="inputxt" id="name" name="name" ignore="ignore"
					   value="${promotionCouponPage.name}">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">批次:</label>
		      	<c:choose>
		      		<c:when test="${code==null}">
		      			<input class="inputxt" id="code" name="code" ignore="ignore"
					   value="${promotionCouponPage.code}" readonly="readonly">
		      		</c:when>
		      		<c:otherwise>
		      			<input class="inputxt" id="code" name="code" ignore="ignore"
					   value="${code}" readonly="readonly">
		      		</c:otherwise>
		      	</c:choose>
		      <span class="Validform_checktip"></span>
		    </div>
		    <div class="form">
		      <label class="Validform_label">面值:</label>
		      <input class="inputxt" id="price" name="price" ignore="ignore"
					   value="${promotionCouponPage.price}" datatype="d">
		      <span class="Validform_checktip"></span>
		    </div>
		    <!--  type:增长服务：可以选择是系统发放还是人工发放
			<div class="form">
		      <label class="Validform_label">type:</label>
		      <input class="inputxt" id="type" name="type" ignore="ignore"
					   value="${promotionCouponPage.type}">
		      <span class="Validform_checktip"></span>
		    </div>
		     -->
			<div class="form">
		      <label class="Validform_label">发放数量:</label>
		      <input class="inputxt" id="quantity" name="quantity" ignore="ignore"
					   value="${promotionCouponPage.quantity}" datatype="n">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">开始时间:</label>
		      <input class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  style="width: 150px" id="startTime" name="startTime" ignore="ignore"
					     value="<fmt:formatDate value='${promotionCouponPage.startTime}' type="date" pattern="yyyy-MM-dd hh:mm:ss"/>">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">结束时间:</label>
		      <input class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  style="width: 150px" id="endTime" name="endTime" ignore="ignore"
					     value="<fmt:formatDate value='${promotionCouponPage.endTime}' type="date" pattern="yyyy-MM-dd hh:mm:ss"/>">
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">选择限商品:</label>
		      <input type="radio" id="restrictType" name="restrictType"  value="0" checked="checked" onclick="checkGoods(this)"   />不限商品 
		      <input type="radio" id="restrictType" name="restrictType"  value="1" onclick="checkGoods(this)"  />限商品
		      <span class="Validform_checktip"></span>
		    </div>
		    <div class="form" id="selectGoods" style="display:none;">
		      <label class="Validform_label">限制商品:</label>
		       <input type="hidden" class="inputxt" id="restrictGoods" name="restrictGoods" ignore="ignore" value="${promotionCouponPage.restrictGoods}">
		       <input type="text" class="inputxt" id="restrictTypeName" name="restrictTypeName" ignore="ignore">
		     <t:choose hiddenName="restrictGoods" hiddenid="id" url="weixinShopGoodsController.do?weixinShopGoods" name="weixinShopGoodsList" inputTextname="restrictTypeName" icon="icon-search" title="选择商品" textname="title" isclear="true" ></t:choose>
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">限金额:</label>
		      <input class="inputxt" id="restrictPrice" name="restrictPrice" ignore="ignore"
					   value="${promotionCouponPage.restrictPrice}" datatype="d">
					   <span>满消费金额才能使用,如果为0,则消费金额无限制</span>
		      <span class="Validform_checktip"></span>
		    </div>
	    </fieldset>
  </t:formvalid>
  <script>
  $(document).ready(function(){  
	      $("input[name='restrictType']").each(function(){
	    	  var type = '${promotionCouponPage.restrictType}';
	    	  if($(this).val()==type){
	    		  $(this).attr("checked",true);
	    	  }
	      });
	}); 
  function checkGoods(obj){
	  if(obj.value==1){
		  $("#selectGoods").show();
	  }else{
		  $("#selectGoods").hide();
		  $("#restrictType").val("");
	  }
  }
  </script>
 </body>