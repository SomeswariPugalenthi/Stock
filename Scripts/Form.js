// function validForm() {
    
//     var BrokerName_ip = $("#BrokerName").val();
//     var Location_ip = $("#Location").val();
//     var Email_ip = $("#Email").val();
//     var Password_ip = $("#Password").val();
   
//     $(".error").remove();
   
//     var valid = true;
   
//     if ($.trim(BrokerName_ip) == ""||( (!isNaN(BrokerName_ip)))) {
   
//     var error = $("<span class='error' style='color:red'>Please Enter a valid Name</span>");
  
//     $("#BrokerName").after(error);
   
//     valid = false;
//     }
  
//     if ($.trim(Location_ip) == "" ||( (!isNaN(Location_ip)))) {
   
//     var error = $("<span class='error' style='color:red'>Please Enter Valid Location</span>");
    
//     $("#Location").after(error);
    
//     valid = false;
//     }

//     if ($.trim(Email_ip) == "") {
//         var error = $("<span class='error' style='color:red'>Please Enter Valid Email</span>");
//         $("#Email").after(error);
//         valid = false;
//     }
    
//     if ($.trim(Password_ip) == "") {
//         var error = $("<span class='error' style='color:red'>Please Enter Valid Password</span>");
//         $("#Password").after(error);
//         valid = false;
//     }
   
//     return valid;
//     }
function validForm() {

    var BrokerName_ip = $("#BrokerName").val();
    var Location_ip = $("#Location").val();
    var Email_ip = $("#Email").val();
    var Password_ip = $("#password").val();
    
    $(".error").remove();
    
    var valid = true;
    
    if ($.trim(BrokerName_ip) == ""||( (!isNaN(BrokerName_ip)))) {
    
    var error = $("<span class='error' style='color:red'>Please Enter a valid Name</span>");
    
    $("#BrokerName").after(error);
    
    valid = false;
    }
    
    if ($.trim(Location_ip) == "" ||( (!isNaN(Location_ip)))) {
    
    var error = $("<span class='error' style='color:red'>Please Enter Valid Location</span>");
    
    $("#Location").after(error);
    
    valid = false;
    }
    
    // Validate email field
    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if ($.trim(Email_ip) == "" || !emailRegex.test(Email_ip)) {
    var error = $("<span class='error' style='color:red'>Please Enter Valid Email</span>");
    $("#Email").after(error);
    valid = false;
    }
    
    // Validate password field
    // var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$/;
    // if ($.trim(Password_ip) == "" || !passwordRegex.test(Password_ip)) {
    // var error = $("<span class='error' style='color:red'>Please Enter Valid Password</span>");
    // $("#Password").after(error);
    // valid = false;
    // }
    var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$/;
   if ($.trim(Password_ip) == "" || !passwordRegex.test(Password_ip)) {
    var error = $("<span class='error' style='color:red'>Please Enter Valid Password</span>");
   $("#password").after(error);
   valid = false;
   }
    
    return valid;
    }
    