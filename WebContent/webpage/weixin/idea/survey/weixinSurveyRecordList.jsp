<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinSurveyRecordList" checkbox="true" fitColumns="false" title="微调研回复记录" actionUrl="weixinSurveyController.do?recorddatagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="false"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="调研用户"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="调研问卷"  field="mainid" query="true" dictionary="weixin_survey_main,id,survey_title,accountid='${sessionScope.WEIXIN_ACCOUNT.id}'" hidden="true"  queryMode="single"  width="220"></t:dgCol>
   <t:dgCol title="调研题目"  field="surveyid" query="true" dictionary="weixin_survey,id,survey_title,accountid='${sessionScope.WEIXIN_ACCOUNT.id}'" hidden="true"  queryMode="single"  width="220"></t:dgCol>
   <t:dgCol title="调研答复"  field="answer" query="true" hidden="true"  queryMode="single"  width="200" ></t:dgCol>
   <t:dgCol title="调研日期"  field="createDate" query="true"  formatter="yyyy-MM-dd hh:mm:ss"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/weixin/idea/survey/weixinSurveyList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 });
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'weixinSurveyController.do?upload', "weixinSurveyList");
}

//导出
function ExportXls() {
	JeecgExcelExport("weixinSurveyRecordController.do?exportXls","weixinSurveyRecordList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("weixinSurveyController.do?exportXlsByT","weixinSurveyList");
}
 </script>