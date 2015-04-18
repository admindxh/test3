<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinSurveyList" checkbox="true" fitColumns="false" title="微投票" actionUrl="weixinSurveyController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改人名称"  field="updateName"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="修改日期"  field="updateDate"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="调研问卷"  field="mainId" query="true" dictionary="weixin_survey_main,id,survey_title,accountid='${sessionScope.WEIXIN_ACCOUNT.id}'" hidden="true"  queryMode="single"  width="300"></t:dgCol>
   <t:dgCol title="调研题目"  field="surveyTitle"  hidden="true"  queryMode="single"  width="300"></t:dgCol>
   <t:dgCol title="调研类型"  dictionary="surveytype"   field="surveyType"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="参与调研人数"  field="surveyCount"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="调研描述"  field="surveyDescription"  hidden="true"  queryMode="single"  width="120" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="weixinSurveyController.do?doDel&id={id}"  />
   <t:dgToolBar title="录入" icon="icon-add" url="weixinSurveyController.do?goAdd" funname="add" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="weixinSurveyController.do?goUpdate" funname="update" width="100%" height="100%"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="weixinSurveyController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="weixinSurveyController.do?goUpdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/idea/survey/weixinSurveyList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
 //发布
 function begin(){
	  var ids = [];
		var rows = $('#weixinSurveyList').datagrid('getSelections');
		for ( var i = 0; i < rows.length; i++) {
			ids.push(rows[i].id);
		}
		    var url = "weixinSurveyController.do?deploy&statement=1";
		    if (rows.length > 0) {
		    	$.ajax({
		    		url:url,
		    		type:"GET",
		    		dataType:"JSON",
					data : {
						ids : ids.join(',')
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
	var ids = [];
		var rows = $('#weixinSurveyList').datagrid('getSelections');
		for ( var i = 0; i < rows.length; i++) {
			ids.push(rows[i].id);
		}
		    var url = "weixinSurveyController.do?deploy&statement=2";
		    if (rows.length > 0) {
		    	$.ajax({
		    		url:url,
		    		type:"GET",
		    		dataType:"JSON",
					data : {
						ids : ids.join(',')
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
	openuploadwin('Excel导入', 'weixinSurveyController.do?upload', "weixinSurveyList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinSurveyController.do?exportXls","weixinSurveyList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinSurveyController.do?exportXlsByT","weixinSurveyList");
}
 </script>