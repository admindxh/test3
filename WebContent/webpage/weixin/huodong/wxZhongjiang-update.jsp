<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>中奖记录</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="wxZhongjiangController.do?doUpdate" tiptype="1">
					<input id="id" name="id" type="hidden" value="${wxZhongjiangPage.id }">
					<input id="createName" name="createName" type="hidden" value="${wxZhongjiangPage.createName }">
					<input id="createDate" name="createDate" type="hidden" value="${wxZhongjiangPage.createDate }">
					<input id="updateName" name="updateName" type="hidden" value="${wxZhongjiangPage.updateName }">
					<input id="updateDate" name="updateDate" type="hidden" value="${wxZhongjiangPage.updateDate }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								社区平台:
							</label>
						</td>
						<td class="value">
<%--						     	 <input id="platformCode" name="platformCode" type="text" style="width: 150px" class="inputxt"  --%>
<%--									               --%>
<%--									                 value='${wxZhongjiangPage.platformCode}'>--%>
							<t:dictSelect field="platformCode"  typeGroupCode="pf_code"   hasLabel="false" type="select" defaultVal="${wxZhongjiangPage.platformCode}"></t:dictSelect>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">社区平台</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								平台账号:
							</label>
						</td>
						<td class="value">
						     	 <input id="userAccount" name="userAccount" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${wxZhongjiangPage.userAccount}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">平台账号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								活动ID:
							</label>
						</td>
						<td class="value">
							<select id="huoddongId" name="huoddongId">
								<c:forEach items="${huodongEntities}" var="huodong">
								<option  value="${huodong.id}" <c:if test="${wxZhongjiangPage.huoddongId == huodong.id }">selected="selected"</c:if>>${huodong.hdName}</option>
								</c:forEach>
							</select>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">活动ID</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								奖品名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="jpName" name="jpName" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${wxZhongjiangPage.jpName}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">奖品名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								奖品代码:
							</label>
						</td>
						<td class="value">
						     	 <input id="jpCode" name="jpCode" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${wxZhongjiangPage.jpCode}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">奖品代码</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								奖品级别:
							</label>
						</td>
						<td class="value">
<%--						     	 <input id="jpLevel" name="jpLevel" type="text" style="width: 150px" class="inputxt"  --%>
<%--									               --%>
<%--									                 value='${wxZhongjiangPage.jpLevel}'>--%>
							<t:dictSelect field="jpLevel"  typeGroupCode="jp_level"   hasLabel="false" type="select" defaultVal="${wxZhongjiangPage.jpLevel}"></t:dictSelect>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">奖品级别</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								兑奖状态:
							</label>
						</td>
						<td class="value">
<%--						     	 <input id="jpFlag" name="jpFlag" type="text" style="width: 150px" class="inputxt"  --%>
<%--									               --%>
<%--									                 value='${wxZhongjiangPage.jpFlag}'>--%>
							<t:dictSelect field="jpFlag" extendJson="{disabled=\"disabled\"}"  typeGroupCode="jp_flag"   hasLabel="false" type="select" defaultVal="${wxZhongjiangPage.jpFlag}"></t:dictSelect>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">兑奖状态</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								兑奖人姓名:
							</label>
						</td>
						<td class="value">
						     	 <input id="userAnme"  name="userAnme" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${wxZhongjiangPage.userAnme}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">兑奖人姓名</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								联系方式:
							</label>
						</td>
						<td class="value">
						     	 <input id="userTelphone" name="userTelphone" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${wxZhongjiangPage.userTelphone}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">联系方式</label>
						</td>
						<td align="right">
							<label class="Validform_label">
								收件地址:
							</label>
						</td>
						<td class="value">
						     	 <input id="userAddress" name="userAddress" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${wxZhongjiangPage.userAddress}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收件地址</label>
						</td>
					</tr>
<%--					<tr>--%>
<%--						<td align="right">--%>
<%--							<label class="Validform_label">--%>
<%--								备注:--%>
<%--							</label>--%>
<%--						</td>--%>
<%--						<td class="value" colspan="3">--%>
<%--						     	 <input id="content" name="content" type="text" style="width: 150px" class="inputxt"  --%>
<%--									               --%>
<%--									                 value='${wxZhongjiangPage.content}'>--%>
<%--							<span class="Validform_checktip"></span>--%>
<%--							<label class="Validform_label" style="display: none;">备注</label>--%>
<%--						</td>--%>
<%--						<td align="right">--%>
<%--							<label class="Validform_label">--%>
<%--								身份证正面:--%>
<%--							</label>--%>
<%--						</td>--%>
<%--						<td class="value">--%>
<%--						     	 <input id="idcardAFile" name="idcardAFile" type="text" style="width: 150px" class="inputxt"  --%>
<%--									               --%>
<%--									                 value='${wxZhongjiangPage.idcardAFile}'>--%>
<%--							<span class="Validform_checktip"></span>--%>
<%--							<label class="Validform_label" style="display: none;">身份证正面</label>--%>
<%--						</td>--%>
<%--					</tr>--%>
<%--					<tr>--%>
<%--						<td align="right">--%>
<%--							<label class="Validform_label">--%>
<%--								身份证反面:--%>
<%--							</label>--%>
<%--						</td>--%>
<%--						<td class="value">--%>
<%--						     	 <input id="idcardBFile" name="idcardBFile" type="text" style="width: 150px" class="inputxt"  --%>
<%--									               --%>
<%--									                 value='${wxZhongjiangPage.idcardBFile}'>--%>
<%--							<span class="Validform_checktip"></span>--%>
<%--							<label class="Validform_label" style="display: none;">身份证反面</label>--%>
<%--						</td>--%>
<%--				<td align="right">--%>
<%--					<label class="Validform_label">--%>
<%--					</label>--%>
<%--				</td>--%>
<%--				<td class="value">--%>
<%--				</td>--%>
<%--					</tr>--%>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/buss/weixin/wxZhongjiang.js"></script>		