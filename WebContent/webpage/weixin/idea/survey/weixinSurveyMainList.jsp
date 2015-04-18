<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinSurveyList" checkbox="true" fitColumns="false" title="微投票" actionUrl="weixinSurveyMainController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="调研题目"  field="surveyTitle"  hidden="true"  queryMode="single"  width="300"></t:dgCol>
   <t:dgCol title="参与调研人数"  field="surveyCount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="调研描述"  field="surveyDescription"  hidden="true"  queryMode="single"  width="120" ></t:dgCol>
   <t:dgCol title="状态"  field="statement" dictionary="votestat"   hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="积分"  field="integral"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinSurveyMainController.do?doDel&id={id}"  />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinSurveyMainController.do?goAdd" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinSurveyMainController.do?goUpdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinSurveyMainController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="预览" icon="icon-search" url="weixinSurveyMainController.do?goReview" funname="review"></t:dgToolBar>
   <t:dgToolBar title="统计" icon="icon-search" url="" funname="calculate"></t:dgToolBar>
   <t:dgToolBar title="发布" icon="icon-ok" url="weixinSurveyMainController.do?goUpdate" funname="begin"></t:dgToolBar>
   <t:dgToolBar title="结束" icon="icon-cancel" url="weixinSurveyMainController.do?goUpdate" funname="over"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/idea/survey/weixinSurveyList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 function calculate(){
	 var row = $('#weixinSurveyList').datagrid('getSelected');
	 var url = "weixinSurveyMainController.do?goSurveyMainCalculate";
	  if(row){
		  url = url+"&id="+row.id;
		  window.open(url);
		  //add("投票统计",url,"weixinVoteList","100%","100%");
	  }else{
		  tip("请选择一个问卷进行统计。");
	  }
 }
 function review(){
	 var row = $('#weixinSurveyList').datagrid('getSelected');
	 var url = "weixinSurveyMainController.do?goReview";
	  if(row){
		  url = url+"&id="+row.id;
		  window.open(url);
		  //add("投票统计",url,"weixinVoteList","100%","100%");
	  }else{
		  tip("请选择一个问卷进行预览。");
	  }
 }
 //发布
 function begin(){
	  var url = "weixinSurveyMainController.do?deploy&statement=1";
		var row = $('#weixinSurveyList').datagrid('getSelected');
		    if (row) {
		    	$.ajax({
		    		url:url,
		    		type:"GET",
		    		dataType:"JSON",
					data : {
						id : row.id 
					},
		    		success:function(data){
		    			if(data.success){
		    				tip(data.msg);
		    				$('#weixinSurveyList').datagrid('reload'); 
		    			}
		    		}
		    	});
		    }else{
		    	tip("请至少选择一条数据进行操作。");
		    }
 }
 
 function over(){
		var row = $('#weixinSurveyList').datagrid('getSelected');
		    var url = "weixinSurveyMainController.do?deploy&statement=2";
		    if (row) {
		    	$.ajax({
		    		url:url,
		    		type:"GET",
		    		dataType:"JSON",
					data : {
						id: row.id
					},
		    		success:function(data){
		    			if(data.success){
		    				tip(data.msg);
		    				$('#weixinSurveyList').datagrid('reload'); 
		    			}
		    		}
		    	});
		    }else{
		    	tip("请至少选择一条数据进行操作。");
		    }
 }
 
 
 //结束
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinSurveyMainController.do?upload', "weixinSurveyList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinSurveyMainController.do?exportXls","weixinSurveyList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinSurveyMainController.do?exportXlsByT","weixinSurveyList");
}
 </script>