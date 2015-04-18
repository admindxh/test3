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
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="weixinVoteController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${weixinVotePage.id }">
					<input id="createName" name="createName" type="hidden" value="${weixinVotePage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${weixinVotePage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${weixinVotePage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${weixinVotePage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								投票标题:
							</label>
						</td>
						<td class="value">
						     	 <input id="voteTitle" name="voteTitle" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinVotePage.voteTitle}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投票标题</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								投票人数:
							</label>
						</td>
						<td class="value">
						     	 <input id="voteCount" name="voteCount" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinVotePage.voteCount}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投票人数</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								投票描述:
							</label>
						</td>
						<td class="value">
						     	 <input id="voteDescription" name="voteDescription" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinVotePage.voteDescription}'>
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
						     	 <input id="integral" name="integral" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${weixinVotePage.integral}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">积分</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/weixin/idea/vote/weixinVote.js"></script>		