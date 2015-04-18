<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no">
    <title>用户地址管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
    <meta name="format-detection" content="telephone=no">
    <script src="template/shop/default/js/jquery-1.9.1.min.js" type="text/javascript">
    </script><script src="template/shop/default/js/jquery.lazyload.js" type="text/javascript"></script>
    <script src="template/shop/default/js/notification.js" type="text/javascript"></script>
    <script src="template/shop/default/js/swiper.min.js" type="text/javascript"></script>
    <script src="template/shop/default/js/main.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/touch_index.css">
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/layout.min.css">
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/common.min.css">
    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
</head>
<script>
function defaultaddress(id){
	$.ajax({
        cache: true,
        type: "POST",
        url:"weixinShopAddressController.do?doDefault",
        data:[{name:"id",value:id}],
        async: false,
        error: function(request) {
            alert("Connection error");
        },
        dataType:"json",
        success: function(data) {
            alert(data.msg);
            location.href="weixinShopController.do?goPage&page=addresslist";
        }
    });
}
function del(id){
	$.ajax({
        cache: true,
        type: "POST",
        url:"weixinShopAddressController.do?doDel",
        data:[{name:"id",value:id}],
        async: false,
        error: function(request) {
            alert("Connection error");
        },
        dataType:"json",
        success: function(data) {
            alert(data.msg);
           location.href="weixinShopController.do?goPage&page=addresslist";
        }
    });
}

</script>
<body>
    <div id="scnhtm5" class="m-body">
            <div class="menu">
                <a href="weixinShopController.do?goPage&page=index&accountid=${weixinShopContent.accountid} "><i></i>所有分类</a>
                <a href="weixinShopCartController.do?goCart&shopSymbol=shop&accountid=${weixinShopContent.accountid}"><i> </i>购物车</a>
                <a href="weixinShopDealController.do?gomyorder&shopSymbol=shop&accountid=${weixinShopContent.accountid}"><i></i>我的订单</a>
            </div>
        <!--主体-->
	<#if weixinShopContent.goodsparams??>
		<a href='weixinShopDealController.do?goAddressPage&shopSymbol=shop&goodsparams=${weixinShopContent.goodsparams}' data-addaddress="true" class="textlink fl">新增收货地址+</a>
	<#else>
		<a href="weixinShopDealController.do?goAddressPage&shopSymbol=shop" data-addaddress="true" class="textlink fl">新增收货地址+</a>
	</#if>
	
<div class="clear"></div>

 <#list weixinShopContent.addresslist as adr>
<a href='weixinShopDealController.do?weixinShopDeal&selectaddrid=${adr.id}&shopSymbol=shop&params=${weixinShopContent.goodsparams}'>
</a>
  <#if adr.defaultflag ==1>
<div class="userdiv selected_addr"><a href='weixinShopDealController.do?weixinShopDeal&selectaddrid=${adr.id}&shopSymbol=shop&params=${weixinShopContent.goodsparams}'>
<#else>
 <div class="userdiv"><a href='weixinShopDealController.do?weixinShopDeal&selectaddrid=${adr.id}&shopSymbol=shop&params=${weixinShopContent.goodsparams}'>
</#if>
  <div class="addr_box">
    <p>${adr.realname?default("")}<span class="addr_tel">${adr.tel?default("")}</span></p>
    <p class="clear"></p>
    <p>${adr.province}${adr.city}${adr.area}${adr.address?default("")}  </p>
       <#if adr.defaultflag ==1>
	<span class="moren">默认</span>
	</#if> 
        <span class="sele_addr"></span>
  </div>
  </a><div class="addr_ope"><a href='weixinShopDealController.do?weixinShopDeal&selectaddrid=${adr.id}&shopSymbol=shop&params=${weixinShopContent.goodsparams}'></a>
	 <a href="javascript:del('${adr.id}');" data-addressid="${adr.id}" data-address="del" mars_sead="checkout_del_address_radio"><span class="delete"></span>删除</a>
     <#if adr.defaultflag !=1>
	 <a href="javascript:defaultaddress('${adr.id}')" mars_sead="checkout_default_address_radio"><span class="select"></span>默认</a> 
    </#if>
  </div>
</div>
</#list>
 <div class="addr_box">
	<a class="btn_red" href='weixinShopDealController.do?goConformOrder'>继续购物</a>
</div>
<div class="space20"></div>

  <div class="footer clearfix">
    <div class="footnav clearfix">

    </div>
    <p class="copright">Copyright © 2014-2015 捷微团队 </p>
  </div>
      <a href="http://m.vip.com/cart-address.html?mk=1&cart_address_id=36535410#top" class="backtop" mars_sead="home_foot_top_btn"></a>
    <div class="space10"></div>
    </div>
</body>
</html>