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
<title>用户登陆</title>
<link href="plug-in/register/css/dialog.css" rel="stylesheet" type="text/css"/>
<link href="plug-in/login/css/style.css" rel="stylesheet" type="text/css">
<link href="plug-in/login/css/style_3.css" rel="stylesheet" type="text/css">
<script src="plug-in/jquery/jquery-1.8.3.js"></script>
<script src="plug-in/register/js/dialog.js"></script>
</head>
<script>
$(document).ready(function() {
	function reloadRandCodeImage() {
	    var date = new Date();
	    var img = document.getElementById("randCodeImage");
	    img.src='randCodeImage.do?a=' + date.getTime();
	}
	reloadRandCodeImage(); //初始化验证码
});
	function change(inputid,inputvalue_default){
		document.getElementById(inputid).style.color="#000";
		var inputvalue=document.getElementById(inputid).value;
		if(inputvalue==inputvalue_default){
			document.getElementById(inputid).value="";
		}
	}
	
	var diaObj=null;
	function _open(){
		var name = $("#username").val();
		var password = $("#password").val();
		var redirUrl = "${redirUrl}";
	
		 $.ajax({
	    	url:"loginController.do?checkuser",
	        method:"POST",
	        dataType:"JSON",
	        data:$("#registerfrom").serialize(),
	        success:function(data){
	        	var success = data.success;
	        	if(success){
	        		if(redirUrl!=''){
	        			window.location.href=redirUrl+"&accountid=${WEIXIN_QIANTAI_ACCOUNTID}";
	        		}else{
	        			window.location.href="weixinShopController.do?goPage&page=index&accountid=${WEIXIN_QIANTAI_ACCOUNTID}";
	        		}
	        		
	        	}else{
	        		diaObj=new Dialog("<div class='pp_cont'>"+data.msg+"！</div><div class='vege_car jj_btn'><a onclick='_close()'>确认</a></div>",{
	        			title:"信息确认"
	        		});
	        		diaObj.show();
	        	}
	        }
	    });
	}
	
	function _close(){
		diaObj.hide();
	}
	
</script>
<body style="text-align:center">
<div class="wrap clearfix">
	<div class="SpecialTop">
		<a onclick="history.go(-1)" style="left:8px;font-size:16px;color:#FFF;position: absolute;cursor:pointer;font-family: microsoft yahei;">返回</a>会员登录  <a href="weixinShopMemberController.do?goRegisterUser&accountid=${WEIXIN_QIANTAI_ACCOUNTID}&openid=${WEIXIN_OPENID}" class="Tlogin">注册</a>
	</div>
	<div class="errorTips" id="login_info" style="display:none"></div>
	<form id="registerfrom" method="post" action="loginController.do?checkuser">
		<input type="hidden" id="qiantai" name="qiantai" value="qiantai" />
	<div class="login">
		<ul>
			<li><span>用户名</span><input type="text" name="userName" id="username" value="请输入用户名" onfocus="change('username','请输入用户名')" /></li>
			<li><span>密　码</span><input name="password" id="password" type="password" class="loginPassW password"  value="请输入密码" onfocus="change('password','请输入密码')"/></li>
			<li><span>验证码</span>  <input type="text" style="height:25px;"  name="randCode" id="randCode"  value="请输入验证码" onfocus="change('randCode','请输入验证码')"/></li>
		</ul>
			<div style="margin:0 auto;">
     			 <img id="randCodeImage" src="randCodeImage" onclick="this.src='${pageContext.request.contextPath}/randCodeImage.do?a='+(new Date().getTime())"/>
      		</div>
		<input style="cursor:pointer" class="loginBtn" type="button" onClick="_open()" name="my_login" title="马上登录" value="登 录" />
		<div class="forPassW clearfix" style="display:none;">
        	<label class="lf"><input type="checkbox" name="remember" value="1"> 下次自动登录</label>
            <a href="user.php@act=get_password" class="rt">忘记密码 ></a>
        </div>
        <div class="hzlogin" style="display:none;">
        	<a href="login/sina_weibo/index.php" class="sina"></a>
            <a href="login/alipay/auth_authorize.php@type=user" class="Paypal"></a>
            <a href="api/qqconnect/interface.php" class="qq"></a>
        </div>
	</div>
	</form>
    <div class="login-footer" style="display:none;">
    	<a href="http://www.lanrenmb.com/shenghuofuwu/gouwu/"><i></i>电脑版</a>
    	<p>粤ICP备09196652号-2</p>
    </div>
	</div>
</div>
</body>
</html>
