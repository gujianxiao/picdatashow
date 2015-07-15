$.ajax({
	type:'get',
    url:'../dataimport',
    datatype:'json',
    success:function(data){
    	var msra=data.MSRA;
    	var by=data.北京邮电大学+data.北邮;
    	var dwjm=data.对外经贸大学;
    	var bgd=data.北方工业大学;
    	var bl=data.北京理工大学;
    	var cgz=data.车公庄;
    	var as=data.奥林匹克森林公园;
    	var nzg=data.农展馆;
    	var cygy=data.朝阳公园;
    	var fcd=data.芳草地;
    	var tt=data.天坛;
    	var mdy=data.牡丹园;
    	var zgc=data.中关村;

    	
    $('#container').highcharts({
        title: {
            text: '各地照片数据统计直方图'
        },
		chart:{
			type:'column'
			},

        subtitle: {
            text: '共计'
        },


        xAxis: {
            categories: ['北邮', '对外经贸', '北工大', '北大', '北理', '车公庄', '奥森', '农展馆', 'MSRA', '朝阳公园', '芳草地', '天坛','牡丹园','中关村']
        },

        series: [{
            data: [by, dwjm, bgd, bd, bl, cgz, as, nzg, msra, cygy, fcd, tt,mdy,zgc]
        }]
    });

}
})