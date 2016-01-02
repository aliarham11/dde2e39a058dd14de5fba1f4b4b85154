$(document).ready(function(){

  get_score_avg_graph();

  $('#graph-filter').change(function(){
    get_score_avg_graph();    
  })

})

function get_score_avg_graph(){


    var url = $('#base_url').val() + 'users/get_score';
    $.ajax({
      url : url,
      data : { 'level' : $('#graph-filter').val() },
      method : 'post',
      dataType : 'json',
      success : function(data){
        console.log(data[0].score_parts);
        var LineChartSampleData = {
        labels: ["Quiz Tebak Parts", "Quiz Tebak Regresi ", "Quiz Tebak Cost"], 
        datasets: [{
         label: "My Second dataset",
         fillColor: "rgba(151,187,205,0.2)",
         strokeColor: "rgba(151,187,205,1)",
         pointColor: "rgba(151,187,205,1)",
         pointStrokeColor: "#fff",
         pointHighlightFill: "#fff",
         pointHighlightStroke: "rgba(151,187,205,1)",
         data: [data[0].score_parts, data[0].score_regresi, data[0].score_costs] 
        }]
       };

      new Chart(document.getElementById("score-avg-graph").getContext("2d")).Line(LineChartSampleData,{
          responsive:true,
          xAxisLabel : 'Games',
          yAxisLabel : 'Total Score'
      });
      }
    })

    

        
}