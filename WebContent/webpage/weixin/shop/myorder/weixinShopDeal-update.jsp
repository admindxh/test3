<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>订单修改</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinShopDealController.do?doUpdate">
			<input id="id" name="id" type="hidden" value="${weixinShopDealPage.id}">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							订单号:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="dealNumber" name="dealNumber" 
							   value="${weixinShopDealPage.dealNumber}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							订单状态:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="dealStatement" name="dealStatement" 
							   value="${weixinShopDealPage.dealStatement}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							配送信息:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="addressDetail" name="addressDetail" 
							   value="${weixinShopDealPage.addressDetail}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							收件人姓名:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="receivename" name="receivename" 
							   value="${weixinShopDealPage.receivename}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							邮编:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="receivepostno" name="receivepostno" 
							   value="${weixinShopDealPage.receivepostno}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							手机号:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="mobile" name="mobile" ignore="ignore"
							   value="${weixinShopMemberPage.mobile}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							收货地址:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="receiveaddress" name="receiveaddress" ignore="ignore"
							   value="${weixinShopMemberPage.receiveaddress}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>