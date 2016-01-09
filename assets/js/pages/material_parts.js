$(document).ready(function(){

    var story = 0;
    console.log(story);
    $('#interface3-btn-nav').click(function(){
         console.log(story);
        story++;
        $('#interface3-story1').css('display', 'none');

        $('#interface3-header').text('Komponen Biaya Pembentuk (Cost Breakdown Structure) Harga Kapal Baru').append('<i class="material-icons left">subtitles</i>');
        $('#interface3-title').css('display','none');
        $('#interface3-chart').css('display','block');

        if(story == 1){
            get_interface3_chart();
        }
        if(story == 2){
            window.location=$('#base_url').val() + 'quiz_parts';
        }
        
    })

})

function get_interface3_chart(){
    url = $('#base_url').val() + 'quiz_parts/knowledge'

    $.getJSON(url, function(data) {
        console.log(data);
        $('#interface3-chart').getOrgChart({
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

// function get_interface4_games(){
//     url = $('#base_url').val() + 'material_parts/json_operation/json_games'

//     $.getJSON(url, function(data) {
//         console.log(data);
//         $('#interface3-chart').getOrgChart({
//                     color: "blue",
//                     theme: "vivian",
//                     primaryColumns: ["jawaban"],
//                     imageColumn: "image",
//                     editable: true,
//                     orientation: getOrgChart.RO_RIGHT,
//                     dataSource: data
                  
//                 });    
//     })   

//     $("#interface3-chart").on("updateEvent", function(event, sender, args) {
//         // console.log(args.data.answer);
//         console.log(args.id);
//         url = $('#base_url').val() + 'material_parts/json_operation/json_answer?id=' + args.id + '&answer=' + args.data.jawaban
//         $.getJSON(url, function(result){
//             console.log(result);
//             alert(result);
//         })

        
//     });
// }




