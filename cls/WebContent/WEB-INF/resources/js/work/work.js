$(document).ready(function() {
	
	$('#src').click(function() {
	var src = $('#name').val();
	if(src == '') {
		alert('검색창에 이름을 적어주세요.');
		return;
	} else {
		$('#frm').submit();
	}
	});
	
	$('#hbtn').click(function() {
		$(location).attr('href', '/cls/main.cls');
	});
	
	$('.info').click(function() {
		var mno = $(this).attr('id');
		// $('#mno').val(mno)
		// $('#frm').submit();
		
		// 비동기 방식 처리
		$.ajax({
			url: '/cls/work/Ajax.cls',
			type: 'POST',
			dataType: 'json',
			data: {
				no: mno
			},
			success: function(obj) {
				
//				var mno = obj.mno;
				var name = obj.name;
				var id = obj.id;
				var mail = obj.mail;
				var gen = obj.gen;
				var sdate = obj.sdate;
				alert(mno);
				$('#tno').text(mno);
				$('#name').text(name);
				$('#id').text(id);
				$('#mail').text(mail);
				$('#gen').text(gen);
				$('#sdate').text(sdate);
				$('#avatar').attr('src', '/cls/img/avatar/' + obj.avatar);
				$('.ifm').stop().slideDown(500);
			},
			error: function() {
				alert('### 통신 실패 ###');
			}
		});
	});
});