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
				     <a href="weixinVipController.do?goPage&page=index&shopSymbol=shop" class="uc">用户中心</a>
				 </div>
				 <div>
				     <a href="weixinShopCartController.do?goCart&shopSymbol=shop" class="cart">购物车<i class="cart_com">1</i></a>
				 </div>
        </div>
         <ul class="sub-menu-list">
            	<li>
                    <a href="weixinShopController.do?goPage&page=index&accountid=${accountid}">首页</a>
                </li>
            <c:forEach items="${categoryList}" var="category">
                <li>
                    <a href="weixinShopController.do?goPage&page=goodslist&categoryid=${category.id}&accountid=${accountid}">${category.name}</a>
                </li>
              </c:forEach>
            </ul>
        <div class="wx_wrap">
			<c:forEach items="${orderList}" var="order">
				<div class="yddddmdiv${order.id}">
	                <div id="sendTo" class="send_to" dzid="2">
	                    <div class="address_defalut2" style="padding: 20px;position: relative;">
	                        <ul class="selected2" id="editAddBtn2" onclick="$('.account_tips${order.id}').toggle();">
	                            <li>
	                                <span id="rginfoId">
	                                <span class="shdz">下单时间:${order.createDate}&nbsp;&nbsp;&nbsp;&nbsp;<br>
	         	状态: ${order.dealStatement}</span>
	                                </span>
	                            </li>
	                            <li>
	                                <span id="rginfoId">
	                                <span class="shdz">总价:￥${order.yfmny}</span>
	                                </span>
	                            </li>
	                            <li>
	                                <span id="rginfoId">
	                                <span class="shdz">买家留言:${order.buyerLeaveWords}</span>
	                                </span>
	                            </li>
	                            <li>
	                                <span id="rginfoId">
	                                <span class="shdz">买家电话:${order.tel}</span>
	                                </span>
	                            </li>
	                            <li>
	                                <span id="rginfoId">
	                                <span class="shdz">送货地址:${order.addressDetail}</span>
	                                </span>
	                            </li>
	                          
	                        </ul>
	                        <div style="cursor:pointer;display:block;position: absolute;right:10px;top:10px;z-index: 100;font-size: 20px;background:none;" onclick="deldd('${order.id}')">
	                            X
	                        </div>
	                    </div>
	                </div>
	                <div id="bindJd" class="account_tips account_tips${order.id}" style="-webkit-transform-origin: 0px 0px; opacity: 1; -webkit-transform: scale(1, 1); display: none;">
	                    <span class="shshr">${order.shopGoods.title}</span>
	                    <br>
	                    <span class="shdh">￥${order.shopGoods.realPrice} x 1</span><br/>
	                    <span class="shdh"><a href="weixinShopController.do?goPage&page=goodsdetail&goodsid=${order.shopGoods.id}">查看商品详情</a></span><br/>
	                    <c:if test="${order.dealStatement=='未支付'}">
	                    	<span class="shdh"><a href="#" style="color:red" onclick="toBuy('${order.id}')">继续支付</a></span>
	                    </c:if>
	                    <a href="javascript:void(0);" id="bindJdBtn" class="btn_bind" style="border: none;background: none;">
	                        <img alt="" src="${order.shopGoods.titleImg}" style="max-height: 60px;">
	                    </a>
	                    <p class="has">
	                        <span class="shdz"></span>
	                    </p>
	                </div>
	                <div style="height: 12px;background: gray;"></div>
	            </div>
			</c:forEach>
            
    </div>
</div>
<script type="text/javascript">
    function deldd(id){
        if(confirm('确定删除该订单吗？')){
            ajax('weixinShopDealController.do?doDel',{ id:id},function(m){
            	var data = jQuery.parseJSON(m);
                if(data.success==true){
                    $('.yddddmdiv'+id).remove();
                }
            });
        }
    }
    function okdd(id,o){
        if($('.account_tips'+id).is(':hidden')){
            $('.account_tips'+id).show();
            tusi('请评价产品');
        }else{
            var cs = [];
            $('.account_tips'+id).find('.pjdinpk').each(function(){
                if($.trim($(this).val())!=''){
                    cs[cs.length] = [$(this).attr('pid'),$.trim($(this).val())];
                }
            });
            ajax('ddlistmg-ok.html',{ id:id,data:$.toJSON(cs)},function(m){
                if(m=='ok'){
                    tusi('确认成功');
                    $(o).parent().remove();
                }
            });
        }
    }
    
    function toBuy(id){
    	//进入继续支付页面
		window.location.href="weixinShopDealController.do?continuePay&id="+id;
    }
</script>


<script>
    document.addEventListener('WeixinJSBridgeReady', function onBridgeReady()  {
        WeixinJSBridge.call('hideOptionMenu');
    });
    document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
        WeixinJSBridge.call('hideToolbar');
    });
</script>


</body></html>