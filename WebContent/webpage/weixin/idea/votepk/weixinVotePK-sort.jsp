<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title></title>

<link href="plug-in/weixin/votepk/css/style_2.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="plug-in/weixin/votepk/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
var func_show_msg = function(msg) {
notif({msg: msg,type: "error",position: "center"});
};
var func_show_success_msg = function(msg) {
notif({msg: msg,type: "success",position: "center"});
};
document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
WeixinJSBridge.call('hideToolbar');
});
</script>


<title>排行榜</title>

<script>
$('document').ready(function(){
	//定位用户位置
	var dream_item = $("#oFbxouHa5nHoM9JfuGKCjt-ogKrk");
	dream_item.css('background-color','#d9dde2');
	var distanceTop = dream_item.offset().top;
	setTimeout(function(){
		$('body').animate({scrollTop: distanceTop}, 1500);
	},2000);
	
});
function sign(){
	var s = $("#subscribeflag").val();
	if(s==0){
		$("#subscribediv2").show();
		return;
	}else{
		location.href="weixinVotePKController.do?goVotePK&accountid=${accountid}&openid=${voteopenid }&voteopenid=${voteopenid}";
	}
}
</script>
</head>

<body>
<div class="ran">
	<ul>
    	<li><a href="${hdjs }">活动<br>介绍</a></li>
        <li><a href="${hdgz }">活动<br>规则</a></li>
        <li><a href="${tpgl }">投票<br>攻略</a></li>
        <li style="float:right;"><a href="javascript:;" onclick="javascript:sign();">我要<br>报名</a></li>
    </ul>	
</div>
<div class="button">
	<div class="apply ley" style="width:100%"><a href="javascript:;" onclick="#">个人排行榜</a></div>
</div>
<div class="friends">
<c:forEach items="${viewlist}" var="v" varStatus="vs" >
<div class="surfaceBox" id="oFbxouIbeEEfuHPF2pIMid7QrnQ4" onclick="window.location.href ='weixinVotePKController.do?goVotePK&accountid=${v.accountid}&voteopenid=${voteopenid }&openid=${v.openid }';">
	<ul class="surface">
    	<li class="count">${vs.index+1 }</li>
        <li class="head_1" style="background:url(${v.imgurl}); background-size:100%;"></li>
        <li class="attention">
        	<div>${v.nickname }</div>
            <div>支持量：${v.votecount }</div>
        </li>
    </ul>
</div>
</c:forEach>
</div>
<script>
var page = ${page};
var pagecount =${pagecount};
var page_url = "weixinVotePKController.do?getMore&accountid=${accountid}";
var count = page*${pageSize};
var username = "";
var nickname = "";
var imgurl = "";
var dreamurl = "";
var voteopenid="${voteopenid}";
var load_more_info = function(){
	 $('.view-more').removeAttr("onclick");
	$.getJSON(page_url, {'page':++page}, function (data) {
	$('.view-more').attr("onclick","load_more_info();");
	console.log(data);
		$.each(data.obj,function(key,val){
			count++;
			console.log(val);
			if(val.imgurl== null ||val.imgurl == ""){
				imgurl = "http://o2o.exweixin.com/apps/SeaFood/_static/images/head_empty.jpg";
				
			}else{
				imgurl = val.imgurl+"64";
			}
			nickname = val.nickname;
			if(nickname.length > 6){
				username = nickname.substr(0, 6)+"...";
			}else{
				username = nickname;
			}
			
			//onclick = 'http://o2o.exweixin.com/index.php?app=Dream&mod=Index&act=index&uid='+val['uid']+'&uuid='+val['openid'];
			dreamurl ="weixinVotePKController.do?goVotePK&page="+(page+1)+"openid="+val.openid+"&accountid="+val.accountid+"&voteopenid="+voteopenid;                                                                                                                                                
			var itemHtml = '<a href='+dreamurl+'><div class="surfaceBox" id="'+val.openid+'"><ul class="surface"><li class="count">'+count+'</li><li class="head_1" style="background:url('+imgurl+'); background-size:100%;"></li><li class="attention"><div>'+nickname+'</div><div>支持量：'+val.votecount+'</div></li></ul></div></a>';
			$('.friends').append(itemHtml);
		});
		if((page+1) > pagecount){
     		$('.view-more').hide();
     	}
	});
};
</script>
<div class="view-more" onclick="javascript:load_more_info()">查看更多</div><div style="color:#fff; font-size:12px; text-align:center; margin-top:2%">捷微开发团队</div>

<script type="text/javascript">
	document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
		window.shareData = {
				"imgUrl": "${cuser.headimgurl}",
				"timeLineLink": "${shareurl}",
				"sendFriendLink": "${shareurl}",
				"weiboLink": "${shareurl}",
				"tTitle": "拜托拜托！帮我扫码！我当新玉麟诚信监督员，你来拿好礼！",
				"tContent": "拜托拜托！帮我扫码！我当新玉麟诚信监督员，你来拿好礼！",
				"fTitle": "${userinfo.realname}要赚10万年薪，够义气就来支持他吧！",
				"fContent": "拜托拜托！帮我扫码啦！奖品你也有份~",
				"wContent": "拜托拜托！帮我扫码啦！奖品你也有份~"
			};
		// 发送给好友
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




</body></html>