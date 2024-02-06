function validForm1() {

    var CompanyId_ip = $("#CompanyId").val();
    var CompanyName_ip = $("#CompanyName").val();
    var Location1_ip = $("#Location1").val();
    var Email1_ip = $("#Email1").val();
    var CompanyContactNumber_ip = $("#CompanyContactNumber").val();
    var CompanyPanNumber_ip = $("#CompanyPanNumber").val();
    var Password1_ip = $("#Password1").val();
    
    $(".error").remove();
    
    var valid = true;
    
    if ($.trim(CompanyId_ip) == "") {
    
    var error = $("<span class='error' style='color:red'>Please Enter a CompanyId</span>");
    
    $("#CompanyId").after(error);
    
    valid = false;
    }
    
    if ($.trim(CompanyName_ip) == "" ||( (!isNaN(CompanyName_ip)))) {
    
    var error = $("<span class='error' style='color:red'>Please Enter Valid CompanyName</span>");
    
    $("#CompanyName").after(error);
    
    valid = false;
    }

    if ($.trim(Location1_ip) == "" ||( (!isNaN(Location1_ip)))) {
    
        var error = $("<span class='error' style='color:red'>Please Enter Valid Location</span>");
        
        $("#Location1").after(error);
        
        valid = false;
        }
    
    // Validate email field
    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if ($.trim(Email1_ip) == "" || !emailRegex.test(Email1_ip)) {
    var error = $("<span class='error' style='color:red'>Please Enter Valid Email</span>");
    $("#Email1").after(error);
    valid = false;
    }

    var phoneRegex = /^\d{10}$/;
    if ($.trim(CompanyContactNumber_ip) == "" || !phoneRegex.test(CompanyContactNumber_ip)) {
    var error = $("<span class='error' style='color:red'>Please Enter Valid ContactNumber</span>");
    $("#CompanyContactNumber").after(error);
    valid = false;
    }

    var panRegex = /^[A-Z]{5}\d{4}[A-Z]$/;
    if ($.trim(CompanyPanNumber_ip) == "" || !panRegex.test(CompanyPanNumber_ip)) {
    var error = $("<span class='error' style='color:red'>Please Enter Valid PanNumber</span>");
    $("#CompanyPanNumber").after(error);
    valid = false;
    }
    
    
    
    
    var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$/;
   if ($.trim(Password1_ip) == "" || !passwordRegex.test(Password1_ip)) {
    var error = $("<span class='error' style='color:red'>Please Enter Valid Password</span>");
   $("#Password1").after(error);
   valid = false;
   }
    
    return valid;
    }
