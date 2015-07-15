<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>picdatashow</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="data import.js"></script>

  <body>
<div id="container" style="height: 600px"></div>
  <script type="text/javascript">
  $.ajax({
	type:'get',
    url:'./servlet/dataimport',
    datatype:'html',
    success:function(data){
        var dataObj=$.parseJSON(data);
    	var msra=dataObj.MSRA;
    	var by=dataObj.bjyddx;
    	by+=dataObj.by;
    	var dwjm=dataObj.dwjm;
    	var bgd=dataObj.bgd;
    	var bl=dataObj.bl;
    	var cgz=dataObj.cgz;
    	var as=dataObj.as;
    	var nzg=dataObj.nzg;
    	var cygy=dataObj.cygy;
    	var fcd=dataObj.fcd;
    	var tt=dataObj.tt;
    	var mdy=dataObj.mdy;
    	var zgc=dataObj.zgc;
    	var bd=dataObj.bd;
    	var count=by+dwjm+bgd+bd+bl+cgz+as+nzg+msra+cygy+fcd+tt+mdy+zgc;

    	
    $('#container').highcharts({
        title: {
            text: '各地照片数据统计直方图'
        },
		chart:{
			type:'column'
			},

        subtitle: {
            text: '共计'+count
        },


        xAxis: {
            categories: ['北邮', '对外经贸', '北工大', '北大', '北理', '车公庄', '奥森', '农展馆', 'MSRA', '朝阳公园', '芳草地', '天坛','牡丹园','中关村']
        },

        series: [{
            name:'地点',
            data: [by, dwjm, bgd, bd, bl, cgz, as, nzg, msra, cygy, fcd, tt, mdy, zgc]
        }]
    });

}
})
  </script>
  </body>
</html>
