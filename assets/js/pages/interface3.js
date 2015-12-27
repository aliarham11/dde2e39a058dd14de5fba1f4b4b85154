$(document).ready(function(){

    $('#interface3-btn-nav').click(function(){
        $('#interface3-story1').css('display', 'none');

        $('#interface3-header').text('Komponen Biaya Pembentuk Harga Baru').append('<i class="material-icons left">subtitles</i>');
        $('#interface3-title').css('display','none');
        $('#interface3-chart').css('display','block');
        get_interface3_chart();
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




