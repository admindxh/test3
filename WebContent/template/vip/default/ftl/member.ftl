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
<link type="text/css" rel="stylesheet" href="plug-in/shop/css/c4.css">
<script src="plug-in/shop/js/yyucadapter.js" type="text/javascript"></script>
</head>
<div class="wrap clearfix" >
	<div class="SpecialTop" style="background-image:url(template/vip/default/css/img/vip-bj.png);background-repeat:repeat-x;">
		<a onclick="goback()" style="left:8px;font-size:16px;color:#FFF;position: absolute;cursor:pointer;font-family: microsoft yahei;">返回</a>
		<a onclick="registeruser()" style="left:108px;font-size:16px;color:#FFF;position: absolute;cursor:pointer;font-family: microsoft yahei;">注册</a>
	</div>
	<div class="login">
	    <div style="width:78%;height:40px;margin:auto;margin-top:10px;text-align:center;">
	    	个人信息修改
	    	<input type="hidden" id="userid" name="userid" value="${member.id}" />
	    </div>
				<div style="width:78%;height:120px;margin:auto;">
				<b class="b1"></b><b class="b2 d1"></b><b class="b3 d1"></b><b class="b4 d1"></b>
				<div class="b d1 k2">
					<table style="width:100%;height:200px;border:0px;" cellpadding="0" cellspacing="0">
						<tr id="linkuser" style="height:25%;cursor: pointer;">
							<td class="vip_td" style="width:15%;top:auto;">
							<table>
								<tr>
									<td></td>
									<td>姓名：</td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:85%;font-size:14px;">
								<input type="text" style="height:30px;border:1px;border-style:solid;border-width:1px;" id="realname" name="realname" value="<#if member.realName??>${member.realName}</#if>" />
							</td>
							
						</tr>
						<tr id="linkshop" style="height:25%;cursor: pointer;">
							<td class="vip_td" style="width:15%;">
								<table>
								<tr>
									<td></td>
									<td>电子邮件：</td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:85%;font-size:14px;">
								<input type="text" style="height:30px;border:1px;border-style:solid;border-width:1px;" id="email" name="email" value="<#if member.email??>${member.email}</#if>" />
							</td>
							</tr>
						<tr id="linkcms" style="height:25%;cursor: pointer;">
							<td class="vip_td" style="width:15%;">
								<table>
								<tr>
									<td></td>
									<td>手机：</td>
								</tr>
							</table>
							</td>
							<td class="vip_td" style="width:85%;font-size:14px;">
								<input type="text" style="height:30px;border:1px;border-style:solid;border-width:1px;" id="mobilePhone" name="mobilePhone" value="<#if member.mobilePhone??>${member.mobilePhone}</#if>" />
							</td>
							</tr>
						<tr id="linkorder" style="height:25%;cursor: pointer;">
							<td style="width:50%;text-align:right;">
							<span><input type="button" style="width:70px;height:30px;border:1px;border-style:solid;border-width:1px;background-color:#F55F4E;color:#FFF;font-weight:bold;" id="addVipMember"  value="确定" /></span>
							</td>
							<td style="width:50%;font-size:14px;text-align:center;">
								<span><input type="button" style="width:70px;height:30px;border:1px;border-style:solid;border-width:1px;background-color:#F55F4E;color:#FFF;font-weight:bold;" onclick="goback()"  value="返回" /></span>
							</td>
						</tr>
					</table>
				</div>
				<b class="b4b d1"></b><b class="b3b d1"></b><b class="b2b d1"></b><b class="b1b"></b>
				</div>
    		</div>
	</div>
	</div>
</div>
<div id="codFloat" style="display:none;">
    <div class="wx_mask">
    </div>
    <div class="wx_confirm">
        <div class="wx_confirm_inner">
            <div class="wx_confirm_hd">
                <div id="div_title" class="wx_confirm_tit"></div>
                <div class="wx_confirm_close" id="codGoPayCancel2" onclick="$(&#39;#codFloat&#39;).hide();" title="关闭"></div>
            </div>
            <form id="zzzfform" method="post" target="_self">
                <div class="wx_confirm_bd">
                    <div class="wx_confirm_cont">
                        <div class="confirm_order">
                            <p>
                            	<span class="price" id="span_li"></span><span id="span_val"></span>
                            </p>
                        </div>
                    </div>
                    <div class="wx_confirm_btns">
                        <button type="button" id="codGoPay" onclick="$(&#39;#codFloat&#39;).hide();return false;">确定</button>
                        <button type="cancel" id="codGoPayCancel" onclick="$(&#39;#codFloat&#39;).hide();return false;"> 取消</button> 
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script>
function registeruser(){
window.location.href="weixinShopMemberController.do?goRegisterUser&accountid=${WEIXIN_QIANTAI_ACCOUNTID}&openid=${member.openid}";
}
function goback(){
window.location.href="weixinVipController.do?goPage&page=index&accountid=${WEIXIN_QIANTAI_ACCOUNTID}";
}
function tolizf(){
	        window.paytyp = '0';
	        $('#codFloat').show();
	    }
$("#addVipMember").click(function(){
	var name = $("#realname").val();
	var email = $("#email").val();
	var phone = $("#mobilePhone").val();
	var userid = $("#userid").val();
	var check = /^0?(13[0-9]|15[012356789]|18[0236789]|14[57])[0-9]{8}$/;
	var namestr="";
	if(name==""){
	namestr="请填写姓名";
	}
	if(phone!=""){
		if(!(check.test(phone))){
		namestr="输入手机号不合法";
	}
	}
	if(namestr!=""){
		$("#div_title").html("友情提示!");
		$("#span_li").html(namestr);
    	$("#span_val").html("");
    	$("#codGoPay").show();
    	$("#codGoPayCancel").show();
    	tolizf();
	}else{
		$.ajax({
	    	url:"weixinVipController.do?updatMember",
	        method:"POST",
	        dataType:"JSON",
	        data:{'username':name,'email':email,'phone':phone,'userid':userid},
	        success:function(datas){
	        	if(datas.success){
	        		$("#div_title").html("友情提示!");
        			        	$("#span_li").html("恭喜您，注册成功！");
        			        	$("#span_val").html("");
        			        	$("#codGoPay").show();
        			        	$("#codGoPayCancel").show();
        			        	tolizf();
				}
	        }
	    });
	}
});
</script>
</html>