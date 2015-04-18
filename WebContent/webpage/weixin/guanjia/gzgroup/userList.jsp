<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <title>粉丝列表</title>
    <t:base type="jquery,easyui,tools,DatePicker"></t:base>
   </head>
   <body style="overflow-y: hidden" scroll="no">
	<t:datagrid name="userList" title="粉丝列表" actionUrl="gzUserInfoYwController.do?datagrid&groupId=${id}" idField="id" fit="true">
      <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
      <t:dgCol title="粉丝openId" field="openid"  width="100"></t:dgCol>
   	  <t:dgCol title="是否关注" field="subscribe" width="100"  replace="是_1,否_0"></t:dgCol>
      <t:dgCol title="昵称" field="nickname" width="100" ></t:dgCol>
      <t:dgCol title="性别" field="sex" width="100" replace="男_1,女_2"></t:dgCol>
      <t:dgCol title="城市" field="city"  width="100"></t:dgCol>
      <t:dgCol title="省份" field="province"  width="100"></t:dgCol>
      <t:dgCol title="国家" field="country"  width="100"></t:dgCol>
      <t:dgCol title="用户头像" field="headimgurl" image="true" width="100" imageSize="auto,50"></t:dgCol>
      <t:dgCol title="关注时间" field="subscribeTime" width="120"></t:dgCol>
      <t:dgCol title="备注名称" field="bzName"  width="100"></t:dgCol>
      </t:datagrid>
    </body>
</html>