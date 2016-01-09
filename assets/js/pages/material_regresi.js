$(document).ready(function(){

    var story = 0;

    $('#interface6-title p').css('display','none');
    $('#interface6-img').css('display','none');
    $('#interface6-chart').css('display','none');
    $('#interface6-notes').css('display','none');
    $('#interface6-graph').css('display','none'); 

    


    
    $('#interface6-btn-nav').click(function(){

        story++;
        if(story == 1){
          get_interface6_chart();
          $('#interface6-header').text('Interface 6.1').append('<i class="material-icons left">call_missed</i>');
          $('#interface6-title p').css('display','block');
          $('#interface6-intro').css('display','none');
          $('#interface6-chart').css('display','block');
          $('#interface6-notes').css('display','block');
          $('#interface6-graph').css('display','none');  
        }
        
        if (story == 2) {
          $('#interface6-title p').text('Keterangan Pemahaman');
          $('#interface6-chart').css('display','none');
          $('#interface6-notes').css('display','none');
          $('#interface6-content').css('display','block');
        }

        if (story == 3) {
          $('#interface6-header').text('Interface 6.2').append('<i class="material-icons left">call_missed</i>');
          $('#interface6-title p').text('Pahami trendline dan formulasi hasil analisa 3 parameter berikut');
          $('#interface6-content').css('display','none');
          $('#interface6-intro2').css('display','block');
        }   
            
        // if(story == 4){
        //   $('#interface6-title p').text('Data Kapal Yang Digunakan Sebagai Pembentuk Pengetahuan Dan Kemahiran');  
        //   $('#interface6-intro').css('display','none');
        //   $('#interface6-img').css('display','block');
        //   $('#interface6-chart').css('display','none');
        //   $('#interface6-notes').css('display','none');
        //   $('#interface6-graph').css('display','none');  
        // }

        if(story == 4){  
          $('#interface6-intro2').css('display','none');
          $('#interface6-img').css('display','block');
         $('#interface6-title p').text('Formula Regresi Dwt- Wst');
         $('#img-data').attr('src',$('#base_url').val() + 'assets/images/materi/3.png');
        }

        if(story == 5){
          $('#interface6-title p').text('Formula Dwt – Power Needs');   
          $('#img-data').attr('src',$('#base_url').val() + 'assets/images/materi/1.png');
        }

        if(story == 6){
          $('#interface6-title p').html('Tabel berikut adalah katalog mesin yang akan digunakan <br /> Gunakan type of engine yang memiliki simpangan atas terdekat dari power needs yang dibutuhkan <br /> Sebagai contoh jika formula regresi menunjukkan angka 2500 kw, maka gunakan type engine dengan power 2720');   
          $('#img-data').attr('src',$('#base_url').val() + 'assets/images/materi/Katalog Mesin.jpg');
        }

        if(story == 7){
          $('#interface6-title p').text('Formula Regresi Dwt - Lwt');   
          $('#img-data').attr('src',$('#base_url').val() + 'assets/images/materi/2.png');
        }
 

        if(story == 8){
          window.location=$('#base_url').val() + 'material_regresi/tables';
        }



    });

})

function get_interface6_chart(){
    url = $('#base_url').val() + 'material_regresi/get_chart'

    $.getJSON(url, function(data) {
        console.log(data);
        $('#interface6-chart').getOrgChart({
                    color: "darkred",
                    theme: "vivian",
                    primaryColumns: ["name"],
                    imageColumn: "image",
                    editable: false,
                    orientation: getOrgChart.RO_RIGHT,
                    dataSource: data
                  
                });    
    })    
}

function get_interface6_graph(){

    var LineChartSampleData = {
      labels: ["January", "February", "March", "April", "May", "June", "July"], //u just need to edit this
      datasets: [{
       label: "My First dataset",
       fillColor: "rgba(220,220,220,0.2)",
       strokeColor: "rgba(220,220,220,1)",
       pointColor: "rgba(220,220,220,1)",
       pointStrokeColor: "#fff",
       pointHighlightFill: "#fff",
       pointHighlightStroke: "rgba(220,220,220,1)",
       data: [65, 59, 80, 81, 56, 55, 40] //and this
      }, {
       label: "My Second dataset",
       fillColor: "rgba(151,187,205,0.2)",
       strokeColor: "rgba(151,187,205,1)",
       pointColor: "rgba(151,187,205,1)",
       pointStrokeColor: "#fff",
       pointHighlightFill: "#fff",
       pointHighlightStroke: "rgba(151,187,205,1)",
       data: [28, 48, 40, 19, 86, 27, 90] //and this
      }]
     };

    new Chart(document.getElementById("interface6-graph").getContext("2d")).Line(LineChartSampleData,{
        responsive:true,
        xAxisLabel : 'Title of X Axis',
        yAxisLabel : 'Title of Y Axis'
    });

        
}




