<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
   <t:datagrid name="weixinQrcodeScanRecordList" checkbox="true" fitColumns="false" title="二维码扫描记录" actionUrl="weixinQrcodeScanRecordController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="二维码场景"  field="scenevalue" dictionary="qrcodetype" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="二维码场景ID"  field="scenekey"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="二维码"  field="imageurl" image="true" imageSize="100,100"  hidden="true"  queryMode="single"  ></t:dgCol>
   <t:dgCol title="扫描用户OPENID"  field="openid"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="扫描用户昵称"  field="nickname"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="扫描时间"  field="scantime"  formatter="yyyy-MM-dd hh:mm:ss" hidden="true"  queryMode="single"  width="120"></t:dgCol>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/idea/qrcode/weixinQrcodeList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinQrcodeController.do?upload', "weixinQrcodeList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinQrcodeController.do?exportXls","weixinQrcodeList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinQrcodeController.do?exportXlsByT","weixinQrcodeList");
}

function downqrcode(id){
	var row = $('#weixinQrcodeList').datagrid('getSelected');
	if(!row){
		alert("请选择二维码。");
		return ;
	}
	JeecgExcelExport("weixinQrcodeController.do?downqrcode&id="+row.id,"weixinQrcodeList");
}

function saveqrcode(id){
	var row = $('#weixinQrcodeList').datagrid('getSelected');
    var url = "weixinQrcodeController.do?createQrcode";
    if(row){
    	url += "&id="+row.id;
    	$.ajax({
    		url:url,
    		type:"GET",
    		dataType:"JSON",
    		success:function(data){
    			if(data.success){
    				alert(data.msg);
    				    var url = "weixinQrcodeController.do?weixinQrcode";
    				  	location.href=url; 
    			}
    		}
    	});
    }else{
    	tip("请选择一个二维码进行获取。");
    }

}
 </script>