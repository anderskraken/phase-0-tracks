// TEMPLATE

// $(document).ready(function() {
//     $('elementToInteractWith').event(function() {
//         $('elementToAffect').effect();
//     });
// });

// append text

$(document).ready(function(){
    $("#button2").click(function(){
        $("#yet-more").append(": <em>The cat is not harmed by rotatation.</em>");
    });

    $("#button1").click(function(){
        $("#cat").animate({
            transform: 'rotate(7deg)'
        });
    });
});
