<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html />
<html>
<head>
    <meta charset="utf-8"/>
    <title>中奖兑换</title>
    <meta name="viewport" content="width=320.1, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="plug-in/weixin/votepk/css/base.css">
	<link rel="stylesheet" href="plug-in/weixin/votepk/css/login.css">
</head>
<body>
	<header>
		<div class="logo">
			<a class="history_back" href="#"><img height="40" src="http://cdn1.yaochufa.com/images/mobile/back.png" alt="返回"></a>
		</div>
		<span class="main_title">中奖兑换</span>
		
	</header>
	<div class="wrapper">
		<div class="content">
            <div class="login_body">
                <ul class="login_inputs">
                   <li class="input"><span class="label">中奖号码</span><input type="tel" name="zhongjiangno"  placeholder="输入中奖号码" /><span class="icon_close">&times;</span></li>
                   <li class="input"><span class="label">联系人</span><input type="text" ltype="userName"  placeholder="真实姓名" /><span class="icon_close">&times;</span></li>
				   <li class="input"><span class="label">联系电话</span><input type="tel" ltype="phone"  placeholder="输入手机号码" /><span class="icon_close">&times;</span></li>
                  <li class="input"><span class="label">邮寄地址</span><input type="text"  placeholder="请输入邮寄地址" /><span class="icon_close">&times;</span></li>
                   
                </ul>
                <a class="btn_order orange" href="weixinVotePKController.do?goSuccess">确认提交</a>
            </div>
		</div>
	</div>
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

</html>
