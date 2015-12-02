$(document).ready(function(){

	var start_game = 0;

	$('#answer_box').css('display','none');
	$('#next_question').click(function(){

		
		increment_question();
		
		if(start_game == 0){
			$('#next_question').text('Submit').append('<i class="material-icons right">send</i>');
			$('#answer_box').css('display','block');
			start_game = 1;
			run_timer();	
		}
		
	});
})


function run_timer(){

	var my_time = $('#timer').text();
    var ss = my_time.split(":");
    
    if(ss[0] != '00'){

    	var dt = new Date();
		dt.setHours(0);
	    dt.setMinutes(ss[0]);
	    dt.setSeconds(ss[1]);
	        
		var dt2 = new Date(dt.valueOf() - 1000);
	    var temp = dt2.toTimeString().split(" ");
	    var ts = temp[0].split(":");
	    
	    $('#timer').text(ts[1]+":"+ts[2]);
	    setTimeout(run_timer, 1000);	
    }
    
}

function increment_question(){
	
	var question_number = 0;
	var url_question = $('#base_url').val();

	question_number = $('#question_number').val();
	url_question += 'welcome/get_question/' + question_number;

	$.ajax({

		url : url_question,
		data : $('#question_answer').serialize(),
		type : 'post',
		dataType : 'json',
		success : function(data){
			console.log(data);	
			$('#question_text').empty();
			$('#question_header').empty();
			$('#question_text').html(data.question_text);
			$('#question_header').text(data.question_header);
			$('#question_header').append('<i class="material-icons left">invert_colors</i>');
			
		}


	});

	$('#question_number').val(++question_number);

}
