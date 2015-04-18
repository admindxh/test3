<!DOCTYPE html>
<html>
<head>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no;" name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name='apple-touch-fullscreen' content='yes'>
<meta name="full-screen" content="yes">
<meta name="format-detection" content="telephone=no"/>
<meta name="format-detection" content="address=no"/>
 <script src="template/vip/default/js/jquery-1.9.1.min.js" type="text/javascript">
 </script><script src="template/vip/default/js/jquery.lazyload.js" type="text/javascript"></script>
<link rel="apple-touch-icon-precomposed" sizes="57x57" href="images/startup/apple-touch-icon-57x57-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/startup/apple-touch-icon-72x72-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/startup/apple-touch-icon-114x114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/startup/apple-touch-icon-144x144-precomposed.png" />
<link rel="apple-touch-startup-image" href="images/startup/startup5.jpg" media="(device-height:568px)">
<link rel="apple-touch-startup-image" size="640x920" href="images/startup/startup.jpg" media="(device-height:480px)">
<link href="template/vip/default/css/style.css" rel="stylesheet" type="text/css">
<link href="template/vip/default/css/style_touch.css" rel="stylesheet" type="text/css">
<link href="plug-in/register/css/dialog.css" rel="stylesheet" type="text/css"/>
<script src="plug-in/register/js/dialog.js"></script>
</head>
<div class="wrap clearfix" >
	<input type="hidden" id="couponstatus" value="0" />
	<div class="SpecialTop" style="background-image:url(template/vip/default/css/img/vip-bj.png);background-repeat:repeat-x;">
		<a onclick="history.go(-1)" style="left:8px;font-size:16px;color:#FFF;position: absolute;cursor:pointer;font-family: microsoft yahei;">返回</a>
	</div>
	<div class="login">
		<div class="logindiv" style="margin:auto;">
	           <#if Vip_Index=='zero'>
	           	<img class="logindiv" src="" />
	           <div class="divvipinfo">
	           		    商家还未发布会员卡
	            </div>
	           </#if>
	           <#if Vip_Index=='member'>
	           	<img class="logindiv" src="${weixinVipInfo.vipImg}" />
	           <div class="divvipinfo">
	           		    使用时向服务员初始此卡
	            </div>
	           </#if>
	           <#if Vip_Index=='nomember'>
	           	<img class="logindiv gray" src="" />
	           <div class="divvipinfo">
	           		  <a id="addVipMember" href="javascript:void(0);" style="cursor: pointer;">立即加入会员</a>
	            </div>
	           </#if>
	           </div>
	    </div>
	    <div style="width:78%;height:40px;margin:auto;margin-top:10px;">
	    </div>
	    <div style="width:78%;height:120px;margin:auto;margin-top:10px;">
				<b class="b1"></b><b class="b2 d1"></b><b class="b3 d1"></b><b class="b4 d1"></b>
				<div class="b d1 k">
					<table style="width:100%;height:100px;border:0px;" cellpadding="0" cellspacing="0">
						<tr style="height:52%;cursor: pointer;">
							<td class="vip_td" style="width:30%;top:auto;">
							<table>
								<tr>
									<td><p class="vip-balance-bj"><p></td>
									<td>预存款:</td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:50%;font-size:14px;">
							
							<#if weixinVipMember??>
							${weixinVipMember.memberBalance}
							
							<#else>
								0
							</#if>
							元
							</td>
							<td class="vip_td" style="width:20%;top:auto;">
								<p class="vip-more-bj"><p>
							</td>
						</tr>
						<tr style="height:48%;cursor: pointer;">
							<td style="width:30%;">
								<table>
								<tr>
									<td><p class="vip-integral-bj"><p></td>
									<td>积分：</td>
								</tr>
							</table>
							</td>
							<td style="width:65%;font-size:14px;">
							<#if weixinVipMember??>
								${weixinVipMember.memberIntegral}
							<#else>
								0
							</#if>
								分
							</td>
							<td style="width:5%;top:auto;"><p class="vip-more-bj"><p></td>
						</tr>
					</table>
				</div>
				<b class="b4b d1"></b><b class="b3b d1"></b><b class="b2b d1"></b><b class="b1b"></b>
				</div>
				<div style="width:78%;height:120px;margin:auto;">
				<b class="b1"></b><b class="b2 d1"></b><b class="b3 d1"></b><b class="b4 d1"></b>
				<div id="div_k" class="b d1 k2">
					<table id="table_k" style="width:100%;height:100%;border:0px;" cellpadding="0" cellspacing="0">
						<tr id="linkuser" style="height:auto;cursor: pointer;">
							<td class="vip_td" style="width:30%;top:auto;">
							<table>
								<tr>
									<td><p class="vip-user-bj"><p></td>
									<td></td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:50%;font-size:14px;">
								个人信息维护
							</td>
							<td class="vip_td" style="width:20%;top:auto;">
								<p class="vip-more-bj"><p>
							</td>
						</tr>
						<tr id="linkCoupon" style="height:auto;cursor: pointer;">
							<td class="vip_td" style="width:30%;">
								<table>
								<tr>
									<td><p class="vip-integral-bj"><p></td>
									<td></td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:65%;font-size:14px;">
								我的优惠劵
							</td>
							<td class="vip_td" style="width:5%;top:auto;"><p class="vip-more-bj"><p></td>
						</tr>
						<#if couponlist??>
							<#list couponlist as coupons>
                			<tr id="id_${coupons.id}" class="tr_coupon" style="height:auto;cursor: pointer;display:none;">
							<td class="vip_td" style="width:30%;">
								<table>
								<tr>
									<td></td>
									<td></td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:65%;font-size:14px;">
								${coupons.coupon.name}
							</td>
							<td class="vip_td" style="width:5%;top:auto;"></td>
						</tr>
              			</#list>
              			<#else>
							<tr id="id_none" style="height:auto;cursor: pointer;display:none;" >
							<td class="vip_td" style="width:30%;">
								<table>
								<tr>
									<td></td>
									<td></td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:65%;font-size:14px;">
								当前您没有任何优惠劵
							</td>
							<td class="vip_td" style="width:5%;top:auto;"></td>
						</tr>
						</#if>
						<tr id="linkshop" style="height:auto;cursor: pointer;">
							<td class="vip_td" style="width:30%;">
								<table>
								<tr>
									<td><p class="vip-integral-bj"><p></td>
									<td></td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:65%;font-size:14px;">
								去商城
							</td>
							<td class="vip_td" style="width:5%;top:auto;"><p class="vip-more-bj"><p></td>
						</tr>
						<tr id="linkcms" style="height:auto;cursor: pointer;">
							<td class="vip_td" style="width:30%;">
								<table>
								<tr>
									<td><p class="vip-integral-bj"><p></td>
									<td></td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:65%;font-size:14px;">
								去官网
							</td>
							<td class="vip_td" style="width:5%;top:auto;"><p class="vip-more-bj"><p></td>
						</tr>
						<tr id="linkorder" style="height:auto;cursor: pointer;">
							<td style="width:30%;">
								<table>
								<tr>
									<td><p class="vip-integral-bj"><p></td>
									<td></td>
								</tr>
							</table>
							</td>
							<td style="width:65%;font-size:14px;">
								我的交易记录
							</td>
							<td style="width:5%;top:auto;"><p class="vip-more-bj"><p></td>
						</tr>
					</table>
				</div>
				<b class="b4b d1"></b><b class="b3b d1"></b><b class="b2b d1"></b><b class="b1b"></b>
				</div>
    		</div>
	</div>
	</div>
