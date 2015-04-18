<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<!-- saved from url=(0131)http://o2o.exweixin.com/index.php?app=SeaFood&mod=Index&act=index&uid=367&uuid=oFbxouHa5nHoM9JfuGKCjt-ogKrk&exref=#mp.weixin.qq.com -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title></title>
<link href="plug-in/weixin/votepk/css/style_1.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="plug-in/weixin/votepk/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="webpage/weixin/idea/survey/js/alert.js"></script>
<link rel="stylesheet" href="plug-in/weixin/votepk/css/base.css">

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


<title>个人信息</title>

</head>
<body>
<div class="character">
	<div class="character_1">
      <div class="top">
        <div class="head"><img src="${cuser.headimgurl}" width="70" ;=""></div>
    </div>
    <div style="margin-left:2%; font-size:12px; color:#555; font-weight:bold; width:35%; text-align:center;"><samp><samp></samp></samp></div>
    
    <div class="apply">
    	<div class="apply_1"><samp>${userinfo.realname }</samp></div>
        <div class="apply_2"><samp>${userinfo.votecount}</samp></div>
    </div>
        <div class="img">
        <img src="${userinfo.qrcodeurl}" style="width:100%;">
        </div>
        <div class="div">
        <p class="pink_1">求投票攻略</p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;亲爱的小伙伴们快打开微信“扫一扫”，扫描右侧二维码，关注“捷微团队”微信平台，就能为我成功投上一票。（PS. 够义气就继续分享活动，我还能再多4票！） 
        </div>
    </div>
        <div class="div_1">
        <p class="pink_1">扫码攻略</p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;长按页面上的二维码，保存在手机里，然后找到微信“扫一扫”功能，点击右上角“相册”后选中二维码就可以完成扫码！
  		<p></p>
        <p class="pink_1">支持有礼</p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;只要帮好友扫码并且分享活动海报，新玉麟就送您一次抽奖的机会！记得留意扫码后“新玉麟海参”平台自动回复的内容！
        </div>
     <ul class="buttom">
        <li class="buttom_1"><a href="javascript:;" onclick="javascript:sort();">排行榜</a></li>
        <li class="buttom_1"><a href="javascript:;" onclick="javascript:addvotecount();">投票</a></li>
        <li class="buttom_1"><a href="javascript:;" onclick="javascript:sign();">我要报名<input id="subscribeflag" type="hidden" value="${subscribe }" /> </a></li>
    </ul>
    
 <div id="pop-up" style=" display:none;" onclick="document.getElementById(&#39;pop-up&#39;).style.display=&#39;none&#39;;">
    <div class="pop"></div>
</div>
</div>
<div class="friends">
	<c:forEach items="${recordlist }" var="r" varStatus="rs">
	<div class="surfaceBox">
		<ul class="surface">
	        <li class="head_1" style="background:url(${r.imgurl}); background-size:100%;"></li>
	        <li class="attention">
	        	<div>${r.nickname }</div>
	            <div style="font-size:12px; color:#555">在${r.votedate}支持你。</div>
	        </li>
	        <li>
	        	<div class="right">
	        		<samp class="blue text">${r.votecount}</samp>
	                <samp class="grey greode"></samp>
	                <samp class="blue share"></samp>           
	            </div>
	        </li>       
	    </ul>
	</div>
	</c:forEach>
