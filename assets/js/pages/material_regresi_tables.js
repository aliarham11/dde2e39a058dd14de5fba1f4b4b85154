$(document).ready(function(){

    var story = 0;
    // $('#table1').css('display','none');
    $('#interface6-title').css('display','none');
    $('#table1').css('display','none');
    $('#table2').css('display','none')
    $('.table3').css('display','none');
    $('.table4').css('display','none');
    
    $('#interface6-btn-nav').click(function(){

        story++;

        if(story == 1){
          $('#interface6-intro').css('display','none');
          $('#table1').css('display','table');
          $('#table2').css('display','none');
          $('.table3').css('display','none');
          $('.table4').css('display','none');
        }

        if(story == 2){
          $('#table1').css('display','none');
          $('#table2').css('display','table')
          $('.table3').css('display','none');
          $('.table4').css('display','none');      
        }

        if(story == 3){
          $('#table1').css('display','none');
          $('#table2').css('display','none');
          $('.table3').css('display','table');
          $('.table4').css('display','none');      
        }

        if(story == 4){
          $('#table1').css('display','none');
          $('#table2').css('display','none');
          $('.table3').css('display','none');
          $('.table4').css('display','table');      
        }

        if(story == 5){
             window.location=$('#base_url').val() + 'quiz_regresi';
        }

    });

})




