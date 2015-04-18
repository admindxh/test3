<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="weixinWallMessageList" title="微信墙信息" actionUrl="weixinWallMessageController.do?datagrid&wall_status=${wall_status}" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="昵称" field="nickname" ></t:dgCol>
     <t:dgCol title="头像" field="headimgurl"  image="true" imageSize="100,50" ></t:dgCol>
   <t:dgCol title="消息内容" field="content" ></t:dgCol>
   <t:dgCol title="性别" field="sex" ></t:dgCol>
   <t:dgCol title="发布时间" field="createtime" formatter="yyyy-MM-dd hh:mm:ss"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="通过" url="weixinWallMessageController.do?auditMember&id={id}&falg=1"  exp="status#ne#0" />
   <t:dgDelOpt title="不通过" url="weixinWallMessageController.do?auditMember&id={id}&falg=2" exp="status#ne#0" />
   <t:dgDelOpt title="删除" url="weixinWallMessageController.do?del&id={id}" />
  </t:datagrid>
  </div>
 </div>