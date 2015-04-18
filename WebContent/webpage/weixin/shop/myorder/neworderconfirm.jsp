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
			
			function toAddr(){
				location.href="weixinShopController.do?goPage&page=addresslist";
			}
			
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
		<div class="tit">购物车结算</div>
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
	<form method="post" action="weixinShopDealController.do?goPayPage" id="fromId">
	<div>
		<div class="m-ck-module">
			<h1>收货信息</h1>
			<ul>
				<li class="addr-info">
					 <c:forEach var="address" items="${addresslist}" varStatus="status" >
	            <li>
	            <c:if test="${!empty selectaddrid }">
	            	<c:choose>
	            	<c:when test="${address.id==selectaddrid }">
	            	    <label><input type="radio" name="addressid" checked="checked" value="${address.id }" />${address.realname }  ${address.province} ${address.city } ${address.area } ${address.address } ${address.tel } </label>
	            	</c:when>
	            	<c:otherwise>
	            	 <label><input type="radio" name="addressid" value="${address.id }" />${address.realname }  ${address.province} ${address.city } ${address.area } ${address.address } ${address.tel } </label>
	            	</c:otherwise>
	            	</c:choose>
	            </c:if>
	            <c:if test="${empty selectaddrid }">
	            	<c:choose>
	            	<c:when test="${address.defaultflag==1 }" >
	            	 <label><input type="radio" name="addressid" checked="checked" value="${address.id }" />${address.realname }  ${address.province} ${address.city } ${address.area } ${address.address } ${address.tel } </label>
	            	</c:when>
	            	<c:otherwise>
	            	 <label><input type="radio" name="addressid" value="${address.id }" />${address.realname }  ${address.province} ${address.city } ${address.area } ${address.address } ${address.tel } </label>
	            	</c:otherwise>
	            	</c:choose>
	            </c:if>
	                       
	            </li>
	          </c:forEach>   
	            <li class="error" id="noToneTip" style="display:block;">
	                <a href="javascript:toAddr();" style="color: inherit;">点击管理收货地址，方便更快收货</a>
	            </li>
			</ul>
		</div>
		<div class="m-ck-module">
			<h1>付款方式</h1>
			<ul id="payment_mode" class="rd">
				<li>
					<label><input name="paytype" value="1" type="radio" checked="">支付宝支付</label>
				</li>
			</ul>
		</div>
		
		<div class="m-ck-module">
			<h1>商品清单</h1>
			<ul>
				<ul class="m-cart-list">
					<c:forEach items="${ShopCarList}" var="shopCart">
						<li>  
							<span class="pic"><img src="${shopCart.shopGoodsEntity.titleImg}" width="75" height="75"></span>
							<span class="con">
								<i class="t">${shopCart.shopGoodsEntity.title}</i>
								<!-- <i class="d">尺寸：42，颜色：红色</i> -->
								<p>
									<label>数量：</label>${shopCart.count}&nbsp;&nbsp;&nbsp;&nbsp;
									<label>销售价：</label><span class="price">￥${shopCart.total}</span>
								</p>
							    <i class="d">送货方式：${shopCart.shopGoodsEntity.expressName}&nbsp;&nbsp;运费：${shopCart.shopGoodsEntity.expressPrice*shopCart.count}</i>
							</span>
						</li>
					</c:forEach>
				</ul>
			</ul>
			<h1>买家留言</h1>
			<ul>
				<li>
					<textarea rows="5" cols="40" name="leaveword" id="leaveword"></textarea>
				</li>
			</ul>
			</div>
				<div class="m-cart-toal m-checkout-toal">
					<p id="price_total" class="check">
					商品总数：<b>${totalNum}</b>　件<br>
					商品原总价：<b>${totalGoodsMoney}</b>　元<br>
					运费：<b>${totalExpressPrice}</b>　元<br><!-- 优惠金额：0元<br> -->
					您共需支付：<b id="totalmoney">${totalMoney}</b>　元
					</p>
					<div id="show_msg" class="tip_blue"></div>
					<p class="act">
						<a id="sub_order" href="javascript:;" class="checkout">确认，提交订单</a>
					</p>
				</div>
			</div>
			<input name="totalNum" id="totalNum" type="hidden" value="${totalNum}"/>
			<input name="totalGoodsMoney" id="totalGoodsMoney" type="hidden" value="${totalGoodsMoney}"/>
			<input name="totalExpressPrice" id="totalExpressPrice" type="hidden" value="${totalExpressPrice}"/>
			<input name="totalMoney" id="totalMoney" type="hidden" value="${totalMoney}"/>
	</form>
	<script>
		var scale = "";
		var totalscore = "2";
		$(document).ready(function(){
			var total = parseInt($("#totalmoney").html());
			$("#sub_order").click(function(){
				var addressId = $("input[name='addressid']").val();
				if(typeof(addressId)=='undefined'||addressId.length==0){
					alert("请填写收货人地址信息！");
					return;
				}
				$("#fromId").submit();
			});
		});
	</script>
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