</div>
<div style="color:#494949; font-size:12px; text-align:center; margin-top:2%">捷微开发团队</div>
<script type="text/javascript">
	document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
		window.shareData = {
			"imgUrl": "${cuser.headimgurl}",
			"timeLineLink": "${shareurl}",
			"sendFriendLink": "${shareurl}",
			"weiboLink": "${shareurl}",
			"tTitle": "测试活动标题，打扰请原谅",
			"tContent": "测试活动标题，打扰请原谅！",
			"fTitle": "${userinfo.realname}测试活动标题，打扰请原谅！",
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
				if(res.err_msg=="send_app_msg:ok"){
					addvotecountbyfriends();
				}
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
				if(res.err_msg=="share_timeline:ok"){
					addvotecountbyfriends();
				}
			});
		});

		// 分享到微博
		WeixinJSBridge.on('menu:share:weibo', function (argv) {
			WeixinJSBridge.invoke('shareWeibo', {
				"content": window.shareData.wContent,
				"url": window.shareData.weiboLink,
			}, function (res) {
				if(res.err_msg=="share_weibo:ok"){
					addvotecountbyfriends();
				}
			});
		});
	}, false)
	
	//朋友圈分享
	function addvotecountbyfriends(){
		$.ajax({
			type : "GET",
			url : "weixinVotePKController.do?doAddVoteCountByFriends&id=${userinfo.id}&accountid=${accountid}&openid=${openid}&voteopenid=${voteopenid}",
			dataType : "json",
			success : function(data){
			}
		});
	}
	//朋友投票
	function addvotecount(){
		$.ajax({
			type : "GET",
			url : "weixinVotePKController.do?doVotePK&id=${userinfo.id}&accountid=${accountid}&openid=${openid}&voteopenid=${voteopenid}",
			dataType : "json",
			success : function(data){
				if (data.success) {
					alert("投票成功，谢谢您的参与！");
					location.href="${shareurl}";
				} else {
					if(data.attributes.flag==0){
						alert(data.msg);
					}else{
						$("#subscribediv").show();
					}
				}
			}
		});
	}
	function subscribe(){
		location.href="${subscribeurl}";
	}
	function sign(){
		$.ajax({
			type : "GET",
			url : "weixinVotePKController.do?checkVoteUser&id=${userinfo.id}&accountid=${accountid}&openid=${openid}&voteopenid=${voteopenid}",
			dataType : "json",
			success : function(data){
				if(!data.success){
					if(data.msg==0){
						alert("亲，请重新进入投票页面!");
					}else{
						$("#subscribediv2").show();
					}
					return;
				}else{
					location.href="weixinVotePKController.do?goVotePK&accountid=${accountid}&openid=${voteopenid }&voteopenid=${voteopenid}";
				}
			}
		});		
	}
	function sort(){
		$.ajax({
			type : "GET",
			url : "weixinVotePKController.do?checkVoteUser&id=${userinfo.id}&accountid=${accountid}&openid=${openid}&voteopenid=${voteopenid}",
			dataType : "json",
			success : function(data){
				if(!data.success){
					if(data.msg==0){
						alert("亲，请重新进入投票页面!");
					}else{
						$("#subscribediv2").show();
					}
					return;
				}else{
					location.href="weixinVotePKController.do?goVotePKSort&accountid=${accountid}&voteopenid=${voteopenid}&openid=${voteopenid}&page=1";
				}
			}
		});	
	}
</script>
<div id="subscribediv" style="display:none;">
    <div class="wx_mask">
    </div>
    <div class="wx_confirm">
        <div class="wx_confirm_inner">
            <div class="wx_confirm_hd">
                <div class="wx_confirm_tit">提示</div>
                <div class="wx_confirm_close" id="codGoPayCancel2" onclick="$(&#39;#subscribediv&#39;).hide();" title="关闭"></div>
            </div>
                <div class="wx_confirm_bd">
                    <div class="wx_confirm_cont">
                        <div class="confirm_order">
                            <p>
                            	<span>亲，关注公众平台后投票才会生效喔。</span>
                            </p>
                        </div>
                    </div>
						<div class="wx_confirm_btns">
	                        <button type="button" id="codGoPay" onclick="subscribe()">确认</button>
	                        <button type="cancel" id="codGoPayCancel" onclick="$(&#39;#subscribediv&#39;).hide();return false;"> 取消</button> 
	                    </div>	     
                    </div>
        </div>
    </div>
</div>
<div id="subscribediv2" style="display: none">
    <div class="wx_mask">
    </div>
    <div class="wx_confirm">
        <div class="wx_confirm_inner">
            <div class="wx_confirm_hd">
                <div class="wx_confirm_tit">提示</div>
                <div class="wx_confirm_close" id="codGoPayCancel2" onclick="$(&#39;#subscribediv2&#39;).hide();" title="关闭"></div>
            </div>
                <div class="wx_confirm_bd">
                    <div class="wx_confirm_cont">
                        <div class="confirm_order">
                            <p>
                            	<span>亲，关注公众平台后才可以参加活动喔。</span>
                            </p>
                        </div>
                    </div>
						<div class="wx_confirm_btns">
	                        <button type="button" id="codGoPay" onclick="subscribe()">确认</button>
	                        <button type="cancel" id="codGoPayCancel" onclick="$(&#39;#subscribediv2&#39;).hide();return false;"> 取消</button> 
	                    </div>	     
                    </div>
        </div>
    </div>
</div>
</body></html>