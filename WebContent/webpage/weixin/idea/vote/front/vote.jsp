<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<!-- saved from url=(0086)http://www.uejukebao.com/wxplat/wxcore/business/vote/vote.php?vid=20&wxid=fromUsername -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,minimum-scale=1,user-scalable=no,maximum-scale=1,initial-scale=1">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="http://www.uejukebao.com/wxplat/wxcore/assets/business/vote/common.css">
<link rel="stylesheet" href="http://www.uejukebao.com/wxplat/wxcore/assets/business/vote/vote.css">
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<title>微投票-捷微团队</title>
</head>
<body>
	<div class="wrapper" style="width: 100%" >
		<img class="bg" src="plug-in/weixin/vote/image/bg.jpg">
		<div class="top fn-clear">
			<div class="count-cont">
				<h3>参与人数</h3>
				<div class="count">${weixinVote.voteCount }</div>
			</div>
			<div class="title-cont">
				<p class="title">微投票-捷微团队</p>
				<p class="timeout"><img class="clock" src="plug-in/weixin/vote/image/clock.png"><span class="text">距离投票结束还有0天0小时0分0秒</span></p>
			</div>
		</div>
		
		<div class="cover">
			<img class="line" src="plug-in/weixin/vote/image/ctline.jpg">
			<img class="cimg" src="plug-in/weixin/vote/image/d-01.jpg" style="height:166px;">
			<img class="line" src="plug-in/weixin/vote/image/cbline.jpg">
		</div>
		
		<div class="summary" style="font-size: 16px;margin-left: 10px;">问题：${weixinVote.voteTitle }
</div>
		<div class="tip-cont"><img class="icon" src="plug-in/weixin/vote/image/tip_icon.png">投票后才能看到结果 | 最多选1项</div>		
		<div class="option-cont">
		<c:forEach items="${voteoptionlist}" var="option" >
			<div class="option fn-clear" data-value="${option.id }">
				<img class="checkimg" src="plug-in/weixin/vote/image/checkimg.png">
				<img class="checkimg-check" src="plug-in/weixin/vote/image/checkimg_check.png">
				<div>${option.voteOptionTitle}</div>
			</div>
			<img class="sep" src="plug-in/weixin/vote/image/option_sep.jpg">
		</c:forEach>
		</div>
		<div class="vote-cont">
			<div style="height: 10px;"></div>
			<img class="vote-btn" id="submit" src="plug-in/weixin/vote/image/vote.png">			
			<div style="height: 10px;"></div>
		</div>
		


 	<p class="page-url">
		<a href="http://www.jeewx.com/" target="_blank" class="page-url-link">捷微团队</a>
	</p>


		<audio id="musicClick" src="/wxplat/wxcore/assets/res/click.mp3" preload="auto"></audio>
	</div>
	<div id="loading" class="loading-mask">
		<img class="gimg" src="plug-in/weixin/vote/image/ajax-loader.gif">
	</div>

<script type="text/javascript">
$(function(){
	var maxsel = "1";
	
	$(".option").on("click",function(){
		var $option = $(this);
		$option.toggleClass("option-sel");
		$("#musicClick")[0].play();
	});
	
	
	$(".option").each(function(item,index){
		var $option = $(this);
		var $bar = $option.find(".bar");
		var per = $bar.attr("data-per");
		$bar.css("width",per+"%");
		var left = $option.find(".progress").width() * per/100 + 18;
		$(this).find(".per").css("left",left + "px");
	});
	
	$("#submit").on("click",function(){
		var $btn = $(this);
		$("#musicClick")[0].play();
		if($btn.hasClass("disabled")) return;
		var $answer = $(".option-cont .option-sel");
		if($answer.size() == 0){
			alert("请选择一个答案!");
			return;
		}
		if($answer.size() > maxsel){
			alert("本题最多只能选择个"+maxsel+"答案!");
			return;
		}
		var i=0;
		var ans = "";
		$answer.each(function(index,o){
			if(i++ != 0){
				ans += ",";
			}
			ans += $(o).attr("data-value");
		});
		var submitData = {
			"id":"${weixinVote.id}",
			"accountid":"${accountid}",
			"openid":"${openid}",
			"optionid":ans
		};
		$btn.addClass("disabled");
		$.ajax({
			type : "GET",
			url : "weixinVoteController.do?doVote",
			data : submitData,
			dataType : "json",
			success : function(data){
				$btn.removeClass("disabled");
				if (data.success) {
					alert("投票成功，谢谢您的参与！");
					location.href="weixinVoteController.do?goVoteCalculate&accountid=${accountid}&id=${weixinVote.id}&openid="+ans;
				} else {
					$("#loading").hide();
					alert(data.msg);
					location.href="weixinVoteController.do?goVoteCalculate&accountid=${accountid}&id=${weixinVote.id}&openid="+ans;
				}
			}
		});
	});
	$(document).on('ajaxBeforeSend', function(e, xhr, options){
		$("#loading").show();
	}).on("ajaxComplete ",function(e, xhr, options){
		//$("#loading").hide();
	});
	function ShowCountDown() { 
		var now = new Date(); 
		var endDate = new Date('2013', '11', '28', '17', '16'); 
		var leftTime = endDate.getTime() - now.getTime(); 
		var leftsecond = parseInt(leftTime / 1000); 
		var day1 = Math.floor(leftsecond / (60 * 60 * 24)); 
		var hour1 = Math.floor((leftsecond - day1 * 24 * 60 * 60) / 3600); 
		var hour = Math.floor((leftsecond - 60 * 60) / 3600); 
		//如果小时为负数 显示0 
		if (hour < 0) { 
			hour = 0; 
		} 
		if (day1 < 0) { 
		hour = hour1;
		} 
		var minute = Math.floor((leftsecond - day1 * 24 * 60 * 60 - hour1 * 3600) / 60); 
		var second = Math.floor(leftsecond - day1 * 24 * 60 * 60 - hour1 * 3600 - minute * 60); 
		var text = "";
		//如果结束时间为负数 就显示0 
		if (leftTime > 0) { 
			text = day1 + "天" + hour1 + "小时" + minute + "分" + second + "秒"; 
		} else { 
			text = 0 + "天" + 0 + "小时" + 0 + "分" + 0 + "秒"; 
		}
		$(".timeout .text").text("距离投票结束还有" + text);
	}
	window.setInterval(function () { ShowCountDown(); }, 1000);
	ShowCountDown(); 
});
</script>
</body></html>