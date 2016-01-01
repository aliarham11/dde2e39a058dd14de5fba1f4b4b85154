$(document).ready(function(){

	$('#get_games').click(function(){

		var url = $('#base_url').val() + 'games/run';
		$.ajax({
			url : url,
			method : 'post',
			data : $('choose_start').serialize(),
			success : function(data){
				console.log(data);
				$('#game_options').css('display','block');
			}
		})
	});


})