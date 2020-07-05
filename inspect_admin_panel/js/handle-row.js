$(".publish").click(function(e) {
    e.preventDefault();
    $(this).css("background", "#28a746");
    $(this).css("color", "#fff");
    // change unpublish color
    $(".unpublish").css("background", "#fff");
    $(".unpublish").css("color", "#dc3545");
})

$(".unpublish").click(function(e) {
    e.preventDefault();
    // change unpublish btn color
    $(this).css("background", "#dc3545");
    $(this).css("color", "#fff");
    // change publish btn color
    $(".publish").css("background", "#fff");
    $(".publish").css("color", "#28a746");
})