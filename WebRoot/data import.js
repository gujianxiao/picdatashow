$.ajax({
	type:'get',
    url:'../dataimport',
    datatype:'json',
    success:function(data){
    	var msra=data.MSRA;
    	var by=data.�����ʵ��ѧ+data.����;
    	var dwjm=data.���⾭ó��ѧ;
    	var bgd=data.������ҵ��ѧ;
    	var bl=data.��������ѧ;
    	var cgz=data.����ׯ;
    	var as=data.����ƥ��ɭ�ֹ�԰;
    	var nzg=data.ũչ��;
    	var cygy=data.������԰;
    	var fcd=data.���ݵ�;
    	var tt=data.��̳;
    	var mdy=data.ĵ��԰;
    	var zgc=data.�йش�;

    	
    $('#container').highcharts({
        title: {
            text: '������Ƭ����ͳ��ֱ��ͼ'
        },
		chart:{
			type:'column'
			},

        subtitle: {
            text: '����'
        },


        xAxis: {
            categories: ['����', '���⾭ó', '������', '����', '����', '����ׯ', '��ɭ', 'ũչ��', 'MSRA', '������԰', '���ݵ�', '��̳','ĵ��԰','�йش�']
        },

        series: [{
            data: [by, dwjm, bgd, bd, bl, cgz, as, nzg, msra, cygy, fcd, tt,mdy,zgc]
        }]
    });

}
})