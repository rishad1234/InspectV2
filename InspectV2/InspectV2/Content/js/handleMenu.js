var getCurrentLoc = window.location.href;
if (getCurrentLoc.includes("About")) {
    $("#About").addClass("active");
    $("#Event").removeClass("active");
    $("#JobPost").removeClass("active");
    $("#river").removeClass("active");
    $("#Contact").removeClass("active");
    $("#Home").removeClass("active");
} else if (getCurrentLoc.includes("Event")) {
    $("#About").removeClass("active");
    $("#Event").addClass("active");
    $("#JobPost").removeClass("active");
    $("#river").removeClass("active");
    $("#Contact").removeClass("active");
    $("#Home").removeClass("active");
} else if (getCurrentLoc.includes("JobPost")) {
    $("#About").removeClass("active");
    $("#Event").removeClass("active");
    $("#JobPost").addClass("active");
    $("#river").removeClass("active");
    $("#Contact").removeClass("active");
    $("#Home").removeClass("active");
} else if (getCurrentLoc.includes("river")) {
    $("#About").removeClass("active");
    $("#Event").removeClass("active");
    $("#JobPost").removeClass("active");
    $("#river").addClass("active");
    $("#Contact").removeClass("active");
    $("#Home").removeClass("active");
} else if (getCurrentLoc.includes("Contact")) {
    $("#About").removeClass("active");
    $("#Event").removeClass("active");
    $("#JobPost").removeClass("active");
    $("#river").removeClass("active");
    $("#Contact").addClass("active");
    $("#Home").removeClass("active");
} else {
    $("#About").removeClass("active");
    $("#Event").removeClass("active");
    $("#JobPost").removeClass("active");
    $("#river").removeClass("active");
    $("#Contact").removeClass("active");
    $("#Home").addClass("active");
}