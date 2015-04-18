<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=QhqnG4BMPOToBvyeGLvpdSNB"></script>
<title>浏览器定位</title>

</head>
<body>
<div style="position:absolute;left:50%;top:50%;width:161px;height:153px;margin-left:-80px;margin-top:-76px;"><img src="images/around/loading.gif"></div>
</body>
</html>

<script type="text/javascript">
        var latitude = "${latitude}";
        var longitude = "${longitude}";
        var radius = "${radius}";
        var query = "${query}";
        alert("...latitude.."+latitude+"...longitude..."+longitude+"...radius..."+radius+"....query...."+query);
		//周边检索
		var url = "http://api.map.baidu.com/place/search?query="+query+"&location="+latitude+","+longitude+"&radius="+radius+"&region=&output=html&src=微信应用";
		window.location.href=url;
	</script>

