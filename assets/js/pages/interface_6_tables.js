$(document).ready(function(){

    var story = 1;
    // $('#table1').css('display','none');
    $('#table2').css('display','none');
    $('.table3').css('display','none');
    $('.table4').css('display','none');
    
    $('#interface6-btn-nav').click(function(){

        story++;
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

    });

})




