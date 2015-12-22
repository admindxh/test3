<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <link type="text/css" rel="stylesheet" href="./plug-in/weixin/css/style.css">
     <div class="funcList" id="func" >
            <ul class="list" style="overflow: scroll;height: 600px;">
            	<a href="cmsController.do?goPage&page=index&accountid=${sessionScope.WEIXIN_ACCOUNT.id}" target="_blank">
	                <li>
	                    <img src="./plug-in/weixin/img/func01.jpg" width="104" height="107">
	                    <h3>微网站 </h3>
	                    <p>5分钟轻松建站<br>打造酷炫微官网</p>
	                </li>
                </a>
                <a href="weixinVipController.do?goPage&page=index&openid=1234&accountid=402881e8461795c201461795c2e90000" target="_blank">
                <li>
                    <img src="./plug-in/weixin/img/func02.jpg" width="105" height="107">
                    <h3>微信会员卡</h3>
                    <p>方便携带 永不挂失<br>消费积分 一卡配备</p>
                </li>
                </a>
                <a href="weixinShopController.do?goPage&page=index&openid=1234&accountid=${sessionScope.WEIXIN_ACCOUNT.id}" target="_blank">
	                <li>
	                    <img src="./plug-in/weixin/img/func03.jpg" width="107" height="107">
	                    <h3>微商城</h3>
	                    <p>小微信也有大商城<br>电商轻松就能走入微信</p>
	                </li>
                </a>
                <a href="cmsController.do?goPage&page=photoAlbum&accountid=${sessionScope.WEIXIN_ACCOUNT.id}" target="_blank">
                	<li>
                    	<img src="./plug-in/weixin/img/func04.jpg" width="106" height="107">
                    	<h3>微相册</h3>
                    	<p>各行各业<br> 照片展现轻松搞定</p>
                	</li>
                </a>
                
               
                
                <li>
                    <a href="zpController.do?goZhuanpan&accountid=${sessionScope.WEIXIN_ACCOUNT.id}&openid=oGCDRjvr9L1NoqxbyXLReCVYVyV0" target="_blank">
                    <img  src="./plug-in/weixin/img/func08.jpg">
                    <h3>大转盘</h3>
                    <p>快乐大转盘<br>幸运落谁家</p>
                    </a>
                </li>
                
                <li>
                	<a href="zpController.do?goGglNew&accountid=${sessionScope.WEIXIN_ACCOUNT.id}&openid=oGCDRjvr9L1NoqxbyXLReCVYVyV0" target="_blank">
                    <img src="./plug-in/weixin/img/func10.jpg">
                    <h3>刮刮乐</h3>
                    <p>趣味游戏<br>吸引用户参与 沉淀用户</p>
                    </a>
                </li>
                <li>
				<a href="weixinVoteController.do?goVote&accountid=${sessionScope.WEIXIN_ACCOUNT.id}&openid=oGCDRjvr9L1NoqxbyXLReCVYVyV0" target="_blank">
                    <img src="./plug-in/weixin/img/func11.jpg">
                    <h3>微投票</h3>
                    <p>商家设置好题目，<br> 用户通过微信问答</p>
                 </a>
                </li>
                <li>
				<a href="weixinSurveyController.do?goSurvey&accountid=${sessionScope.WEIXIN_ACCOUNT.id}&openid=oGCDRjvr9L1NoqxbyXLReCVYVyV0" target="_blank">
                    <img src="./plug-in/weixin/img/func11.jpg">
                    <h3>微调研</h3>
                    <p>商家设置好题目，<br> 用户通过微信问答</p>
                 </a>
                </li>
	                
	            <a href="cmsController.do?goPage&page=leaveMsg&accountid=${sessionScope.WEIXIN_ACCOUNT.id}" target="_blank">
               		<li>
                    	<img src="./plug-in/weixin/img/func13.jpg">
                    	<h3>微留言</h3>
                    	<p>各种预约留言 一键即可<br>短信邮件会立即通知商户 </p>
                	</li>
                </a>
               
               	<a href="bbsController.do?goPage&page=index&accountid=${sessionScope.WEIXIN_ACCOUNT.id}" target="_blank">
                	<li>
                    	<img src="./plug-in/weixin/img/func15.jpg">
                    	<h3>微社区</h3>
                    	<p>提供用户社区交流</p>
                	</li>
                </a>
            </ul>
</div>
