$(document).ready(function(){

    var story = 0;

    get_interface4_games();
    // get_interface3_chart();
    $('#interface4-btn-modal').click(function () {
        console.log("screw you");
        get_interface3_chart();
    })
})

function get_interface3_chart(){
    url = $('#base_url').val() + 'quiz_parts/knowledge'

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


function get_interface4_games(){
    url = $('#base_url').val() + 'quiz_parts/get_question'

    $.getJSON(url, function(data) {
        console.log(data);
        $('#interface4-chart').getOrgChart({
                    color: "blue",
                    theme: "vivian",
                    primaryColumns: ["name"],
                    imageColumn: "image",
                    editable: true,
                    orientation: getOrgChart.RO_RIGHT,
                    dataSource: data
                  
                });    
    })   


    $("#interface4-chart").on("updateEvent", function(event, sender, args) {
        // console.log(args.data.answer);
        var part_id = '#part_' + args.id;
        console.log(part_id);
        $(part_id).val(args.data.name);
        // console.log(args.id);
        // url = $('#base_url').val() + 'material_parts/json_operation/json_answer?id=' + args.id + '&answer=' + args.data.jawaban
        // $.getJSON(url, function(result){
        //     console.log(result);
        //     alert(result);
        // })

        
    });
}




