var btnContainer = document.getElementById("menulist");

// Get all buttons with class="btn" inside the container
var btns = btnContainer.getElementsByClassName("item");

// Loop through the buttons and add the active class to the current/clicked button

if (window.location.href == 'https://localhost:44360/index.aspx') {
    btns[1].classList.remove("active");
    btns[0].className += " active";
} else if (window.location.href == 'https://localhost:44360/chuyenDi.aspx') {
    btns[0].classList.remove("active");
    btns[1].className += " active";
}