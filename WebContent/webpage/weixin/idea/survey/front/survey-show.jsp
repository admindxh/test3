<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0113)http://demo.pigcms.cn/index.php?g=Wap&m=Research&a=index&reid=3&token=yicms&wecha_id=oLA6VjvtaKhnWKq1G0S8gxil7nbU -->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no"><title>微调研</title>
<script type="text/javascript" src="plug-in/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="webpage/weixin/idea/survey/js/alert.js"></script>
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
<script type="text/javascript">
alert("调研已完成，谢谢您的参与。");
</script>
</head>
<body>
<div class="wrapper">
	<img class="bg" src="webpage/weixin/idea/survey/images/bg.jpg">
	<div style="height: 25px;"></div>
	<div class="content-w1">
		<div class="content-w2">
			<div class="content">
				<div class="title">${weixinSurveyMain.surveyTitle}</div>
					<img class="connect" src="webpage/weixin/idea/survey/images/connect.png">
					<div class="desc-cont">${weixinSurveyMain.surveyDescription}</div>
						<a class="next-btn" href="weixinSurveyController.do?goSurveyResult&id=${weixinSurveyMain.id}" style="text-decoration:none;">查看我的答案</a>
						<!-- <a class="next-btn" href="#" style="text-decoration:none;">查看获奖情况</a> -->
			</div>
		</div>
	</div>
</div>
</body>
</html>