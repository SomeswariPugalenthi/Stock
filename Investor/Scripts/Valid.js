// function validCredit()
//          {
//             var NumberOfShares_ip=document.getElementById("NumberOfShares").value;
//             if(NumberOfShares_ip.trim()==''||(isNaN(NumberOfShares_ip))){
//                 alert("Please Enter a valid NumberOfShares You want to Buy")
//                 return false;
               

//             }
//             var Price_ip=document.getElementById("Price").value;
//             if(Price_ip.trim()==''||(isNaN(Price_ip)))
//             {
//                 alert("Please Enter Valid Price")
//                 return false;
//             }
            
       
//         return true;
 
//         }

function validCredit() {
    // get the values of the input fields using jQuery selectors
    var NumberOfShares_ip = $("#NumberOfShares").val();
    var Price_ip = $("#Price").val();
    // remove any previous error messages
    $(".error").remove();
    // initialize a flag to indicate if the inputs are valid
    var valid = true;
    // check if the NumberOfShares input is empty or not a number
    if ($.trim(NumberOfShares_ip) == "" || isNaN(NumberOfShares_ip)) {
    // create a span element with the error message and the style
    var error = $("<span class='error' style='color:red'>Please Enter a valid NumberOfShares You want to Buy</span>");
    // append the error element after the input element
    $("#NumberOfShares").after(error);
    // set the flag to false
    valid = false;
    }
    // check if the Price input is empty or not a number
    if ($.trim(Price_ip) == "" || isNaN(Price_ip)) {
    // create a span element with the error message and the style
    var error = $("<span class='error' style='color:red'>Please Enter Valid Price</span>");
    // append the error element after the input element
    $("#Price").after(error);
    // set the flag to false
    valid = false;
    }
    // return the flag value
    return valid;
    }
       