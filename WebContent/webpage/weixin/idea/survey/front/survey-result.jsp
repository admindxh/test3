<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<!-- saved from url=(0113)http://demo.pigcms.cn/index.php?g=Wap&m=Research&a=index&reid=3&token=yicms&wecha_id=oLA6VjvtaKhnWKq1G0S8gxil7nbU -->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no"><title>微调研</title>
<link rel="stylesheet" type="text/css" href="webpage/weixin/idea/survey/css/survey2.css" media="all"><style>
.wrapper{
text-align: center;
}
.content-w1{
background-color: #e4e4e4;
border: 1px solid #939393;
box-shadow: 0 3px 10px rgba(0, 0, 0, 0.4);
}
.content-w2,.content{
border-bottom: 1px solid #939393;
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
}
.content-w1,.content-w2{
display: inline-block;
padding: 0px 0px 3px;
border-radius: 6px;
}
.content{
width: 266px;
margin: 0px auto;
padding: 0px 0px 20px;
border-radius: 6px;
}
.title{
font-size: 20px;
padding: 10px 18px 0px;
}
.connect{
width: 100%;
display: block;
margin: 10px 0px;
}
.desc-cont{
text-align: left;
padding: 0 18px;
}
.next-btn{
color: #FFF;
width: 120px;
display: block;
padding: 8px 22px;
font-size: 16px;
margin: 20px auto 0px;
}
.page-url{
margin-top: 30px;
}
</style>
</head>
<body>
	<div class="title" align="center">调研问卷：${weixinSurveyMain.surveyTitle}<br>调研结果</div>
<div class="wrapper">
	<img class="bg" src="webpage/weixin/idea/survey/images/bg.jpg">
	<div style="height: 25px;"></div>
	<c:forEach  items="${resultlist}" var="v"  varStatus="s" >
	<div class="content-w1">
		<div class="content-w2">
			<div class="content">
				<div class="title">${s.index+1}. ${v.weixinSurvey.surveyTitle}</div>
					<img class="connect" src="webpage/weixin/idea/survey/images/connect.png">
					<div class="desc-cont"><c:forEach items="${v.recordlist }" var="rlst">回复：${rlst.answer}</c:forEach></div>
						<!-- <a class="next-btn" href="#" style="text-decoration:none;">查看获奖情况</a> -->
			</div>
		</div>
	</div><br>
	</c:forEach>
</div>
<div id="hiddenarea"><input type="hidden" id="accountid" name="accountid" value="${accountid }" /><input type="hidden" id="openid" name="openid" value="${openid }" /></div>
	<div id="footer">捷微：快速开发平台</div>
</body>
</html>
