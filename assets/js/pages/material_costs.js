$(document).ready(function(){

    var story = 0;
    var display_table = '#interface5-table';
    var label_number = 0;
    var get_two_table = false;
    $('#interface5-btn-nav').click(function(){
        story++;

        if(story == 1 || story == 3 ){

            var year = '2008';
            var intr = '.1';

            if(story == 3){
                year = '2009';
                intr = '.2';
            }

            var text1 = 'Kapal Jenis Product Oil Tanker 6500 Dwt Tahun ' + year;
            var text2 = 'Interface 5' + intr;

            display_table += story;
            label_number++;
            $('#interface5-header').text(text2).append('<i class="material-icons left">subtitles</i>');
            $('#title-text2').css('display','none');
            $('#table1-head').text('Keterangan Utama Kapal');
            $('#title-text1').text(text1);
            $('#interface5-img').css('display','none');
            $('#interface5-table1').css('display','block');
            $(display_table).css('display','block');
            
            if(story == 3){
                $('#title-text1').css('display','block');
                get_two_table = true;
                $('#interface5-table2').css('display','block');
            }
            get_table_data(label_number);    
            
        }

        if(story == 2 || story == 4){
            var year = '2008';
            var intr = '.1';
             
            if(story == 4){
                year = '2009';
                $('#img-data').attr('src',$('#base_url').val() + 'assets/images/materi/cbd_2.png');
                var intr = '.2';
            }

            var text1 = 'Cost Break Down Structure Kapal Baru Jenis Product Oil Tanker 6500 Dwt Tahun ' + year;
            var text2 = 'Interface 5' + intr;

            $(display_table).css('display','none');
            $('#interface5-header').text(text2).append('<i class="material-icons left">subtitles</i>');
            $('#title-text1').text(text1);
            $('#interface5-img').css('display','block');
            $('#interface5-table1').css('display','none');
            $('#interface5-table2').css('display','none');
        }

        if(story == 5){
             $('#interface5-header').text('Interface 5').append('<i class="material-icons left">subtitles</i>');
            $('#title-text1').css('display','none');
            $('#title-text3').css('display','block');
            $('#interface5-table1').css('display','none');
            $('#interface5-table2').css('display','none');
             $('#interface5-img').css('display','none');
        }

        if(story == 6){
            $('#title-text3').css('display','none');
             $('#interface5-img').css('display','block');
            $('#interface5-header').text('Metode Estimasi Harga Kapal Baru').append('<i class="material-icons left">subtitles</i>');
            $('#img-data').attr('src',$('#base_url').val() + 'assets/images/materi/cbd_3.png');
            $('#title-text1').css('display','block');
            $('#title-text1').text('Besar nilai porsentase pada cost break down structure estimation di bawah dapat dijadikan sebagai salah satu acuan pertimbangan dalam melakukan estimasi biaya komponen pembentuk harga kapal baru khususnya product oil tanker kategori small tanker di bawah 10.000 dwt.');
        }

        if(story == 7){
             window.location=$('#base_url').val() + 'quiz_cost';
        }
        
    });

})

function get_table_data(argument) {
    console.log('asd');
    var url = $('#base_url').val() + 'material_costs/get_table_data?label_number=' + argument;
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

    // if(get_two_table){
    //     url = $('#base_url').val() + 'material_costs/get_table_data?label_number=3';
    //     $('#table2').empty();
    //     html2 = '';
    //     $.getJSON(url, function(data){
    //         console.log(data);
    //         for(var key in data){
    //             html2 += '<tr><td>'+data[key].label_name+'</td><td>'+data[key].label_text+'</td></tr>'
    //         }

    //         $('#table2').append(html2);
    //     });        
    // }

}