</div>
</body>
<script>
$("#linkuser").click(function(){
window.location.href="weixinVipController.do?goPage&page=member&accountid=${WEIXIN_QIANTAI_ACCOUNTID}";
});
$("#linkcms").click(function(){
window.location.href="cmsController.do?goPage&page=index&accountid=${WEIXIN_QIANTAI_ACCOUNTID}";
});
$("#linkshop").click(function(){
window.location.href="weixinShopController.do?goPage&page=index&accountid=${WEIXIN_QIANTAI_ACCOUNTID}";
});
$("#linkorder").click(function(){
window.location.href="weixinShopDealController.do?gomyorder&shopSymbol=shop&accountid=${WEIXIN_QIANTAI_ACCOUNTID}";
});
$("#linkCoupon").click(function(){
var status = $("#couponstatus").val();
if(status==0){
$("#couponstatus").val(1);
var size = '${couponlength}'; //获取优惠劵条数
var s = 0;
if(size==0){
	s = 300;
	$("#div_k").css("height",s+"px");
	$("#id_none").show();
	
}else{
  s= size*50+250;
  $("#div_k").css("height",s+"px");
  $(".tr_coupon").show();
}
}else{
$("#couponstatus").val(0);
var size = '${couponlength}'; //获取优惠劵条数
if(size==0){
	$("#div_k").css("height","250px");
	$("#id_none").hide();
	
}else{
  $("#div_k").css("height","250px");
  $(".tr_coupon").hide();
}
}

});
//加入会员卡
$("#addVipMember").click(function(){
	$.ajax({
	    	url:"weixinVipController.do?addvipInfo",
	        method:"POST",
	        dataType:"JSON",
	        data:{'accountid':'${WEIXIN_QIANTAI_ACCOUNTID}'},
	        success:function(datas){
	        	if(datas.msg=="add_ok"){
	        	window.location.href="weixinVipController.do?goPage&page=index&accountid=${WEIXIN_QIANTAI_ACCOUNTID}";
	        	}
	        }
	    });
	
});
</script>
</html>