$(document).ready(function(){

    var story = 0;
    var display_table = '#interface5-table';
    var label_number = 0;
    var get_two_table = false;
    $('#interface5-btn-nav').click(function(){
        story++;

        if(story == 1 || story == 3 ){

            var year = '2008';

            if(story == 3){
                year = '2009';
            }

            var text = 'Kapal Jenis Product Oil Tanker 6500 Dwt Tahun ' + year;
            display_table += story;
            label_number++;
            $('#interface5-header').text(text).append('<i class="material-icons left">subtitles</i>');
            $('#title-text1').text('Keterangan Utama Kapal');
            $('#title-text2').css('display','none');
            $('#interface5-img').css('display','none');
            $('#interface5-table1').css('display','block');
            $(display_table).css('display','block');
            
            if(story == 3){
                $('#title-text1').css('display','block');
                get_two_table = true;
                $('#interface5-table2').css('display','block');
            }
            get_table_data(label_number, get_two_table);    
            
        }

        if(story == 2 || story == 4){
            var year = '2008';

            if(story == 4){
                year = '2009';
            }

            var text = 'Cost Break Down Structure Kapal Baru Jenis Product Oil Tanker 6500 Dwt Tahun ' + year;
            $(display_table).css('display','none');
            $('#interface5-header').text(text).append('<i class="material-icons left">subtitles</i>');
            $('#title-text1').css('display','none');
            $('#interface5-img').css('display','block');
            $('#interface5-table1').css('display','none');
            $('#interface5-table2').css('display','none');
        }
        
    });

})

function get_table_data(argument, get_two_table) {
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

    if(get_two_table){
        url = $('#base_url').val() + 'interface_5/get_table_data?label_number=3';
        $('#table2').empty();
        html2 = '';
        $.getJSON(url, function(data){
            console.log(data);
            for(var key in data){
                html2 += '<tr><td>'+data[key].label_name+'</td><td>'+data[key].label_text+'</td></tr>'
            }

            $('#table2').append(html2);
        });        
    }

}