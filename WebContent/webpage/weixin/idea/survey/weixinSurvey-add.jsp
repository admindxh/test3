<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>微投票</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
 <script type="text/javascript">
  //初始化下标
	function resetTrNum(tableId) {
		$tbody = $("#"+tableId+"");
		$tbody.find('>tr').each(function(i){
			$(':input, select', this).each(function(){
				var $this = $(this), name = $this.attr('name'), val = $this.val();
				if(name!=null){
					if (name.indexOf("#index#") >= 0){
						$this.attr("name",name.replace('#index#',i));
					}else{
						var s = name.indexOf("[");
						var e = name.indexOf("]");
						var new_name = name.substring(s+1,e);
						$this.attr("name",name.replace(new_name,i));
					}
				}
			});
		});
	}
	$(document).ready(function(){
		//初始化时判断当前题目类型。
			var ctype="${weixinSurveyPage.surveyType}";
			if(ctype==1){
	  			$("#surveyoptiondiv").show();
	  		}
			if(ctype==2){
				$("#surveyoptiondiv").show();
			}
			if(ctype==3){
				$("#surveyoptiondiv").hide();
			}
	  $("#surveyType").change(function(){
		  var type=$("#surveyType").val();
	  		if(type==1){
	  			$("#surveyoptiondiv").show();
	  		}
			if(type==2){
				$("#surveyoptiondiv").show();
			}
			if(type==3){
				$("#surveyoptiondiv").hide();
				$("#optiontemplate").removeAttr("nullmsg");
			}
	  });
	});
 </script>
 </head>
 <body>
  <t:formvalid  formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinSurveyController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinSurveyPage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinSurveyPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinSurveyPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinSurveyPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinSurveyPage.updateDate }">
					<input id="surveyCount" name="surveyCount" type="hidden" value="${weixinSurveyPage.surveyCount }">
		<table  cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							调研问卷:
						</label>
					</td>
					<td class="value">
						<select name="mainId" id="mainId">
							<c:forEach items="${mainlist}" var="main">
          						<option value="${main.id}"  <c:if test="${scene.id==sceneId}">selected="selected" </c:if>>${main.surveyTitle}</option>
          					</c:forEach>
          				</select>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">调研问卷</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							调研题目:
						</label>
					</td>
					<td class="value">
					     	 <textarea id="surveyTitle" rows="1" cols="100" name="surveyTitle"  >${weixinSurveyPage.surveyTitle}</textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">调研题目</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							调研描述:
						</label>
					</td>
					<td class="value">
					     	 <textarea rows="5" cols="100" id="surveyDescription" name="surveyDescription">${weixinSurveyPage.surveyDescription}</textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">调研描述</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							题目类型:
						</label>
					</td>
					<td class="value">
					     	 <t:dictSelect field="surveyType" id="surveyType" type="list" 
									typeGroupCode="surveytype" defaultVal="${weixinSurveyPage.surveyType}" hasLabel="false"  title="题目类型"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">题目类型</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							排序:
						</label>
					</td>
					<td class="value">
					     	 <input  id="seq" value="${weixinSurveyPage.seq}" name="seq" datatype="n"/>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">排序</label>
						</td>
				</tr>
				
			</table>
<div id="surveyoptiondiv">
<div style="width: auto; height: 200px;"><%-- 增加一个div，用于调节页面大小，否则默认太小 --%>
	<div style="width: 690px; height: 1px;"></div>
	<t:tabs id="tt" iframe="false" tabPosition="top" fit="false">
		<t:tab href="weixinSurveyController.do?goAddSurveyOption&id=${weixinSurveyPage.id}" icon="icon-search" title="投票选项明细" id="surveyoption"></t:tab>
	</t:tabs>
</div>
	</t:formvalid>
	</div>
<table style="display: none">
	<tbody id="add_weixinSurveyOption_table_template">
		<tr>
			<td align="center"><input style="width: 20px;" type="checkbox" name="ck" /></td>
			<td align="left"><textarea  rows="1" cols="100" id="optiontemplate"  name="weixinSurveyOptions[#index#].surveyOptionTitle" ></textarea></td>
		</tr>
	</tbody>
</table>

 </body>
  <script src = "webpage/weixin/idea/survey/weixinSurvey.js"></script>		