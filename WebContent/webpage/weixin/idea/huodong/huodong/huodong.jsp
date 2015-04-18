<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>活动</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="" scroll="yes">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" beforeSubmit="doAwrdsInfo" action="huodongController.do?save">
			<input id="id" name="id" type="hidden" value="${huodongPage.id }">
			<table id="huodongTable" style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							活动名称:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="title" name="title" ignore="ignore"
							   value="${huodongPage.title}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							活动描述:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="description" name="description" ignore="ignore"
							   value="${huodongPage.description}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							抽奖次数:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="count" name="count" ignore="ignore"
							   value="${huodongPage.count}" datatype="n">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							开始时间:
						</label>
					</td>
					<td class="value">
						<input class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  style="width: 150px" id="starttime" name="starttime" ignore="ignore"
							     value="<fmt:formatDate value='${huodongPage.starttime}' type="date" pattern="yyyy-MM-dd hh:mm:ss"/>">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							结束时间:
						</label>
					</td>
					<td class="value">
						<input class="Wdate" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  style="width: 150px" id="endtime" name="endtime" ignore="ignore"
							     value="<fmt:formatDate value='${huodongPage.endtime}' type="date" pattern="yyyy-MM-dd hh:mm:ss"/>">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
					<tr>
					<td align="right">
						<label class="Validform_label">
							中奖概率:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="gl" name="gl" ignore="ignore"
							   value="${huodongPage.gl}">
						<span>备注：中间概率为百分比，例如30/100,及中奖率为30%,以此类推</span>
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							活动类型:
						</label>
					</td>
					<td class="value">
					<select id="type" name="type" ignore="ignore">
						<option value="1" >刮刮乐</option>
						<option value="2">大转盘</option>
					</select>
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr id="clone_awards_td" style="display:none;">
					<td align="right">
						<label class="Validform_label">
							奖项设置:
						</label>
					</td>
					<td  class="value">
					<input type="hidden" class="inputxt" id="awardsId" name="awardsId" ignore="ignore" value="" />
		       		<input type="text" class="inputxt" id="inputawardsName" name="inputawardsName" ignore="ignore" value="" readonly="readonly"/>
		     		<span>奖品数量：</span>
		     		<input type="text" id="amountName" name="amountName" style="width:30px;" class="inputIndex"/>
		     		<a id="a" style="display:none;"></a>
		     		<t:choose hiddenName="awardsId" hiddenid="id" url="awardsLevelController.do?awardsLevel" name="awardsLevelList" inputTextname="inputawardsName" icon="icon-search" title="选择奖项" textname="awardsName" isclear="false" fun="awardsTr"></t:choose>
		      		<!-- <span><a style="cursor: hand;cursor: pointer;" onclick="addaward(this)">设置奖品</a></span> -->
		      		<!--<span><a style="cursor: hand;cursor: pointer;" onclick="delawards(this)">删除</a></span>-->
		      		<span class="Validform_checktip"></span>
						<span class="Validform_checktip"></span>
					</td>
				</tr> 
				<tr id="clone_award_td" style="display:none;">
					<td align="right">
						<label class="Validform_label">
							奖品设置:
						</label>
					</td>
					<td  class="value">
					<input type="hidden" class="inputxt" id="awardId" name="awardId" ignore="ignore" value="">
		       		<input type="text" class="inputxt" id="awardName" name="awardName" ignore="ignore" value="" readonly="readonly">
		       		<a id="a" style="display:none;"></a>
		     		<t:choose hiddenName="awardId" hiddenid="id" url="awardController.do?award" name="awardList" inputTextname="awardName" icon="icon-search" title="选择奖品" textname="name" isclear="false" fun="awardTr"></t:choose>
		      		<!-- <span><a style="cursor: hand;cursor: pointer;" onclick="delawards(this)">删除</a></span> -->
		      		<span class="Validform_checktip"></span>
						<span class="Validform_checktip"></span>
					</td>
				</tr> 
				<tr>
					<td align="right">
						<label class="Validform_label">
							添加奖项:
						</label>
					</td>
					<td id="td_award" class="value">
					<a id="add_award" style="cursor: hand;cursor: pointer;color:blue;">添加活动奖项</a>
					<input type="hidden" id="jsonstr" name="jsonstr" />
					</td>
				</tr>
				<c:if test="${huodongPage.awardslist!=null}">
					<c:forEach items="${huodongPage.awardslist}" var="awardsmodel" varStatus="status">
					<tr id="clone_awards_td" onclick="checkTr('${status.count}')">
					<td align="right">
						<label class="Validform_label">
							奖项设置:
						</label>
					</td>
					<td  class="value">
					<input type="hidden" class="inputxt" id="awardsId_${status.count}" name="awardsId_${status.count}" ignore="ignore" value="${awardsmodel.awardslevle.id}" />
		       		<input type="text" class="inputxt" id="inputawardsName_${status.count}" name="inputawardsName_${status.count}" ignore="ignore" value="${awardsmodel.awardslevle.awardsName}" readonly="readonly" />
		     		<span>奖品数量：</span>
		     		<input type="text" id="amountName_${status.count}" name="amountName_${status.count}" style="width:30px;" value="${awardsmodel.amount}"class="inputIndex"/>
		     		<a id="a_${status.count}" style="display:none;"></a>
		     		<t:choose hiddenName="awardsId" hiddenid="id" url="awardsLevelController.do?awardsLevel" name="awardsLevelList" inputTextname="inputawardsName" icon="icon-search" title="选择奖品" textname="awardsName" isclear="false" fun="awardsTr"></t:choose>
		      		<!-- <span><a style="cursor: hand;cursor: pointer;" onclick="addaward(this)">设置奖品</a></span> -->
		      		<!--<span><a style="cursor: hand;cursor: pointer;" onclick="delawards(this)">删除</a></span>-->
		      		<span class="Validform_checktip"></span>
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr id="clone_award_td" onclick="checkTr('${status.count}')">
					<td align="right">
						<label class="Validform_label">
							奖品设置:
						</label>
					</td>
					<td  class="value">
					<c:set var="awardIds" value="${awardsmodel.awardlist[0].awardmodel.id}"></c:set>
					<c:forEach items="${awardsmodel.awardlist}" var="award" begin="1">
					<c:set var="awardIds" value="${awardIds},${award.awardmodel.id}"></c:set>
					</c:forEach>
					<c:set var="awardNames" value="${awardsmodel.awardlist[0].awardmodel.name}"></c:set>
					<c:forEach items="${awardsmodel.awardlist}" var="award" begin="1">
					<c:set var="awardNames" value="${awardNames},${award.awardmodel.name}"></c:set>
					</c:forEach>
					<input type="hidden" class="inputxt" id="awardId_${status.count}" name="awardId_${status.count}" ignore="ignore" value="${awardIds}">
		       		<input type="text" class="inputxt" id="awardName_${status.count}" name="awardName_${status.count}" ignore="ignore" value="${awardNames}" readonly="readonly">
		       		<a id="a_${status.count}" style="display:none;"></a>
		     		<t:choose hiddenName="awardId" hiddenid="id" url="awardController.do?award" name="awardList" inputTextname="awardName" icon="icon-search" title="选择奖品" textname="name" isclear="false"  fun="awardTr"></t:choose>
		      		<!-- <span><a style="cursor: hand;cursor: pointer;" onclick="delawards(this)">删除</a></span> -->
		      		<span class="Validform_checktip"></span>
						<span class="Validform_checktip"></span>
					</td>
				</tr>
					</c:forEach>
				</c:if>
			</table>
		</t:formvalid>
