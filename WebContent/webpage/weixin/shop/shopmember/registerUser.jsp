<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no;" name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name='apple-touch-fullscreen' content='yes'>
<meta name="full-screen" content="yes">
<meta name="format-detection" content="telephone=no"/>
<meta name="format-detection" content="address=no"/>
<link rel="apple-touch-icon-precomposed" sizes="57x57" href="images/startup/apple-touch-icon-57x57-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/startup/apple-touch-icon-72x72-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/startup/apple-touch-icon-114x114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/startup/apple-touch-icon-144x144-precomposed.png" />
<link rel="apple-touch-startup-image" href="images/startup/startup5.jpg" media="(device-height:568px)">
<link rel="apple-touch-startup-image" size="640x920" href="images/startup/startup.jpg" media="(device-height:480px)">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="plug-in/login/css/style.css" rel="stylesheet" type="text/css">
<link href="plug-in/login/css/style_3.css" rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="plug-in/shop/css/c4.css">
<title>用户信息注册</title>
<script src="plug-in/jquery/jquery-1.8.3.js"></script>
<script src="plug-in/register/js/dialog.js"></script>
<script src="plug-in/shop/js/yyucadapter.js" type="text/javascript"></script>

</head>
<script>
	function change(inputid,inputvalue_default){
		document.getElementById(inputid).style.color="#000";
		var inputvalue=document.getElementById(inputid).value;
		if(inputvalue==inputvalue_default){
			document.getElementById(inputid).value="";
		}
	}
</script>
<script>
	var diaObj=null;
	function res(){
		var name = $("#username").val();
		var password = $("#password").val();
		var password1 = $("#password1").val();
		var mobile = $("#mobile").val();
		var namestr="";
		var valstr="";
		var check = /^0?(13[0-9]|15[012356789]|18[0236789]|14[57])[0-9]{8}$/;
		if(!(check.test(mobile))){
			namestr="手机格式不合法";
		}
		if(mobile=="" || name=="请输入手机号"){
			namestr="请输入手机号";	
		}
		if(password != password1){
			namestr="两次密码输入不一样";
		}
		if(password1==""  || password=="请输入密码"){
			namestr="请再次输入密码";	
		}
		if(password=="" || password=="请输入密码"){
			namestr="请输入密码";
		}
		if(name=="" || name=="请输入用户名"){
			namestr="用户名不能为空";	
		}if(namestr==""){
			_close();
		}else{
			$("#div_title").html("注册信息不符合！");
        	$("#span_li").html("原因:");
        	$("#span_val").html(namestr);
        	$("#codGoPay").show();
        	$("#codGoPayCancel").show();
        	tolizf();
		}
		
	}
	 function tolizf(){
	        window.paytyp = '0';
	        $('#codFloat').show();
	    }
	function _close() //关闭
	{
		var name = $("#username").val();
		var password = $("#password").val();
		var password1 = $("#password1").val();
		var mobile = $("#mobile").val();
		var falg=1;
		if(name=="" || name=="请输入用户名"){
			falg = 0;	
		}
		if(password=="" || password=="请输入密码"){
			falg = 0;	
		}
		if(password1==""  || password=="请输入密码"){
			falg = 0;		
		}
		if(password != password1){
			falg = 0;	
		}
		if(mobile=="" || name=="请输入手机号"){
			falg = 0;	
		}
		var check = /^0?(13[0-9]|15[012356789]|18[0236789]|14[57])[0-9]{8}$/;
		if(!(check.test(mobile))){
			falg = 0;
		}
		if(falg==1){
	    $.ajax({
	    	url:"userController.do?saveUser&shopSymbol=shop",
	        method:"POST",
	        dataType:"JSON",
	        data:$("#registerfrom").serialize(),
	        success:function(data){
	        	var success = data.success;
	        	if(success){
	        		if(data.obj=='1'){
	        			$.ajax({
        			    	url:"loginController.do?checklogin",
        			        method:"POST",
        			        dataType:"JSON",
        			        data:{username:$("#username").val(),password:$("#password").val(),openid:${WEIXIN_OPENID}},
        			        success:function(datas){
        			        	$("#div_title").html("恭喜您,注册成功!");
        			        	$("#span_li").html("");
        			        	$("#span_val").html("请稍后，正在跳转至首页。。。");
        			        	$("#codGoPay").hide();
        			        	$("#codGoPayCancel").hide();
        			        	tolizf();
        			        	setTimeout("window.location.href='weixinShopController.do?goPage&page=index&accountid=${WEIXIN_QIANTAI_ACCOUNTID}'",2000);
        			        }
        			    });
	        		}else if(data.obj=='2') {
	        				
	        		
	        		}else if(data.obj=='-1') {
	        		
	        		}
	        	}
	        }
	    });
		}else{
			$("#codFloat").hide();
			return false;
		}
	}
