<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
 <t:datagrid name="weixinQrcodeList" checkbox="true" fitColumns="false" title="二维码信息" actionUrl="weixinQrcodeController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="二维码类型"  field="actionName" dictionary="qrcodetype" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="二维码详细信息"  field="actionInfo"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="二维码"  field="imageurl" image="true" imageSize="100,100"  hidden="true"  queryMode="single"  ></t:dgCol>
   <t:dgCol title="场景键"  field="sceneId" dictionary="weixin_qrcode_scene,scenekey,scenevalue,accountid='${sessionScope.WEIXIN_ACCOUNT.id}'"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="有效时间"  field="expireSeconds"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="公众帐号ID"  field="accountid"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinQrcodeController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinQrcodeController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinQrcodeController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinQrcodeController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="获取二维码" icon="icon-qrcode" url="weixinQrcodeController.do?createQrcode" funname="saveqrcode"></t:dgToolBar>
   <t:dgToolBar title="下载二维码" icon="icon-qrcode" url="" funname="downqrcode" ></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinQrcodeController.do?goUpdate" funname="detail"></t:dgToolBar>
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