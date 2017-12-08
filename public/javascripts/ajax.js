$(function(){
	$('#addOption').on('click',function(){
		//新增 or 更新
		let hiddenVal = $('#inputHidden').val();
		let itype = 'PUT';
		if(!hiddenVal) {
			//如果没有隐藏的域值，新增数据
			itype = "POST"
		}
		$.ajax({
			type:itype,
			url:'/admin/add',
			async:true,
			//contentType:'application/json',
			dataType:'json',
			data:{
				id: hiddenVal,
				title:$('#inputTitle').val(),
				director:$('#inputDirector').val(),
				country:$('#inputCountry').val(),
				year:$('#inputYear').val(),
				poster:$('#inputPoster').val(),
				language:$('#inputLanguage').val(),
				flash:$('#inputFlash').val(),
				summary:$('#inputSummary').val(),
			},
			success:function(res){
			  
				if(res.status === 200) {
					window.location.href = res.url;
					alert(111)
				}
			}
		})
	})
	
	$('.del').on('click',function () {
		let del_id = $(this).attr('data-id');
		$.ajax({
			type:'DELETE',
			url:'/admin/list',
			dataType:'json',
			async:true,
			data:{
				id:del_id
			},
			success:function (res) {
				if (res.status == 200){
					window.location.href = res.url;
				}
            }
		})
    })
})