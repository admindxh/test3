<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
 <script src="http://s1.bdstatic.com/r/www/cache/ecom/esl/1-6-10/esl.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
    <p><h1 style="font-size:30px;">调研问卷：${weixinSurveyMain.surveyTitle }</h1></p>
    <p><h1 style="font-size:14px;">参与人数：${weixinSurveyMain.surveyCount}</h1></p>
    <c:forEach items="${surveylist}" var="sur" varStatus="s">
    	    <div id="p" class="easyui-panel" title="${sur.surveyTitle }" style="width:800px;height:350px;padding:10px;"
                data-options="iconCls:'icon-search',collapsible:true">
			<div id="main${s.index+1}" align="center" style="height:260px;width: 100%"></div>
        </div>
         <script type="text/javascript">
      // 路径配置
         require.config({
             paths:{ 
                 'echarts' : 'http://echarts.baidu.com/build/echarts',
                 'echarts/chart/pie' : 'http://echarts.baidu.com/build/echarts'
             }
         });
        // 使用
        require(
            [
                'echarts',
                'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main${s.index+1}')); 
                var dataStyle = { 
                	    normal: {
                	        label : {
                	            show: true,
                	            position: 'insideLeft',
                	            formatter: '{b} : {c} ({d}%)'
                	        }
                	    }
                	};
                var dd =[];
                var tt =[];
                var url = "weixinSurveyMainController.do?getCalculateData&id=${sur.id}";
            	$.ajax({
            		url:url,
            		type:"GET",
            		dataType:"JSON",
            		success:function(data){
            			if(data.success){
            				var lst = data.obj;
            				for(var i = 0 ; i <lst.length;i++){
            					dd[i] ={name:lst[i].surveyOptionTitle, value:Number(lst[i].count)};
            					tt.push(lst[i].surveyOptionTitle);
            				}

            	               var  option = {
            	                	    title : {
            	                	        text: '${sur.surveyTitle}',
            	                	        subtext: '调研统计',
            	                	        x:'center'
            	                	    },
            	                	    tooltip : {
            	                	        trigger: 'item',
            	                	        formatter: "{a} <br/>{b} : {c} ({d}%)"
            	                	    },
            	                	    legend: {
            	                	        orient : 'vertical',
            	                	        x : 'left',
            	                	        data:tt
            	                	    },
            	                	    toolbox: {
            	                	        show : true,
            	                	        feature : {
            	                	            saveAsImage : {show: true}
            	                	        }
            	                	    },
            	                	    calculable : true,
            	                	    series : [
            	                	        {	
            	                	        	itemStyle:dataStyle,
            	                	            name:'选项统计',
            	                	            type:'pie',
            	                	            radius : '55%',
            	                	            center: ['50%', '60%'],
            	                	            data:dd
            	                	        }
            	                	    ]
            	                	};
            	                // 为echarts对象加载数据 
            	                myChart.setOption(option); 
            			}
            		}
            	});
            	
            }
        );
    </script>
    </c:forEach>
</body>
</html>