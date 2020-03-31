if ($(window).width() < 768) {
    $(".main_signin_form").css("height", $(window).height() - $("#header").height());
}
let main_form_container_height = $(window).height() - $("#header").height() -30;
$(".main_form_container").css("height", main_form_container_height);
$(".form_container_control").css("height",main_form_container_height);
$(".info_container_signin").css("height",main_form_container_height);