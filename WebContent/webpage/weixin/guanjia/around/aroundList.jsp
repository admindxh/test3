<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="aroundList" title="周边管理" actionUrl="aroundController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="关键字" field="keyword" width="100"></t:dgCol>
   <t:dgCol title="城市名称" field="area" width="100"></t:dgCol>
   <t:dgCol title="搜索半径" field="radius" width="100"></t:dgCol>
    <t:dgCol title="启用" field="iswork" width="100" replace="是_1,否_0"></t:dgCol>
   <t:dgCol title="时间" field="addtime" formatter="yyyy-MM-dd hh:mm:ss" width="100"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="aroundController.do?del&id={id}" />
   <t:dgFunOpt funname="updateIsWork(id)" title="启用"></t:dgFunOpt>
   <t:dgToolBar title="录入" icon="icon-add" url="aroundController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="aroundController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="aroundController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
  <script type="text/javascript">
  	function updateIsWork(id){
  		var tempUrl = "aroundController.do?updateIsWork&id="+id;
  		$.ajax({
  			url:tempUrl,
  			dataType:"JSON",
  			type:"GET",
  			success:function(data){
  				if(data.success){
  					tip(data.msg);
  					$("#aroundList").datagrid("reload");
  				}
  			}
  		});
  	}
  </script>
 </div>