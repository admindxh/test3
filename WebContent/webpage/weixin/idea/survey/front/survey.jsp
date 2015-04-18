<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<!-- saved from url=(0111)http://wx.we7.cc/mobile.php?act=module&do=survey&name=survey&id=1&weid=1&wxref=mp.weixin.qq.com#wechat_redirect -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>捷微团队-微调研</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- Mobile Devices Support @begin -->
	<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
	<meta content="no-cache" http-equiv="pragma">
	<meta content="0" http-equiv="expires">
	<meta content="telephone=no, address=no" name="format-detection">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes"> <!-- apple devices fullscreen -->
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<!-- Mobile Devices Support @end -->
	<meta name="keywords" content="eeeeeeeeeeeee11111111">
	<meta name="description" content="捷微快速开发平台">
	<script type="text/javascript" src="plug-in/jquery/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="webpage/weixin/idea/survey/js/common.js"></script>
	<link type="text/css" rel="stylesheet" href="webpage/weixin/idea/survey/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="webpage/weixin/idea/survey/css/survey.css" media="all">
	<script type="text/javascript" src="webpage/weixin/idea/survey/js/bootstrap.js"></script>
	<script type="text/javascript" src="webpage/weixin/idea/survey/js/jquery.touchwipe.js"></script>
	<script type="text/javascript" src="webpage/weixin/idea/survey/js/alert.js"></script>
