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
 </script>
 </head>
 <body>
  <t:formvalid  formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinVoteController.do?doAdd" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinVotePage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinVotePage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinVotePage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinVotePage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinVotePage.updateDate }">
					<input id="voteCount" name="voteCount" type="hidden" value="${weixinVotePage.voteCount }">
		<table  cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							投票标题:
						</label>
					</td>
					<td class="value">
					     	 <textarea id="voteTitle" rows="1" cols="100" name="voteTitle"  >${weixinVotePage.voteTitle}</textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投票标题</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							投票描述:
						</label>
					</td>
					<td class="value">
					     	 <textarea rows="1" cols="100" id="voteDescription" name="voteDescription">${weixinVotePage.voteDescription}</textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投票描述</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							积分:
						</label>
					</td>
					<td class="value">
					     	 <input id="integral" name="integral" type="text" datatype="*" style="width: 150px" class="inputxt" value="${weixinVotePage.integral}">
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">积分</label>
						</td>
				</tr>
			</table>
<div style="width: auto; height: 200px;"><%-- 增加一个div，用于调节页面大小，否则默认太小 --%>
	<div style="width: 690px; height: 1px;"></div>
	<t:tabs id="tt" iframe="false" tabPosition="top" fit="false">
		<t:tab href="weixinVoteController.do?goAddVoteOption&id=${weixinVotePage.id}" icon="icon-search" title="投票选项明细" id="voteoption"></t:tab>
	</t:tabs>
</div>
	</t:formvalid>
<table style="display: none">
	<tbody id="add_weixinVoteOption_table_template">
		<tr>
			<td align="center"><input style="width: 20px;" type="checkbox" name="ck" /></td>
			<td align="left"><textarea nullmsg="请输入选项标题！" rows="1" cols="100" datatype="*"  name="weixinVoteOptions[#index#].voteOptionTitle" ></textarea></td>
		</tr>
	</tbody>
</table>
 </body>
  <script src = "webpage/weixin/idea/vote/weixinVote.js"></script>		