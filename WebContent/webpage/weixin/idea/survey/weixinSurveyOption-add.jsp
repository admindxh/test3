<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$('#addBtn').linkbutton({   
	    iconCls: 'icon-add'  
	});  
	$('#delBtn').linkbutton({   
	    iconCls: 'icon-remove'  
	}); 
	$('#addBtn').bind('click', function(){   
 		 var tr =  $("#add_weixinSurveyOption_table_template tr").clone();
	 	 $("#add_jeecgOrderProduct_table").append(tr);
	 	 resetTrNum('add_jeecgOrderProduct_table');
    });  
	$('#delBtn').bind('click', function(){   
       $("#add_jeecgOrderProduct_table").find("input:checked").parent().parent().remove();   
        resetTrNum('add_jeecgOrderProduct_table');
    });
	$(document).ready(function(){
		$(".datagrid-toolbar").parent().css("width","auto");
		//将表格的表头固定
	    $("#jeecgOrderProduct_table").createhftable({
	    	height:'200px',
			width:'auto',
			fixFooter:false
			});
});
</script>

<div style="padding: 3px; height: 25px; width: width: 900px;" class="datagrid-toolbar"><a id="addBtn" href="#">添加</a> <a id="delBtn" href="#">删除</a></div>
<table border="0" cellpadding="2" cellspacing="0" id="jeecgOrderProduct_table">
	<tr bgcolor="#E6E6E6">
		<td align="center" bgcolor="#EEEEEE">序号</td>
		<td align="left" bgcolor="#EEEEEE">选项标题</td>
	</tr>
	<tbody id="add_jeecgOrderProduct_table">
		<c:if test="${fn:length(surveyOptionList)  > 0 }">
			<c:forEach items="${surveyOptionList}" var="poVal" varStatus="stuts">
				<tr>
					<td align="center"><input style="width: 20px;" type="checkbox" name="ck" /><input type="hidden" name="weixinSurveyOptions[${stuts.index }].id" > </td>
					<td align="left"><textarea nullmsg="请输入选项标题！" datatype="*" errormsg="请输入选项标题！" name="weixinSurveyOptions[${stuts.index }].surveyOptionTitle"  rows="1" cols="100">${poVal.surveyOptionTitle}</textarea></td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
