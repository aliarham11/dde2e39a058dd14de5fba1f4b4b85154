$(document).ready(function(){

    var story = 0;
    var display_table = '#interface5-table';
    $('#interface5-btn-nav').click(function(){
        story++;




        if(story == 1){
            display_table += story;
            $('#interface5-header').text('Kapal Jenis Product Oil Tanker 6500 Dwt Tahun 2008').append('<i class="material-icons left">subtitles</i>');
            $('#title-text1').text('Keterangan Utama Kapal');
            $('#title-text2').css('display','none');
            $(display_table).css('display','block');
        }
        
    })

})