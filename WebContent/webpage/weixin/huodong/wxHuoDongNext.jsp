<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="/context/mytags.jsp"%>
<!DOCTYPE html />
<html>
<head>
    <meta charset="utf-8"/>
    <title>填写奖品领取信息</title>
    <meta name="viewport" content="width=320.1, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
     <script type="text/javascript" src="plug-in/weixin/votepk/js/jquery-1.8.0.min.js"></script>
	<link rel="stylesheet" href="plug-in/weixin/votepk/css/base.css">
	<link rel="stylesheet" href="plug-in/weixin/votepk/css/login.css">
	 
	<script type="text/javascript">
		function dosubmit(){
			if(valdateForm()){
				var formObj = document.getElementById("form1");
				<c:choose>  
				   <c:when test="${wxZhongjiangEntity.jpLevel gt 0}">
				   		formObj.action="wxZhongjiangController.do?saveAndUpload";
				   </c:when>  
				   <c:otherwise>  
				   		formObj.action="wxZhongjiangController.do?save";
				   </c:otherwise>  
				</c:choose>  
				formObj.submit();
			}
		}
		function valdateForm(){
			var userAnme = $("#userAnme").val();
			
			var userTelphone = $("#userTelphone").val();
			
			var userAddress = $("#userAddress").val();
			
			var content = $("#content").val();
			
			
			 if(jQuery.trim(userAnme)==""){
				 alert("收件人不能为空.");
				 return false;
			}
			if(jQuery.trim(userTelphone)==""){
			     alert("联系电话不能为空.");
				 return false;
			}
			if(jQuery.trim(userAddress)==""){
			     alert("收件地址不能为空.");
				 return false;
			}
			if(jQuery.trim(content)==""){
			     alert("奖品名称不能为空.");
				 return false;
			}
			<c:if test="${wxZhongjiangEntity.jpLevel gt 0}">
				if(jQuery.trim($("#fileA").val())==""){
				    alert("请上传身份证正面.");
					 return false;
				}
				if(jQuery.trim($("#fileB").val())==""){
				     alert("请上传身份证背面.");
					 return false;
				}
			</c:if>
			return true;
		}
	</script>
</head>
<body>
<form action="wxZhongjiangController.do?save" id="form1"  commandName="wxZhongjiangEntity" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="${wxZhongjiangEntity.id}"/>
	<header>
		<div class="logo">
			<a class="history_back" href="#"><img height="40" src="http://cdn1.yaochufa.com/images/mobile/back.png" alt="返回"></a>
		</div>
		<span class="main_title">填写奖品领取信息</span>
	</header>
	<div class="wrapper">
		<div class="content">
            <div class="login_body">
                <ul class="login_inputs">
                   <li class="input"><span class="label">收件人：</span><input type="text" ltype="userAnme" id="userAnme" name="userAnme" placeholder="输入收件人" /></li>
                   <li class="input"><span class="label">联系电话：</span><input type="tel" ltype="phone" id="userTelphone" name="userTelphone"  placeholder="输入联系电话" /><span class="icon_close">&times;</span></li>
				   <li class="input"><span class="label">收件地址：</span><input type="text" name="userAddress" id="userAddress" ltype="phone" placeholder="输入收件地址" /><span class="icon_close">&times;</span></li>
				    <li class="input"><span class="label">奖品名称：</span><input type="text" name="content" id="content" ltype="content" placeholder="输入奖品名称" /><span class="icon_close">&times;</span></li>
				   <c:if test="${wxZhongjiangEntity.jpLevel gt 0}">
	                  <li class="input"><span class="label">上传身份证正面：</span><input type="file" id="fileA" name="file"/></li>
	                  <li class="input"><span class="label">上传身份证背面：</span><input type="file" id="fileB" name="file"/></li>
                  </c:if>
                </ul>
                <a class="btn_order orange" href="javascript:void(0)" onclick="dosubmit()">确认提交</a>
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
	</form>
</body>

</html>
