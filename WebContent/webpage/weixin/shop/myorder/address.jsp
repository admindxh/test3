<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/context/mytags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="webpage/weixin/shop/myorder/js/area.js"></script>
<script type="text/javascript" src="webpage/weixin/shop/myorder/js/location.js"></script>
<script type="text/javascript" src="plug-in/Validform/js/Validform_v5.3.1_min.js"></script>
<script type="text/javascript" src="plug-in/Validform/js/Validform_Datatype.js"></script>
<script type="text/javascript" src="plug-in/Validform/js/datatype.js"></script>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="plug-in/Validform/css/style.css" type="text/css" />
<link rel="stylesheet" href="plug-in/Validform/css/tablefrom.css" type="text/css" />
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/touch_index.css">
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/style.css">
    <link type="text/css" rel="stylesheet" href="template/shop/default/css/h5.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"></link>


<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>管理收货地址</title>
<script>
$(function() {
	$("#formobj").Validform({
		btnSubmit : "#btn_sub",
		btnReset : "#btn_reset",
		ajaxPost : true,
		beforeSubmit:function(curform){
			//在验证成功后，表单提交前执行的函数，curform参数是当前表单对象。
			//这里明确return false的话表单将不会提交;	
			var pv= $("#loc_province").find("option:selected").text();
			var ct =  $("#loc_city").find("option:selected").text();
			var area =  $("#loc_area").find("option:selected").text();
			$("#province").val(pv);
			$("#city").val(ct);
			$("#area").val(area);
		},
		callback : function(data) {
			if (data.success == true) {
				alert(data.msg);
				location.href="weixinShopController.do?goPage&page=addresslist&goodsparams="+'${goodsparams}';
			} 
		}
	});
});

function defaultaddress(id){
	$.ajax({
        cache: true,
        type: "POST",
        url:"weixinShopAddressController.do?doDefault",
        data:[{name:"id",value:id}],
        async: false,
        error: function(request) {
            alert("Connection error");
        },
        dataType:"json",
        success: function(data) {
            alert(data.msg);
            location.href="weixinShopDealController.do?goAddressPage";
        }
    });
}

function back(){
	location.href="weixinShopController.do?goPage&page=addresslist";
}
</script>
</head>

<body>
    <div id="scnhtm5" class="m-body" >
            <div class="menu">
                <a href="weixinShopController.do?goPage&page=index&accountid=${weixinShopContent.accountid} "><i></i>所有分类</a>
                <a href="weixinShopCartController.do?goCart&shopSymbol=shop&accountid=${weixinShopContent.accountid}"><i> </i>购物车</a>
                <a href="weixinShopDealController.do?gomyorder&shopSymbol=shop&accountid=${weixinShopContent.accountid}"><i></i>我的订单</a>
            </div>
          <div align="center" style="margin: 5px;color:red;"><h4>新增地址</h4></div>
<form role="form" id="formobj" method="post" action="weixinShopAddressController.do?doAdd">
   <div class="form-group" style="margin-left: 20px;margin-right: 20px;" >
    <div class="12">
      <select id="loc_province"   class="form-control"  name="province_value" datatype="*" errormsg="请选择省份!" ></select>
    	<input  name="province" id="province" type="hidden"/>
    </div>
  </div>
   <div class="form-group" style="margin-left: 20px;margin-right: 20px;" >
    <div class="">
      <select id="loc_city"  class="form-control"  name="city_value" datatype="*" ></select>
   	  <input  name="city" id="city" type="hidden"/>
    </div>
  </div>
   <div class="form-group" style="margin-left: 20px;margin-right: 20px;" >
    <div >
     <select id="loc_town"  class="form-control" name="area_value" datatype="*" ></select>
	<input  name="area" id="area" type="hidden"/>
    </div>
  </div>
   <div class="form-group"style="margin-left: 20px;margin-right: 20px;"  >
    <div >
    	<input id="loc_address" name="address" id="address"  class="form-control" datatype="*"  placeholder="街道地址"  />
    </div>
  </div>
  <div class="form-group" style="margin-left: 20px;margin-right: 20px;" >
    <div >
    	<input  name="postno" id="postno"  class="form-control" datatype="*"  placeholder="输入邮政编码" />
    </div>
  </div>
   <div class="form-group" style="margin-left: 20px;margin-right: 20px;" >
    <div >
      <input  name="realname" id="realname"  class="form-control" datatype="*"  placeholder="联系人"/>
    </div>
  </div>
  <div class="form-group" style="margin-left: 20px;margin-right: 20px;" >
    <div >
      <input id="loc_realname" name="tel" id="tel"  class="form-control" datatype="*"  placeholder="联系电话" />
    </div>
  </div>
   <div class="form-group" align="center" >
 	 <button type="submit" style="width:120px;" class="btn btn-danger">确定</button> <button type="button" onclick="javascript:history.go(-1)"  style="width:120px;" class="btn btn-danger">返回</button>
   </div>
</form></div>
<script type="text/javascript">
$(document).ready(function() {
	showLocation();
});
</script>
</body>
</html>
