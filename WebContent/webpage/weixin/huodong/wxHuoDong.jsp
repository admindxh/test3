<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="/context/mytags.jsp"%>
<!DOCTYPE html />
<html>
<head>
    <meta charset="utf-8"/>
    <title>活动兑奖信息</title>
    <meta name="viewport" content="width=320.1, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
     <script type="text/javascript" src="plug-in/weixin/votepk/js/jquery-1.8.0.min.js"></script>
	<link rel="stylesheet" href="plug-in/weixin/votepk/css/base.css">
	<link rel="stylesheet" href="plug-in/weixin/votepk/css/login.css">
	
	<script type="text/javascript">
		function doChange(){
			var val = $("#platformid").val();
			if("wx"==val){
				jQuery("#userName").val("");
				jQuery("#jpCode").val("");
			 	jQuery("#userName").attr("placeholder","输入微信昵称");
				  jQuery("#prizeSpan").css("display","none");
				 jQuery("#userPlatformSpan").text("微信昵称:");
			}else{
				  jQuery("#userName").val("");
				 jQuery("#userName").attr("placeholder","输入平台账号");
			      jQuery("#prizeSpan").css("display","");
			     jQuery("#userPlatformSpan").text("用户平台账号:");
			}
		}
		
		$(function(){
		
			
			  $("#platformid").find("option[value='wb']").attr("selected",true);
			
		    $('#submitid').click(function(){
		    
		    	var val = $("#platformid").val();
				if("wx"!=val){
					 var userName = $("#userName").val();
					 if(jQuery.trim(userName)==""){
					 	alert("用户平台账号不能为空.");
					 	return;
					 }
					 if(jQuery.trim($("#jpCode").val())==""){
					 	alert("中奖号码不能为空.");
					 	return;
					 }
				}else{
				
					var userName = $("#userName").val();
					 if(jQuery.trim(userName)==""){
					 	alert("微信昵称不能为空.");
					 	return;
					 }
				}
		    	
		    	 
		         $.ajax({
		             type: "GET",
		             url: "wxZhongjiangController.do?validate",
		             data: {jpCode:$("#jpCode").val(), hdid:$("#hdName").val(),platform:$("#platformid").val(),userName:$("#userName").val()},
		             dataType: "json",
		             success: function(data){
		           		var jsonData = eval(data);
						//alert(jsonData.success);
						if(!jsonData.success){
							alert(jsonData.msg);
						}else{
							window.location.href="wxZhongjiangController.do?next&id="+jsonData.obj;
						}
		              }
		         });
		    });
		})
	</script>
</head>
<body>
	<header>
		<div class="logo">
			<a class="history_back" href="#"><img height="40" src="http://cdn1.yaochufa.com/images/mobile/back.png" alt="返回"></a>
		</div>
		<span class="main_title">活动兑奖信息</span>
	</header>
	<div class="wrapper">
		<div class="content">
            <div class="login_body">
                <ul class="login_inputs">
                   <li class="input"><span class="label">来自平台：</span><select id="platformid" name="platformName"  STYLE="width: 150px" onchange="doChange()"><option value="wb">微博</option><option value="tb">贴吧</option><option value="kj">QQ空间</option><option value="wx">微信</option></select></li>
                   <li class="input"><span class="label" id="userPlatformSpan">用户平台账号：</span><input type="text" ltype="userName" id="userName"  placeholder="输入平台账号" /><span class="icon_close">&times;</span></li>
				   <span id="prizeSpan"><li class="input"><span class="label">中奖号码：</span><input type="tel" name="jpCode" ltype="phone" id="jpCode" placeholder="输入中奖号码" /><span class="icon_close">&times;</span></li></span>
                  <li class="input"><span class="label">活动名称：</span>
                  
                  <select id="hdName" name="hdName" STYLE="width: 150px">
                    <c:forEach var='houdong' items='${wxhuodongList}'>
                  		<option value="${houdong.id}">${houdong.hdName}</option>
                    </c:forEach>
                  </select>
                  
                  </li>
                   
                </ul>
                <a class="btn_order orange" href="#" id="submitid">确认提交</a>
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
