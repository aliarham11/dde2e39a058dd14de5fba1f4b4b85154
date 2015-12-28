$(document).ready(function(){

    var story = 0;

    $('#interface3-btn-nav').click(function(){
        story++;
        $('#interface3-story1').css('display', 'none');

        $('#interface3-header').text('Komponen Biaya Pembentuk Harga Kapal Baru').append('<i class="material-icons left">subtitles</i>');
        $('#interface3-title').css('display','none');
        $('#interface3-chart').css('display','block');
        if(story == 1){
            get_interface3_chart();
        }
        if(story == 2){
            get_interface3_chart_games();
        }
        
    })

})

function get_interface3_chart(){
    url = $('#base_url').val() + 'base/interface3/json'

    $.getJSON(url, function(data) {
        console.log(data);
        $('#interface3-chart').getOrgChart({
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

function get_interface3_chart_games(){
    url = $('#base_url').val() + 'base/interface3/json_games'

    $.getJSON(url, function(data) {
        console.log(data);
        $('#interface3-chart').getOrgChart({
                    color: "blue",
                    theme: "vivian",
                    primaryColumns: ["name"],
                    imageColumn: "image",
                    editable: true,
                    orientation: getOrgChart.RO_RIGHT,
                    dataSource: data
                  
                });    
    })   
}




