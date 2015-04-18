<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<script>
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
			<a href="weixinShopCartController.do?goCart&shopSymbol=shop&accountid=${accountId}" class="cart">购物车<i class="cart_com">1</i></a>
		</div>
	</div>
	<ul class="sub-menu-list">
		   <li>
              <a href="weixinShopController.do?goPage&page=index&accountid=${accountId}">首页</a>
          </li>
          <c:forEach items="${categoryList}" var="category">
          	   <li>
	              <a href="weixinShopController.do?goPage&page=goodslist&categoryid=${category.id}&accountid=${accountId}">${category.name}</a>
	          </li>
          </c:forEach>
	</ul>

	 <div>
		 <c:forEach items="${orderList}" var="order">
	             <c:if test="${!empty order.orderDetailList}">
             		<div class="m-ck-module">
			         	<i class="d">订单号：${order.dealNumber}</i><br/> 
			         	<i class="d">生成时间：${order.createDate}</i> <br/>
			         	<i class="d">订单状态：${order.dealStatement}</i><br/>
			         	<i class="d">数量：${order.buycount}&nbsp;件</i><br/>
			         	<i class="d">总金额：${order.yfmny}&nbsp;元</i>  <br/>
			         	<i class="d">收件人：${order.receivename}</i> <br/>
						<i class="d">联系人号码：${order.receivemobile}</i> <br/>
						<i class="d">收件人地址：${order.receiveaddress}</i><br/><br/>
						
						<ul>
						   <c:forEach items="${order.orderDetailList}" var="orderDetail">
						    	<ul class="m-cart-list">
								    <li>
								    	<span class="pic"><img src="${orderDetail.weixinShopGoods.titleImg}" width="75" height="75"></span>
										<span class="con">
											<i class="t">${orderDetail.weixinShopGoods.title}</i>
											<!-- <i class="d">尺寸：42，颜色：红色</i> -->
											<p>
												<label>数量：</label>${orderDetail.count}&nbsp;&nbsp;&nbsp;&nbsp;
												<label>销售价：</label><span class="price">￥${orderDetail.total}</span>
											</p>
										    <i class="d">送货方式：${orderDetail.weixinShopGoods.expressName}&nbsp;&nbsp;运费：${orderDetail.weixinShopGoods.expressPrice*orderDetail.count}</i>
										</span>
									</li>
								</ul>
						    </c:forEach>
						</ul>
						<c:if test="${order.dealStatement=='未支付'}">
							<div class="m-cart-toal m-checkout-toal">
								<p class="act">
									<a id="sub_order" href="weixinShopDealController.do?goPayPage&id=${orderDetail.id}&paytype=${orderDetail.paytype}" class="checkout">立即支付</a>
								</p>
							</div>
						</c:if>
						
		         	</div>
	             </c:if>
	         </c:forEach>
	       
		</div>
		

	
	<script type="text/javascript">
		window.shareData = {  
            "moduleName":"Store",
            "moduleID":"0",
            "imgUrl": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=orderCart&token=yicms", 
            "timeLineLink": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=orderCart&token=yicms",
            "sendFriendLink": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=orderCart&token=yicms",
            "weiboLink": "http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=orderCart&token=yicms",
            "tTitle": "购物车结算",
            "tContent": "购物车结算"
        };
	</script>
	<script>
		window.shareData.sendFriendLink=window.shareData.sendFriendLink.replace('http://demo.pigcms.cn','http://demo.pigcms.cn');
		document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
        WeixinJSBridge.on('menu:share:appmessage', function (argv) {
         shareHandle('friend');
            WeixinJSBridge.invoke('sendAppMessage', { 
                "img_url": window.shareData.imgUrl,
                "img_width": "640",
                "img_height": "640",
                "link": window.shareData.sendFriendLink,
                "desc": window.shareData.tContent,
                "title": window.shareData.tTitle
            }, function (res) {
                _report('send_msg', res.err_msg);
            })
        });

        WeixinJSBridge.on('menu:share:timeline', function (argv) {
         shareHandle('frineds');
            WeixinJSBridge.invoke('shareTimeline', {
                "img_url": window.shareData.imgUrl,
                "img_width": "640",
                "img_height": "640",
                "link": window.shareData.sendFriendLink,
                "desc": window.shareData.tContent,
                "title": window.shareData.tTitle
            }, function (res) {
                _report('timeline', res.err_msg);
            });
        });

        WeixinJSBridge.on('menu:share:weibo', function (argv) {
         shareHandle('weibo');
            WeixinJSBridge.invoke('shareWeibo', {
                "content": window.shareData.tContent,
                "url": window.shareData.sendFriendLink,
            }, function (res) {
                _report('weibo', res.err_msg);
            });
        });
        }, false)
        
        function shareHandle(to) {
		var submitData = {
			module: window.shareData.moduleName,
			moduleid: window.shareData.moduleID,
			token:'yicms',
			wecha_id:'oLA6VjvtaKhnWKq1G0S8gxil7nbU',
			url: window.shareData.sendFriendLink,
			to:to
		};
		$.post('/index.php?g=Wap&m=Share&a=shareData&token=yicms&wecha_id=oLA6VjvtaKhnWKq1G0S8gxil7nbU',submitData,function (data) {},'json')
	}
        </script>
    </div>
    </div>
    </body>
  </html>