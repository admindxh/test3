<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinVotePKConfigList" checkbox="true" fitColumns="false" title="微投票PK活动" actionUrl="weixinVotePKConfigController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="参数名称"  field="configName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="参数值"  field="configValue"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinVotePKConfigController.do?doDel&id={id}"  />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinVotePKConfigController.do?goAdd" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinVotePKConfigController.do?goUpdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinVotePKConfigController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinVotePKConfigController.do?goUpdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/idea/vote/weixinVotePKConfigList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 function goVoteCalculate(){
	 var row = $('#weixinVotePKConfigList').datagrid('getSelected');
	 var url = "weixinVotePKConfigController.do?goVoteCalculate";
	  if(row){
		  url = url+"&id="+row.id;
		  location.href=url;
		  //add("投票统计",url,"weixinVotePKConfigList","100%","100%");
	  }else{
		  tip("请选择一个投票活动进行统计。");
	  }
 }
 
 //发布
 function begin(){
		var row = $('#weixinVotePKConfigList').datagrid('getSelected');
		if(row.statement!=1){
		    var url = "weixinVotePKConfigController.do?deploy&statement=1";
		    if(row){
		    	url += "&id="+row.id;
		    	$.ajax({
		    		url:url,
		    		type:"GET",
		    		dataType:"JSON",
		    		success:function(data){
		    			if(data.success){
		    				tip(data.msg);
		    				$('#weixinVotePKConfigList').datagrid('reload'); 
		    			}
		    		}
		    	});
		    }else{
		    	tip("请选择一条数据进行操作。");
		    }
	    }else{
	    	tip("该投票已经发起。");
	    }
 }
 
 function over(){
	 if(row.statement==1){
		var row = $('#weixinVotePKConfigList').datagrid('getSelected');
	    var url = "weixinVotePKConfigController.do?deploy&statement=2";
	    if(row){
	    	url += "&id="+row.id;
	    	$.ajax({
	    		url:url,
	    		type:"GET",
	    		dataType:"JSON",
	    		success:function(data){
	    			if(data.success){
	    				tip(data.msg);
	    				$('#weixinVotePKConfigList').datagrid('reload'); 
	    			}
	    		}
	    	});
	    }else{
	    	tip("请选择一条数据进行操作。");
	    }
	 }else{
		 tip("该投票未发起。");
	 }
 }
 
 
 //结束
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinVotePKConfigController.do?upload', "weixinVotePKConfigList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinVotePKConfigController.do?exportXls","weixinVotePKConfigList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinVotePKConfigController.do?exportXlsByT","weixinVotePKConfigList");
}
 </script>