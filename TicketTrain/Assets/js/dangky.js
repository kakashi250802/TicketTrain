﻿var fname = document.getElementById('hoten').value;
var pnumber = document.getElementById('phoneNumber').value;
var inputTexts = document.querySelectorAll("input[type='text']")
function formValidation() {
  // var genderNam = document.getElementById('genderFeMale').value;
  // var genderNu = document.getElementById('genderMale').value;
   /* var country = document.getElementById('country').value;
  var email = document.getElementById('e-mail').value;
  var password = document.getElementById('password').value;
  var text = "";
  */

if (fullName(fname)) {
}
}
if (PhoneNumber(pnumber)) {
}
/*
if (Country(country)) {
}
if (Email(email)) {
}
if (Password(password)) {
}
return false;
}
*/
/*first name input validation*/
function fullName(fname) {
var message = document.getElementsByClassName("error-message");
var letters = /^[A-Za-ză-ư]+$/;
if ( fname =="" || fname.match(letters)) {
  text="";
  message[0].innerHTML = text;
  return true;
}

else {
  text="Tên chỉ được chứa các chữ cái";
  message[0].innerHTML = text;
  return false;
}
}

/*last name input validation*/
function  LastName(lname) {
var message = document.getElementsByClassName("error-message");
var letters = /^[0-9]+$/;
if ( lname =="" || !lname.match(letters)) {
  text="";
  message[1].innerHTML = text;
  return true;
}

else {
  text="Last name should contain only letters";
  message[1].innerHTML = text;
  return false;
}
}

/*email address input validation*/
function Email(email) {
var message = document.getElementsByClassName("error-message");
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
var atpos = email.indexOf("@");
var dotpos = email.lastIndexOf(".");
        
if ( email =="" || email.match(mailformat) || atpos > 1 && ( dotpos - atpos > 2 )) {
  text="";
  message[2].innerHTML = text;
  return true;
}
       
else {
  text="Wrong email format";
  message[2].innerHTML = text;
  return false;
}
}

/*phone number validation*/
function  PhoneNumber(pnumber) {
var message = document.getElementsByClassName("error-message");
var numbers = /^[0-9]+$/;
if ( pnumber =="" || pnumber.match(numbers)) {
  text="";
  message[3].innerHTML = text;
  return true;
}

else {
  text="Phone number should contain only numbers";
  message[3].innerHTML = text;
  return false;
}
}


/*country input validation*/
function  Country(country) {
var message = document.getElementsByClassName("error-message");
var letters = /^[A-Za-z]+$/;
if ( country =="" || country.match(letters)) {
  text="";
  message[4].innerHTML = text;
  return true;
}

else {
  text="Country name should contain only letters";
  message[4].innerHTML = text;
  return false;
}
}

/*validate password*/
function Password(password) {
var message = document.getElementsByClassName("error-message");
var illegalChars = /[\W_]/; // allow only letters and numbers
if (illegalChars.test(password)) { 
  text="Password contains illegal characters";
  message[5].innerHTML = text;
  return false;
}
else if ( (password.search(/[0-9]+/)==-1) ) {
  text="Password should contain at least one number";
  message[5].innerHTML = text;
  return false;
}
else {
  text="";
  message[5].innerHTML = text;
  return true;
}
}
document.querySelector(".btn-dangky").addEventListener("click", (e)=>{
  //e.preventDefault();
 // formValidation();
    //validateFullName();
    
   /* inputTexts.forEach(e => {
        e.style.backgroundColor = "red";
    })
    alert("hmmmm");*/
})
// const validateFullName = () => {
//   fname.addEventListener("change", (e)=>{
//     formValidation();
    
//   })
// }