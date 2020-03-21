// Get the modal
var modal = document.getElementById("myModal");
var modal_in = document.getElementById("myModal_in");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");
var btn_sign_in = document.getElementById("myBtn_sign_in");

// Get the <span> element that closes the modal
var span = document.getElementById("close_sign_up");
var span_in = document.getElementById("colseIt");

// When the user clicks the button, open the modal 
btn.onclick = function () {
    modal.style.display = "block";
}
btn_sign_in.onclick = function () {
    modal_in.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
    modal.style.display = "none";
}
span_in.onclick = function () {
    modal_in.style.display = "none";
    
}
console.log(span);
console.log(span_in);

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
    if (event.target == modal_in) {
        modal_in.style.display = "none";
    }
    
}