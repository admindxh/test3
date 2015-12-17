<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
		<meta content="yes" name="apple-mobile-web-app-capable">
		<meta content="black" name="apple-mobile-web-app-status-bar-style">
		<meta name="format-detection" content="telephone=no">
		<title>购物车结算</title>
		<script src="plug-in/jquery/jquery-1.8.0.min.js" type="text/javascript"></script>
		<script src="plug-in/shop/js/jquery.lazyload.js" type="text/javascript">
		</script><script src="plug-in/shop/js/notification.js" type="text/javascript"></script>
		<script src="plug-in/shop/js/swiper.min.js" type="text/javascript"></script>
		<script src="plug-in/shop/js/main.js" type="text/javascript">
		</script>
		<link type="text/css" rel="stylesheet" href="plug-in/shop/css/style_touch.css">
		<link type="text/css" rel="stylesheet" href="plug-in/shop/csss/css">
	
	</head>
	<body>
			<div id="top"></div>
	<div id="scnhtm5" class="m-body">
	<div class="m-detail-mainout">
	<div class="m-hd">
		<div>
			<a href="javascript:history.go(-1);" class="back">返回</a>
		</div>
		<div>
			<a href="javascript:void(0);" class="cat">商品分类</a>
		</div>
		<div class="tit">我的订单</div>
		<div>
			<a href="weixinShopDealController.do?gomyorder&shopSymbol=shop&accountid=${accountId}" class="uc">用户中心</a>
		</div>
		<div>
			<a href="weixinShopCartController.do?goCart&shopSymbol=shop&accountid=${accountId}" class="cart">购物车<i class="cart_com"></i></a>
		</div>
	</div>
			<div>
			<div class="m-ck-module" style="height: 100%;">
				<i class="d">订单编号:${weixinShopOrder.dealNumber }</i><br>
				<i class="d">支付金额:${weixinShopOrder.getSfmny() }</i>
				
				</div>
				
			</div>
			
<script Language="javascript">
	function onBridgeReady(){
	   WeixinJSBridge.invoke(
	          'getBrandWCPayRequest', {
	           "appId" : "${unifiedorder.appid}",     //公众号名称，由商户传入     
	           "nonceStr" : "${unifiedorder.nonce_str}", //随机串     
	           "package" : "prepay_id=${unifiedorder.prepay_id}",                
	           "timeStamp":"${unifiedorder.timeStamp}",         //时间戳，自1970年以来的秒数         
	           "signType" : "MD5",
	           "paySign" : "${unifiedorder.paySign}" //微信签名 
	       },
	       function(res){ 
	    	   
	           	if(res.err_msg == "get_brand_wcpay_request:ok" ) {
	        	   	    location.href="weixinShopDealController.do?weixinsuccess&id=${weixinShopOrder.id}&type=s";
		         }
	           	else
			      {
		        		location.href="weixinShopDealController.do?weixinsuccess&id=${weixinShopOrder.id}&type=f";
				  }  
	              // 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回    ok，但并不保证它绝对可靠。 
	       }
	   ); 
	}
	if (typeof WeixinJSBridge == "undefined"){
	   if( document.addEventListener ){
	       document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
	   }else if (document.attachEvent){
	       document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 
	       document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
	   }
	}else{
	   onBridgeReady();
	} 

</script>
    </body>
  </html>