<script type="text/javascript">
var num=0;
var awardsId="";
var inputawardsName="";
var awardId="";
var awardName="";
function checkTr(obj){
if(!isNaN(obj)){
   num=obj;
}
}
function awardsTr(){
 $("#awardsId_"+num).val($("#awardsId").val());
 $("#inputawardsName_"+num).val($("#inputawardsName").val());	
}
function awardTr(){
$("#awardId_"+num).val($("#awardId").val());
$("#awardName_"+num).val($("#awardName").val());
}
//添加奖项
$("#add_award").click(function(){
	var type = $("#type").val(); //活动类型
	if(type==2 && num>2){
		alert("大转盘只支持三个奖项");
		return false;
	}
	var awardId = $("#huodongTable").find("tr:last").attr("id");
	if(typeof(awardId) == "undefined"){
	/*Array array = awardId.split("_");
		if(array[1]!=0){
			if($("#inputawardsName_"+num).val()==""){
				alert("请先完善奖项和奖品再添加新奖项");
				return;
			}
			if($("#awardName_"+num).val()==""){
				alert("请先完善奖项和奖品再添加新奖项");
				return;
			}
			if($("#amountName"+num).val()==""){
				alert("请先完善奖项和奖品再添加新奖项");
				return;
			}
		}*/
		//num=num+1;
		var number=1;
		var o = $("#clone_awards_td").clone(true).appendTo("#huodongTable");
		$(o).bind("click",checkTr(number));
		var hinput = $(o).find("input[name='awardsId']");
		var tinput = $(o).find("input[name='inputawardsName']");
		var ainput = $(o).find("input[name='amountName']");
		$(hinput).attr("id","awardsId_"+number);
		$(hinput).attr("name","awardsId_"+number);
		$(tinput).attr("id","inputawardsName_"+number);
		$(tinput).attr("name","inputawardsName_"+number);
		$(ainput).attr("id","amountName_"+number);
		$(ainput).attr("name","amountName_"+number);
		$(o).show();
		setTimeout(addaward(number),1000);
	}else if(awardId == "clone_award_td"){
		var array = new Array();
		var tdobj=$($("#huodongTable").find("tr:last").children()).get(1);
		var inputobj = $($(tdobj).children()).get(0);
		var str =$(inputobj).attr("id");
			array = str.split("_");
		if(array[1]!=0){
			if($("#inputawardsName_"+array[1]).val()==""){
				alert("请先完善奖项和奖品再添加新奖项");
				return;
			}
			if($("#awardName_"+array[1]).val()==""){
				alert("请先完善奖项和奖品再添加新奖项");
				return;
			}
			if($("#amountName"+array[1]).val()==""){
				alert("请先完善奖项和奖品再添加新奖项");
				return;
			}
		}
		var numbercount = parseInt(array[1])+1;
		var o = $("#clone_awards_td").clone(true).appendTo("#huodongTable");
		$(o).bind("click",checkTr(numbercount));
		var hinput = $(o).find("input[name='awardsId']");
		var tinput = $(o).find("input[name='inputawardsName']");
		var ainput = $(o).find("input[name='amountName']");
		$(hinput).attr("id","awardsId_"+numbercount);
		$(hinput).attr("name","awardsId_"+numbercount);
		$(tinput).attr("id","inputawardsName_"+numbercount);
		$(tinput).attr("name","inputawardsName_"+numbercount);
		$(ainput).attr("id","amountName_"+numbercount);
		$(ainput).attr("name","amountName_"+numbercount);
		$("#awardsId_"+numbercount).val("");
		$("#inputawardsName_"+numbercount).val("");
		$("#amountName_"+numbercount).val("");
		$(o).show();
		setTimeout(addaward(numbercount),1000);
	}else{
		alert("您还没设置当前奖项的奖品");
	}
});
//删除奖项
function delawards(obj){
	if(num==1){
		num=0;
	}else{
		num=num-1;
	}
	$(obj).parent().parent().parent().next().remove();//删除对应奖品设置
	$(obj).parent().parent().parent().remove();
	
}
//针对奖项添加奖品
function addaward(objcount){
	var awardId = $("#huodongTable").find("tr:last").attr("id");
	if(awardId == "clone_awards_td"){
		var s = $("#clone_award_td").clone(true).appendTo("#huodongTable");
		$(s).bind("click",checkTr(objcount));
		var hinput = $(s).find("input[name='awardId']");
		var tinput = $(s).find("input[name='awardName']");
		$(hinput).attr("id","awardId_"+objcount);
		$(hinput).attr("name","awardId_"+objcount);
		$(tinput).attr("id","awardName_"+objcount);
		$(tinput).attr("name","awardName_"+objcount);
		$("#awardId_"+objcount).val("");
		$("#awardName_"+objcount).val("");
		$(s).show();
	}else{
		alert("您已经添加了奖品设置信息,请勿重复添加");
	}
}
/*setInterval(function(event){
	if(inputawardsName != $("#inputawardsName").val()){
		 awardsId = $("#awardsId").val();
  	  $("#awardsId_"+num).val(awardsId);
    }
	if(inputawardsName != $("#inputawardsName").val()){
  	  inputawardsName =$("#inputawardsName").val();
  	  $("#inputawardsName_"+num).val(inputawardsName);
    }
	if(awardId != $("#awardId").val()){
		awardId =$("#awardId").val();
  	  $("#awardId_"+num).val(awardId);
    }
	if(awardName != $("#awardName").val()){
		awardName =$("#awardName").val();
  	  $("#awardName_"+num).val(awardName);
    }
     
},100);*/
function doAwrdsInfo(){
		var array = new Array();
		var tdobj=$($("#huodongTable").find("tr:last").children()).get(1);
		var inputobj = $($(tdobj).children()).get(0);
		var str =$(inputobj).attr("id");
			array = str.split("_");
	var sub_num = array[1]; //当前添加的总条数
	var jsonstr="[";
	for(var i=1;i<=sub_num;i++){
		jsonstr+="{";
		var sub_awardsid = $("#awardsId_"+i).val(); //当前行数的奖项ID
		var sub_awardsname =  $("#inputawardsName_"+i).val();//当前行数的奖项名称
		var sub_awardid =  $("#awardId_"+i).val();//当前行数的奖品ID
		var sub_awardname =  $("#awardName_"+i).val();//当前行数的奖品名称
		var amountname =  $("#amountName_"+i).val();//当前行数的奖品数量
		if(sub_awardsid == "" || sub_awardsname == "" || sub_awardid == "" || sub_awardname == "" || amountname == ""){
			alert("奖项信息填写不完善");
			return false;
		}
		jsonstr+="awardsid:'"+sub_awardsid+"',"+"awardsname:'"+sub_awardsname+"',"+"awardid:'"+sub_awardid+"',"+"awardname:'"+sub_awardname+"',"+"amountname:"+amountname;
		jsonstr+="}";
		if(i!=sub_num){
			jsonstr+=",";	
		}
	}
	 jsonstr+="]";
	 $("#jsonstr").val(jsonstr);
	 alert(jsonstr);
	
}

</script>
 </body>