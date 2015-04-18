<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>微信墙</title>
<link href="template/wall/default/css/fou.css" type="text/css" rel="stylesheet"/>
<link href="template/wall/default/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<script src="template/vip/default/js/jquery-1.9.1.min.js" type="text/javascript">
</script><script src="template/vip/default/js/jquery.lazyload.js" type="text/javascript"></script>
<script src="template/wall/default/js/bootstrap.min.js"></script>
</head>
<body>
<#if wall??>
<div class="navbar navbar-inverse navbar-fixed-top e_top">
  <div class="container " >
    <div class="e_t_left">
    <img src="${wall.qrCode}" alt=""/>
	</div>
    <div class="e_t_right">
     扫描二维码.关注微信公众账号,即可上墙</div>
   </div>
</div>
<div class="e_main w100">
<div class="e_top ">
</div>
<div class="e_cont">
<ul>
<#if walllist??>
<#list walllist as wallmessage>
<li>
<div class="e_left">
    <img  src="${wallmessage.headimgurl}"  />
</div>
<div class="e_right">
    ${wallmessage.nickname}<br>
    ${wallmessage.content}
</div>
    <div class="cb"></div>
</li>
</#list>
</#if>
</ul>
<div class="navbar navbar-inverse navbar-fixed-bottom e_top2">
  <div class="container">
    <div class="navbar-header">
    	<table cellpadding="0" cellspacing="0" width="100%" height="100%" border="0">
        	<tr>
                <td  width="100%">
                	<div class="input-group">
  						<button style="margin-left:20px;" id="r_load" name="r_load"  type="button" class="btn btn-info">刷新</button>
  							<input style="margin-top:15px;" type="text" class="form-control">
 						<button type="button" id="w_submit" name="w_submit" class="btn btn-success">提交</button>
					</div>
                </td>
                
            </tr>
        </table>
    </div>
   </div>
</div>
</div>
</div>
</#if>
</body>
</html>
