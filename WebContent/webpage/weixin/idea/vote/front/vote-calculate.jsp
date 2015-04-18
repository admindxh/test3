<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://cdn.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- Mobile Devices Support @begin -->
	<meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
	<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
	<meta content="no-cache" http-equiv="pragma">
	<meta content="0" http-equiv="expires">
	<meta content="telephone=no, address=no" name="format-detection">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<title>投票统计</title>
 <script src="http://s1.bdstatic.com/r/www/cache/ecom/esl/1-6-10/esl.js"></script>
 
</head>
<body>
 <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" align="center" style="height:300px"></div>
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
                var myChart = ec.init(document.getElementById('main')); 
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
                var url = "weixinVoteController.do?getCalculateData&id=${weixinVote.id}";
            	$.ajax({
            		url:url,
            		type:"GET",
            		dataType:"JSON",
            		success:function(data){
            			if(data.success){
            				var lst = data.obj;
            				for(var i = 0 ; i <lst.length;i++){
            					dd[i] ={name:lst[i].voteOptionTitle, value:Number(lst[i].count)};
            					tt.push(lst[i].voteOptionTitle);
            				}

            	               var  option = {
            	                	    title : {
            	                	        text: '${weixinVote.voteTitle}',
            	                	        subtext: '投票结果',
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
            	                	            name:'访问来源',
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
</body>
</html>