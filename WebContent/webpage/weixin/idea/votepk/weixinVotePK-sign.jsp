<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/context/mytags.jsp"%>
<!DOCTYPE html />
<html>
<head>
    <meta charset="utf-8"/>
    <title>我要报名</title>
    <meta name="viewport" content="width=320.1, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <script type="text/javascript" src="plug-in/weixin/votepk/js/jquery-1.8.0.min.js"></script>
	<link rel="stylesheet" href="plug-in/weixin/votepk/css/base.css">
	<link rel="stylesheet" href="plug-in/weixin/votepk/css/login.css">
	<script type="text/javascript">
		function submit(){
			$("#submit").html("正在提交......");
			$("#submit").removeAttr("href");
			document.signform.submit();
		}
	
	</script>
</head>
<body>
	<header>
		<div class="logo">
			<a class="history_back" href="#"><img height="40" src="plug-in/weixin/votepk/images/back.png" alt="返回"></a>
		</div>
		<span class="main_title">我要报名</span>
	</header>
	<form action="weixinVotePKController.do?doSign" method="post" name="signform" id="signform">
	<div class="wrapper">
		<div class="content">
            <div class="login_body">
                <ul class="login_inputs">
                   <li class="input"><span class="label">手机号码</span><input type="tel" ltype="phone"  placeholder="输入手机号码" name="tel" /><span class="icon_close">&times;</span></li>
                   <li class="input"><span class="label">真实姓名</span><input type="text" ltype="userName"  placeholder="真实姓名" name="realname" /><span class="icon_close">&times;</span></li>
                   <li class="input"><span class="label">邮箱</span><input type="text" ltype="Email" placeholder="输入邮箱" name="email"/><span class="icon_close">&times;</span></li>
                </ul>
                <a class="btn_order orange" id="submit" href="javascript:submit();">报名</a>
            </div>
            <input name="accountid" type="hidden" value="${accountid }" />
            <input name="openid" type="hidden"  value="${openid}" />
		</div>
	</div>
	</form>
	<footer>
		<p>捷微技术支持</p>
	</footer>
	<div style="display:none;">
		<script type="text/javascript">
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
		document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F1eb688d0d5e093a0555320dbcd62737d' type='text/javascript'%3E%3C/script%3E"));
		</script>
	</div>
</body>
<script type="text/javascript">
	document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
		window.shareData = {
				"imgUrl": "${cuser.headimgurl}",
				"timeLineLink": "${shareurl}",
				"sendFriendLink": "${shareurl}",
				"weiboLink": "${shareurl}",
				"tTitle": "测试活动标题，打扰请原谅",
				"tContent": "测试活动标题，打扰请原谅！",
				"fTitle": "测试活动标题，打扰请原谅！",
				"fContent": "测试活动标题，打扰请原谅",
				"wContent": "测试活动标题，打扰请原谅"
			};
		// 发送给好友支持“票
		WeixinJSBridge.on('menu:share:appmessage', function (argv) {
			
			WeixinJSBridge.invoke('sendAppMessage', {
				"img_url": window.shareData.imgUrl,
				"img_width": "640",
				"img_height": "640",
				"link": window.shareData.sendFriendLink,
				"desc": window.shareData.fContent,
				"title": window.shareData.fTitle
			}, function (res) {
				_report('send_msg', res.err_msg);
			})
		});

		// 分享到朋友圈
		WeixinJSBridge.on('menu:share:timeline', function (argv) {
			
			WeixinJSBridge.invoke('shareTimeline', {
				"img_url": window.shareData.imgUrl,
				"img_width": "640",
				"img_height": "640",
				"link": window.shareData.timeLineLink,
				"desc": window.shareData.tContent,
				"title": window.shareData.tTitle
			}, function (res) {
				_report('timeline', res.err_msg);
			});
		});

		// 分享到微博
		WeixinJSBridge.on('menu:share:weibo', function (argv) {
			WeixinJSBridge.invoke('shareWeibo', {
				"content": window.shareData.wContent,
				"url": window.shareData.weiboLink,
			}, function (res) {
				_report('weibo', res.err_msg);
			});
		});
	}, false)
</script>
</html>