<style>
/*重定义bootstrap样式*/
select, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input{width:100%; margin-bottom:0; box-sizing:border-box; -webkit-box-sizing:border-box; -moz-box-sizing:border-box;}
input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input{height:30px;}
.input-append, .input-prepend{width:100%; margin-bottom:0;}
select{padding:0 5px; line-height:28px; -webkit-appearance:button;}
.checkbox.inline{margin-top:0;}
.checkbox.inline + .checkbox.inline {margin-left:0;}
.checkbox input[type="checkbox"]{filter:alpha(opacity:0); opacity:0;}
.file{position:relative;}
.file input[type="file"]{position:absolute; top:0; left:0; width:100%; filter:alpha(opacity:0); opacity:0;}
.file button{width:100%; text-align:left;}
.form-item{border-left:3px #ED2F2F solid; padding-left:10px; height:30px; line-height:30px; background:#F7F7F7; margin-bottom:10px;}
</style>
<script type="text/javascript">
function dosurvey(){
	var obj = $.ajax({
		url : 'weixinSurveyController.do?doSurvey&shopSymbol=shop',
		type : 'post',
		dataType:"JSON",
		data : $("#surveyform").serialize(),
		success:function(data){
			if(data.success){
				alert("调研结束，谢谢您的参与。");
				location.href="weixinSurveyController.do?goSurveyResultShow&id="+$("#mainid").val();
			}
		}
	});
}
		

</script>
</head>
<body>
<div class="main" style="height: 949px;">
<div style="height: 25px;"></div>
<div class="content-w1 survey-title" style="display: none;">
	<div class="content-w2">
		<div class="content">
			<div class="title">${surveyMain.surveyTitle}</div>
			<img class="connect" src="webpage/weixin/idea/survey/images/connect.png">
			<div class="desc-cont"><p>${surveyMain.surveyDescription}</p></div>
			<!-- 提交调研超过设定的次数，不显示按钮 -->
			<a class="next-btn" href="javascript:void(0)" style="text-decoration:none;">马上开始</a>
		</div>
	</div>
</div>
<form action="" method="post" id="surveyform">
	<div class="question" style="overflow: hidden; display: block;">
	<!-- 调研列表开始 -->
		<c:forEach  items="${viewlist}" var="v" >
			<c:if test="${v.surveyType==1}">
			<div class="xuan" style="display: block;">
				<div class="title">${v.surveyTitle }</div>
					<div class="tip">注：本题最多能选择1个答案！</div>
						<div class="options" title="1" sur="${v.surveyid}">
							<c:forEach items="${v.optionlist }" var="olst">
								<div class="option ">
									<img class="oimg" src="webpage/weixin/idea/survey/images/option_bg.png">
									<img class="oimg-sel" src="webpage/weixin/idea/survey/images/option_sel_bg.png">
									<div class="text">
										<div class="otext">${olst.surveyOptionTitle }</div><div class="ohide" style="display: none">${olst.id }</div>
									</div>
								</div>
							</c:forEach>				 
						<input type="hidden" name="answer" class="hidden" id="hidden_0" >
						</div>
						<div class="tip" style="padding-right:20px">说明：${v.surveyDescription }</div>
						<div class="submit" title="1">
							<img src="webpage/weixin/idea/survey/images/next_btn.png">
							<span>下一步</span>
						</div>
					</div>
				</c:if>
			<c:if test="${v.surveyType==2}">
				<div class="xuan" style="display: block;">
					<div class="title">${v.surveyTitle }</div>
						<div class="tip">注：本题可以选择多个！</div>
							<div class="options" title="2" sur="${v.surveyid}">
								<c:forEach items="${v.optionlist }" var="olst">
									<div class="option ">
										<img class="oimg" src="webpage/weixin/idea/survey/images/option_bg.png">
										<img class="oimg-sel" src="webpage/weixin/idea/survey/images/option_sel_bg.png">
										<div class="text">
											<div class="otext">${olst.surveyOptionTitle }</div><div class="ohide" style="display: none">${olst.id }</div>
										</div>
									</div>
								</c:forEach>				 
							<input type="hidden" name="answer" class="hidden" id="hidden_0" >
							</div>
							<div class="tip" style="padding-right:20px">说明：${v.surveyDescription }</div>
							<div class="submit" title="100">
								<img src="webpage/weixin/idea/survey/images/next_btn.png">
								<span>下一步</span>
							</div>
				</div>
				</c:if>
				<c:if test="${v.surveyType==3}">
					<div class=" xuan" style="display: none;" title="3" sur="${v.surveyid}">
						<div class="content-w2">
							<div class="content" >
								<div class="title" style="font-size:16px;font-weight:bold;color:#000;">${v.surveyTitle }</div>
								<img class="connect" src="webpage/weixin/idea/survey/images/connect(1).png">
								<div class="desc-cont">
									<textarea id="suggest" name="suggest" rows="5" class="answertxt" style="font-color:#ccc"></textarea>
								</div>
							</div>
						</div>
						<div class="tip" style="padding-right:20px"></div>
						<div class="submit" title="100"><img src="webpage/weixin/idea/survey/images/next_btn.png"><span>下一步</span></div>	
						<input type="hidden" name="answer" class="hidden" id="hidden_0" >	
					</div>	
				</c:if>
			</c:forEach>		
			<div class=" xuan" style="display: none;">
						<div class="content-w2">
							<div class="content">
								<div class="title" style="font-size:16px;font-weight:bold;color:#000;">${v.surveyTitle }</div>
								<img class="connect" src="webpage/weixin/idea/survey/images/connect(1).png">
								<div>感谢您的参与</div>
									<input type="button" onclick="javascript:dosurvey();"  class="next-btn" id="finish" value="立即提交" name="submit">		
							</div>
						</div>
					</div>	
	</div>
	<div id="hiddenarea">
		<input type="hidden" id="accountid" name="accountid" value="${accountid }" />
		<input type="hidden" id="openid" name="openid" value="${openid }" />
		<input type="hidden" id="mainid" name="mainid" value="${surveyMain.id }" />
	</div>
</form>

<script>
$(function(){
	$(".content-w1,.question").hide();
	$(".content-w1").css("display", "inline-block");
	$(".xuan").hide();
	
	$(".next-btn").click(function(){
		$(".survey-title,.question").hide();
		$(".question").show();	
	});
	
	$(".xuan:first").show();	
	$(".option").on("click",function(){
		var $option = $(this);
		var parent=$(this).parent();
		var type=parent.attr("title");	
		var surveyid =parent.attr("sur");
		if(type=='1'){
			//单选赋值
			parent.find('.option').removeClass('option-sel');
			$option.toggleClass("option-sel");
			var otext = parent.find(".option-sel .otext").html();
			var oid = parent.find(".option-sel .ohide").html();
			 parent.find(".hidden").val(surveyid+"_"+otext+"_"+oid);	
			 
		}else if(type=='2'){
			//多选赋值
			$option.toggleClass("option-sel");
			var valarr=new Array();
			var idarr=new Array();
			parent.find(".option-sel .otext").each(function(index){
				valarr[index]=$(this).html();		
			})
			//通过样式表获取对应的文本内容
			parent.find(".option-sel .ohide").each(function(index){
				idarr[index]=$(this).html();		
			})
			var valstr=valarr.join(';');
			valstr = surveyid+"_"+valstr;
			var idstr = idarr.join(";");
			idstr = valstr+"_"+idstr;
			parent.find(".hidden").val(idstr);		
		}
		$("#musicClick")[0].play();
	});
	
	$(".submit").click(function(){
		var parent=$(this).parent();
		var maxsel = $(this).attr("title");
		var $btn = $(this);
		var type=parent.attr("title");	
		if($btn.hasClass("disabled")) return;
		var $answer = parent.find(".options .option-sel");
		if(type!=3){

			//parent.find(".hidden").val(valstr);	
			//设置答案
			if($answer.size() == 0){
				alert("请选择一个答案!");
				return;
			}
		}else{
			//获取当前题目的ID
			var surveyid = parent.attr("sur");
			//设置值
			var otext = parent.find(".content-w2 .content .desc-cont .answertxt ").val();
			parent.find(".hidden").val(surveyid+"_"+otext);	
		}
		if($answer.size() > maxsel){
			alert("本题最多只能选择个"+maxsel+"答案!");
			return;
		}
		$(".xuan").hide();
		parent.next().show();
	});
	
	$("#suggest").focus(function(){
		$(this).val("");	
	});
	
	$(".next-step").click(function(){
		var parent=$(this).parent().parent().parent();
		$(".xuan").hide();
		parent.next().show();
	});
	
	
	$("#finish").click(function(){
		$("#form").submit();
	});
});
//调整高度
$(function() {
	$(".main").height($(window).height());
});
$(window).resize(function(){
	$(".main").height($(window).height());
});
</script>
	<div id="footer">捷微：快速开发平台</div>
<script type="text/javascript">
$(function() {
	$(".user-box .box-item").each(function(i) {
		i = i +1;
		if(i%3 == 0) $(this).css("border-right", "0");
	});
	$(window).scroll(function(){
		$(".menu-button").find("i").removeClass("icon-minus-sign").addClass("icon-plus-sign");
		$(".menu-main").hide();
	});
	$(".menu-main a").click(function(){ $(".menu-main").hide(); });

	//控制tab宽度
	var profile_tab = $(".nav-tabs li");
	profile_tab.css({"width": 100/profile_tab.length+"%", "text-align": "center"});

	//手机表单处理
	$(".form-table").delegate(".checkbox input[type='checkbox']", "click", function(){
		$(this).parent().toggleClass("btn-inverse");
	});
	$(".form-table").delegate(".file input[type='file']", "change", function(){
		var a = $(this).next("button");
		a.html(a.html() +' '+  $(this).val());
	});

	//处理固定横向导航条
	var navbarFixedTop = false, navbarFixedBottom = false;
	navbarFixedTop = $(".navbar").hasClass("navbar-fixed-top");
	navbarFixedBottom = $(".navbar").hasClass("navbar-fixed-bottom");
	if(navbarFixedTop) $("body").css("padding-top", "41px");
	if(navbarFixedBottom) $("body").css("padding-bottom", "41px");
});
</script>
</body></html>