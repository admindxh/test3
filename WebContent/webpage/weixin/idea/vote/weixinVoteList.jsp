<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinVoteList" checkbox="true" fitColumns="false" title="微投票" actionUrl="weixinVoteController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="投票标题"  field="voteTitle"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="投票人数"  field="voteCount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="投票描述"  field="voteDescription"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="状态"  field="statement" dictionary="votestat"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="积分"  field="integral"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinVoteController.do?doDel&id={id}"  />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinVoteController.do?goAdd" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinVoteController.do?goUpdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinVoteController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinVoteController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="统计" icon="icon-search" url="" funname="goVoteCalculate" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="发布" icon="icon-ok" url="weixinVoteController.do?goUpdate" funname="begin"></t:dgToolBar>
   <t:dgToolBar title="结束" icon="icon-cancel" url="weixinVoteController.do?goUpdate" funname="over"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/idea/vote/weixinVoteList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 function goVoteCalculate(){
	 var row = $('#weixinVoteList').datagrid('getSelected');
	 var url = "weixinVoteController.do?goVoteCalculate";
	  if(row){
		  url = url+"&id="+row.id;
		  location.href=url;
		  //add("投票统计",url,"weixinVoteList","100%","100%");
	  }else{
		  tip("请选择一个投票活动进行统计。");
	  }
 }
 
 //发布
 function begin(){
		var row = $('#weixinVoteList').datagrid('getSelected');
		if(row.statement!=1){
		    var url = "weixinVoteController.do?deploy&statement=1";
		    if(row){
		    	url += "&id="+row.id;
		    	$.ajax({
		    		url:url,
		    		type:"GET",
		    		dataType:"JSON",
		    		success:function(data){
		    			if(data.success){
		    				tip(data.msg);
		    				$('#weixinVoteList').datagrid('reload'); 
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
		var row = $('#weixinVoteList').datagrid('getSelected');
	    var url = "weixinVoteController.do?deploy&statement=2";
	    if(row){
	    	url += "&id="+row.id;
	    	$.ajax({
	    		url:url,
	    		type:"GET",
	    		dataType:"JSON",
	    		success:function(data){
	    			if(data.success){
	    				tip(data.msg);
	    				$('#weixinVoteList').datagrid('reload'); 
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
	openuploadwin('Excel导入', 'weixinVoteController.do?upload', "weixinVoteList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinVoteController.do?exportXls","weixinVoteList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinVoteController.do?exportXlsByT","weixinVoteList");
}
 </script>