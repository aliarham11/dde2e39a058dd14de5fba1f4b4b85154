$(document).ready(function(){

	var story = 1;


    $('#tujuan').css('display', 'none');
    $('#batasan').css('display', 'none');
    $('#sistematika').css('display', 'none');  

	 $('#interface2-btn-nav').click(function(){

        story++;
        // if(story == 2 || story == 4){  
            
        if(story == 2){
        	$('#title').text('Tujuan');  
        	$('#fungsi').css('display', 'none');
			$('#tujuan').css('display', 'block');
			$('#batasan').css('display', 'none');
			$('#sistematika').css('display', 'none');
        }

        if(story == 3){  
        	$('#title').text('Batasan');
			$('#fungsi').css('display', 'none');
			$('#tujuan').css('display', 'none');
			$('#batasan').css('display', 'block');
			$('#sistematika').css('display', 'none');
        }

        if(story == 4){
        	$('#title').text('Sistematika & Metode Operasional Aplikasi');
			$('#fungsi').css('display', 'none');
			$('#tujuan').css('display', 'none');
			$('#batasan').css('display', 'none');
			$('#sistematika').css('display', 'block');
			$('#interface2-btn-nav').text('Mulai Permainan').append('<i class="material-icons right">send</i>');
        }
 
        if(story == 5){
          window.location=$('#base_url').val() + 'users/dashboard';
        }



    });
})