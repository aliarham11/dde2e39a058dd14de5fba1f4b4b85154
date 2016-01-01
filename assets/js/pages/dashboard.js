$(document).ready(function(){
  get_score_avg_graph();
})

function get_score_avg_graph(){

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

    new Chart(document.getElementById("score-avg-graph").getContext("2d")).Line(LineChartSampleData,{
        responsive:true,
        xAxisLabel : 'Title of X Axis',
        yAxisLabel : 'Title of Y Axis'
    });

        
}