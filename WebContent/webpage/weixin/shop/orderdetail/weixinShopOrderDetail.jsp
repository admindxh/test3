<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>订单详情</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinShopOrderDetailController.do?save">
			<input id="id" name="id" type="hidden" value="${weixinShopOrderDetailPage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							单订Id:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="orderId" name="orderId" ignore="ignore"
							   value="${weixinShopOrderDetailPage.orderId}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							goodsId:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="goodsId" name="goodsId" ignore="ignore"
							   value="${weixinShopOrderDetailPage.goodsId}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							宝贝属性:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="goodsProperty" name="goodsProperty" ignore="ignore"
							   value="${weixinShopOrderDetailPage.goodsProperty}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							购买单价:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="buyPrice" name="buyPrice" ignore="ignore"
							   value="${weixinShopOrderDetailPage.buyPrice}" datatype="d">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							购买数量:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="count" name="count" ignore="ignore"
							   value="${weixinShopOrderDetailPage.count}" datatype="n">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							优惠/降价:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="reducePrice" name="reducePrice" ignore="ignore"
							   value="${weixinShopOrderDetailPage.reducePrice}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							总计金额:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="total" name="total" ignore="ignore"
							   value="${weixinShopOrderDetailPage.total}" datatype="d">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							买家Id:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="buyerId" name="buyerId" ignore="ignore"
							   value="${weixinShopOrderDetailPage.buyerId}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							卖家Id:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="sellerId" name="sellerId" ignore="ignore"
							   value="${weixinShopOrderDetailPage.sellerId}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							商家微信号Id:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="accountid" name="accountid" ignore="ignore"
							   value="${weixinShopOrderDetailPage.accountid}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>