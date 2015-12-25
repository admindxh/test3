<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<!-- saved from url=(0043)http://www.weixinguanjia.cn/wsc/ddlist.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title> 订单记录 </title>

   <script type="text/javascript">
       var yyuc_jspath = "/@system/";
   </script>
    <script type="text/javascript" src="plug-in/jquery/jquery-1.8.3.js">

    </script><script type="text/javascript" src="plug-in/shop/js/yyucadapter.js"></script>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <link rel="stylesheet" href="http://www.weixinguanjia.cn/wsc/c4.css">
    <link type="text/css" rel="stylesheet" href="plug-in/shop/css/style_touch.css">
    <script type="text/javascript">
        localStorage.lastbuy = null; 
        localStorage.lastbuynum = null;
    </script>
      <script>
      //实现商品分类列表
        $(document).ready(function(){
            $(".m-hd .cat").parent('div').click( function() {
                var docH=$(document).height();
                $('.sub-menu-list').toggle();
                $(".m-right-pop-bg2").addClass("on").css('min-height',docH);
            });
            $(".m-right-pop-bg2").click( function() {
                $('.sub-menu-list').hide();
                $(".m-right-pop-bg2").removeClass("on").removeAttr("style");
            });
        });
    </script>
</head>
<body>
<div id="content">
    <div id="c_wg.jdpay_show" style="">
        <div class="m-hd">
                  <div>
				     <a href="javascript:history.go(-1);" class="back">返回</a>
				 </div>
				 <div>
				     <a href="javascript:void(0);" class="cat">商品分类</a>
				 </div>
				 <div class="tit">订单列表</div>
				 <div>
				     <a href="weixinVipController.do?goPage&page=index&openid=1234&accountid=402881e8461795c201461795c2e90000"  class="uc">用户中心</a>
				 </div>
				 <div>
				     <a href="weixinShopCartController.do?goCart&shopSymbol=shop" class="cart">购物车<i class="cart_com"></i></a>
				 </div>
        </div>
        
        <div class="wx_wrap">
			 支付成功
            
    </div>
</div>



</body></html>