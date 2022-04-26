//  get variable
var btnsubmit = document.querySelector('.loginbtn');
var inputPassword = document.querySelector('.loginPass')
// add event listener for btn submit
btnsubmit.addEventListener('click', e =>{
  // e.preventDefault();
  //validate email and password
  if(!validateemail()){
    e.preventDefault();
    alert("vui lòng kiểm tra lại email");  
  }
  if(!validatePassword()){
    e.preventDefault();
    alert("vui lòng kiểm tra lại pass");  
  }
})
// validate email
const validateemail = ()  =>{  
var x=document.querySelector('#loginEmail').value.trim();  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  // vị trí cuối cùng của dấu chấm 
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  // alert("vui lòng kiểm tra lại email");  
  return false;  
}  
return true;  

}
// atposition < 1 => x = @
// atposition = -1 => x = ''
// dotposition<atposition+2  nếu mà dấu chấm cuối cùng trước vị trí của @ thì trả về false duon.g@gmailcom
//dotposition+2>=x.length duon.g@gmailcom.
// mật khẩu phải có ít nhất 6 ký tự và ko có ký tự đặc biệt max 20 ký tự => 9hj45
// When the user starts to type something inside the password field
const validatePassword = () => {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  var upperCaseLetters = /[A-Z]/g;
  var numbers = /[0-9]/g;
  if(inputPassword.value.match(lowerCaseLetters)&& inputPassword.value.match(upperCaseLetters)&& inputPassword.value.match(numbers)&&inputPassword.value.length >= 8) {  
   return true;
  // alert("vui lòng kiểm tra lại pass");  
  } 
  // Validate capital letters
  
  // Validate numbers

  // Validate length

  return false;
}