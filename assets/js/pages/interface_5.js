$(document).ready(function(){

    var story = 0;
    var display_table = '#interface5-table';
    var label_number = 0;
    $('#interface5-btn-nav').click(function(){
        story++;

        if(story == 1 || story == 3 || story == 5){
            display_table += story;
            label_number++;
            $('#interface5-header').text('Kapal Jenis Product Oil Tanker 6500 Dwt Tahun 2008').append('<i class="material-icons left">subtitles</i>');
            $('#title-text1').text('Keterangan Utama Kapal');
            $('#title-text2').css('display','none');
            $('#interface5-img').css('display','none');
            $('#interface5-table1').css('display','block');
            $(display_table).css('display','block');
            
            get_table_data(label_number);    
            
        }

        if(story == 2 || story == 4){
            $(display_table).css('display','none');
            $('#interface5-header').text('Cost Break Down Structure Kapal Baru Jenis Product Oil Tanker 6500 Dwt Tahun 2008').append('<i class="material-icons left">subtitles</i>');
            $('#title-text1').css('display','none');
            $('#interface5-img').css('display','block');
            $('#interface5-table1').css('display','none');
        }
        
    });

})

function get_table_data(argument) {
    console.log('asd');
    var url = $('#base_url').val() + 'interface_5/get_table_data?label_number=' + argument;
    var html = '';
    $('#table1').empty();
    $.getJSON(url, function(data){
        console.log(data);
        for(var key in data){
            // console.log(data[key]);
            html += '<tr><td>'+data[key].label_name+'</td><td>'+data[key].label_text+'</td></tr>'
        }

        $('#table1').append(html);
    });
}