</script>
<body>
<div class="wrap clearfix">
	<div class="SpecialTop">
		<a onclick="history.go(-1)" style="left:8px;font-size:16px;color:#FFF;position: absolute;cursor:pointer;font-family: microsoft yahei;">返回</a>注册用户信息  <a href="weixinShopMemberController.do?gologinpage&accountId=${WEIXIN_QIANTAI_ACCOUNTID}" class="Tlogin">登录</a>
	</div>
	<div class="login">
	  <form id="registerfrom" method="post" action="weixinShopMemberController.do?save">
		<div class="errorTips" id="register_info" style="display:none"></div>
		<ul>
			<li><span>账        号</span><input type="text" name="userName" id="username" value="请输入用户名" onfocus="change('username','请输入用户名')" /></li>
			<li><span>密　　码</span> <input type="password" name="password" id="password"  value="请输入密码" onfocus="change('password','请输入密码')"/></li>
			<li><span>确认密码</span> <input  type="password" name="password1" id="password1" value="请确认密码"  onfocus="change('password1','请确认密码')"></li>
			<li><span>手机号码</span> <input type="text" name="mobilePhone"  id="mobile" value="请输入手机号" onfocus="change('mobile','请输入手机号')"/></li>
			</ul>
		<div class="agr"><label><input type="checkbox" checked="checked"> 我已阅读并同意遵守<a href="###">《注册用户服务协议》</a></label></div>
		<input class="loginBtn" name="Submit" type="button" onclick="res()" value="注 册">
		  <input type="hidden" name="TSDepart.id" value="4028d881436d514601436d5214d70015"/>
		</form>
		<!--<p class="coopTitle">用合作网站账号登录</p>
		<div class="coopCon">
			<ul>
				<li><a href="http://www.yaohongjiu.com/api/qqconnect/interface.php" class="sina">新浪微博登录</a></li>
				<li><a href="http://www.yaohongjiu.com/login/alipay/auth_authorize.php?type=user" class="Paypal">支付宝登录</a></li>
				<li><a href="http://www.yaohongjiu.com/login/sina_weibo/index.php" class="qq">QQ登录</a></li>
			</ul>
		</div>-->
		<div class="hzlogin"  style="display:none;">
        	<a href="login/sina_weibo/index.php" class="sina"></a>
            <a href="login/alipay/auth_authorize.php@type=user" class="Paypal"></a>
            <a href="api/qqconnect/interface.php" class="qq"></a>
        </div>
	</div>
	<div class="login-footer" style="display:none;">
    	<a href="http://www.lanrenmb.com/shenghuofuwu/gouwu/"><i></i>电脑版</a>
    	<p>粤ICP备09196652号-2</p>
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
                        <button type="button" id="codGoPay" onclick="_close()">确认</button>
                        <button type="cancel" id="codGoPayCancel" onclick="$(&#39;#codFloat&#39;).hide();return false;"> 取消</button> 
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
