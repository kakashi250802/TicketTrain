let startPlace = document.querySelector(".first-place")
let endPlace = document.querySelector(".finally-place")
let timeBooking = document.querySelector(".timeBooking")

document.querySelector("#form1wwww").addEventListener("submit", e => {
    //e.preventDefault(); 
  localStorage.setItem("startPlace",startPlace.value)
  localStorage.setItem("endPlace",startPlace.value)
    localStorage.setItem("timeBooking", timeBooking.value)
})