$(document).ready(function(){

	if($('#resume').val() == 'true'){
		$('#pregame').css('display','none');
		$('#game_options').css('display','block');	
	}

	$('#get_games').click(function(){

		// window.location=$('#base_url').val() + 'material_parts';
		var url = $('#base_url').val() + 'games/run';
		$.ajax({
			url : url,
			method : 'post',
			data : $('#choose_start').serialize(),
			success : function(data){
				console.log(data);

				if(data == 'true'){
					window.location=$('#base_url').val() + 'material_parts';
					// $('#pregame').css('display','none');
					// $('#game_options').css('display','block');	
				}
				else{
					alert('failed');
				}
				

			}
		})
	});


})