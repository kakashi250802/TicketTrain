var nav = document.querySelector(".header-navbar");
var listItems = document.querySelector(".menu-list")
document.querySelector(".nav-toggler").addEventListener("click", e =>{
  nav.classList.toggle("show-nav");
  listItems.classList.toggle("showmenu");
    
})