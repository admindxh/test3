<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>发放优惠劵</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="div" action="memberCouponController.do?save">
		<input id="id" name="id" type="hidden" value="${memberCouponPage.id }">
		<fieldset class="step">
			<div class="form" id="selecCoupons">
		      <label class="Validform_label">选择优惠劵:</label>
		       <input type="hidden" class="inputxt" id="coupon" name="coupon.id" ignore="ignore" value="">
		       <input type="text" class="inputxt" id="couponsname" name="couponsname" ignore="ignore">
		     <t:choose hiddenName="coupon" hiddenid="id" url="promotionCouponController.do?promotionCoupon" name="promotionCouponList" inputTextname="couponsname" icon="icon-search" title="选择优惠劵" textname="name" isclear="true" ></t:choose>
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form" id="selectMembers">
		      <label class="Validform_label">选择发放会员:</label>
		       <input type="hidden" class="inputxt" id="memberVip" name="memberVip.id" ignore="ignore" value="">
		       <input type="text" class="inputxt" id="membersname" name="membersname" ignore="ignore">
		     <t:choose hiddenName="memberVip" hiddenid="id" url="weixinVipMemberController.do?weixinVipMember" name="weixinVipMemberList" inputTextname="membersname" icon="icon-search" title="选择会员" textname="memberName" isclear="true" ></t:choose>
		      <span class="Validform_checktip"></span>
		    </div>
			<div class="form">
		      <label class="Validform_label">发送数量:</label>
		      <input class="inputxt" id="quantity" name="quantity" ignore="ignore" value="${memberCouponPage.quantity}" datatype="n" >
		      <span class="Validform_checktip"></span>
		    </div>
	    </fieldset>
  </t:formvalid>
 </body>