$(document).ready(function(){

    var story = 1;
    get_interface6_chart();
    
    $('#interface6-btn-nav').click(function(){

        story++;

        if(story == 2 || story == 4){
            $('#interface6-img').css('display','block');
            $('#interface6-chart').css('display','none');
            $('#interface6-notes').css('display','none');
            $('#interface6-graph').css('display','none');
            
            if(story == 2){
              $('#interface6-title p').text('Data Kapal Yang Digunakan Sebagai Pembentuk Pengetahuan Dan Kemahiran');  
            }

            if(story == 4){
              $('#interface6-title p').text('Katalog Mesin');   
            }
        }

        if(story == 3 || story == 5 || story == 6){
            $('#interface6-img').css('display','none');
            $('#interface6-chart').css('display','none');
            $('#interface6-notes').css('display','none');
            $('#interface6-graph').css('display','block');
            
            if(story == 3){
              $('#interface6-title p').text('Hasil Analisis Data Dalam Representasi Regresi Pada Driving Parameters');
            }

            if(story == 5){
              $('#interface6-title p').text('Light Weight');
            }

            if(story == 6){
              $('#interface6-title p').text('Weight of Steel');
            }
            
            get_interface6_graph();
        }

        if(story == 7){
          window.location=$('#base_url').val() + 'interface_6/tables';
        }



    });

})

function get_interface6_chart(){
    url = $('#base_url').val() + 'interface_6/get_chart'

    $.getJSON(url, function(data) {
        console.log(data);
        $('#interface6-chart').getOrgChart({
                    color: "blue",
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




