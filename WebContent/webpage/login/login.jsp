<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>微商管理系统</title>

<link href="plug-in/login/css/login.css" rel="stylesheet" rev="stylesheet"
	type="text/css" media="all" />

<link href="plug-in/login/css/demo.css" rel="stylesheet" rev="stylesheet"
	type="text/css" media="all" />

<script type="text/javascript" src="plug-in/login/js/jquery1.42.min.js"></script>

<script type="text/javascript" src="plug-in/login/js/jquery.SuperSlide.js"></script>

<script type="text/javascript" src="plug-in/login/js/Validform_v5.3.2_min.js"></script>



<script>
	$(function() {

		$(".i-text").focus(function() {

			$(this).addClass('h-light');

		});

		$(".i-text").focusout(function() {

			$(this).removeClass('h-light');

		});

		$("#username").focus(function() {

			var username = $(this).val();

			if (username == '输入账号') {

				$(this).val('');

			}

		});

		$("#username").focusout(function() {

			var username = $(this).val();

			if (username == '') {

				$(this).val('输入账号');

			}

		});

		$("#password").focus(function() {

			var username = $(this).val();

			if (username == '输入密码') {

				$(this).val('');

			}

		});

		$("#yzm").focus(function() {

			var username = $(this).val();

			if (username == '输入验证码') {

				$(this).val('');

			}

		});

		$("#yzm").focusout(function() {

			var username = $(this).val();

			if (username == '') {

				$(this).val('输入验证码');

			}

		});

		$(".registerform").Validform({

			tiptype : function(msg, o, cssctl) {
				
				var objtip = $(".error-box");

				cssctl(objtip, o.type);
				
				objtip.text(msg);
				
				

			},
			callback:function(d){
				var actionurl=$('form').attr('action');//提交路径
				if (d.success) {
					setTimeout("window.location.href='loginController.do?login'", 1000);
				} else {
					var objtip = $(".error-box");
					objtip.text(d.msg);
				}
				
			}
			,
			ajaxPost : true

		});

	});
</script>

</head>
<body>



	<div class="header">

		<h1 class="headerLogo">
			<a title="微商管理系统" target="_blank" href="javascript:"><img
				alt="logo" src="plug-in/login/images/logo.png"></a>
		</h1>

		<div class="headerNav">

			

		</div>

	</div>



	<div class="banner">



		<div class="login-aside">

			<div id="o-box-up"></div>

			<div id="o-box-down" style="table-layout: fixed;">

				<div class="error-box"></div>



				<form class="registerform" action="loginController.do?checkuser">

					<div class="fm-item">

						<label for="logonId" class="form-label">MISS系统登陆：</label> <input
							type="text" value="输入账号" maxlength="100" name="userName" id="username"
							class="i-text"  datatype="s1-18"
							errormsg="用户名至少6个字符,最多18个字符！">

						<div class="ui-form-explain"></div>

					</div>



					<div class="fm-item">

						<label for="logonId" class="form-label">登陆密码：</label> <input
							type="password" name="password" value="" maxlength="100" id="password"
							class="i-text" datatype="*1-16" nullmsg="请设置密码！"
							errormsg="密码范围在6~16位之间！">

						<div class="ui-form-explain"></div>
					</div>



					<div class="fm-item pos-r">

				   <label for="logonId" class="form-label">验证码</label>
			
				   <input type="text" name="randCode" value="输入验证码" maxlength="100" id="yzm" class="i-text yzm" nullmsg="请输入验证码！" >    
			
			       <div class="ui-form-explain"><img src="randCodeImage.do" id="yzminfo" class="yzm-img" /></div>

  			</div>



					<div class="fm-item">

						<label for="logonId" class="form-label"></label> <input
							type="submit" value="" tabindex="4" id="send-btn"
							class="btn-login">

						<div class="ui-form-explain"></div>

					</div>



				</form>



			</div>



		</div>



		<div class="bd">

			<ul>

				<li
					style="background: url(plug-in/login/themes/theme-pic1.jpg) #CCE1F3 center 0 no-repeat;"></li>

				<li
					style="background: url(plug-in/login/themes/theme-pic2.jpg) #BCE0FF center 0 no-repeat;"></li>

			</ul>

		</div>



		<div class="hd">
			<ul></ul>
		</div>

	</div>

	<script type="text/javascript">
		jQuery(".banner").slide({
			titCell : ".hd ul",
			mainCell : ".bd ul",
			effect : "fold",
			autoPlay : true,
			autoPage : true,
			trigger : "click"
		});
	</script>





	<div class="banner-shadow"></div>
<script type="text/javascript">
	$("#yzminfo").click(function(){
		  var  a  =  new Date();
			$("#yzminfo").attr("src","randCodeImage.do?"+a);
	});
</script>


</body>
</html>