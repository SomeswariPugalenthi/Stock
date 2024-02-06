// const form_ip=document.querySelector('#form');
// const BrokerId_ip=document.querySelector('#BrokerId');
// const BrokerName_ip=document.querySelector('#BrokerName');
// const EntityType_ip=document.querySelector('#EntityType');
// const BrokerType_ip=document.querySelector('#BrokerType');
// const Location_ip=document.querySelector('#Location');
// const Email_ip=document.querySelector('#Email');
// const Password_ip=document.querySelector('#Password');



// form_ip.addEventListener('submit',(e)=>{
   
//     if(!validation()){
//         e.preventDefault();
//     }
// })

//     function validation()
//     { 
//         const BrokerIdval=BrokerId.value.trim();
//         const BrokerNameval=BrokerName.value.trim(); 
//         const EntityTypeval=EntityType.value.trim(); 
//         const BrokerTypeval=BrokerType.value.trim(); 
//         const Locationval=Location.value.trim(); 
//         const Emailval=Email.value.trim(); 
//         const Passwordval=Password.value.trim();
//         const UserTypeval=UserType.value.trim();  

//         let success=true;
        

//         if(BrokerIdval==="")
//         {
//             success= false;
//             setError(Brokerd,'BrokerId is Invalid')
           
           
//         }
//         else{
//             setSuccess(BrokerId)
            
//         }
       
//         // if(VendorNameval===""||(!isNaN(VendorNameval)))
//         // {
//         //     success= false;
//         //     setError(VendorName,'Please Enter your Name')
           
           
//         // }
//         // else{
//         //     setSuccess(VendorName)
            
//         // }
//         // if(Addressval==="")
//         // {
//         //     success= false;
//         //     setError(Address,'Please Fill Your Address')
           
           
//         // }
//         // else{
//         //     setSuccess(Address)
            
//         // }
//         // if(PhoneNoval===""||(isNaN(PhoneNoval)))
//         // {
//         //     success= false;
//         //     setError(PhoneNo,'Please Enter a valid PhoneNo')
            
           
//         // }
//         // else{
//         //     setSuccess(PhoneNo)
            
//         // }
//         // if(PanNumberval==="")
//         // {
//         //     success= false;
//         //     setError(PanNumber,'Please Fill This Field')
           
           
//         // }
//         // else if(PanNumberval!==(/^[A-Z]{5}[0-9]{4}[A-Z]{1}$/))
//         // {
//         //     success= false;
//         //     setError(PanNumber,'Please Fill a Valid Pan Card Number')
//         // }
//         // else{
//         //     setSuccess(PanNumber)
            
//         // }
       
        
        
       
//         return success;
       
//     }
  
// function setError(element,message)
// {
//      C1=element.parentElement;
//     errorElement=C1.querySelector('.error')

//     errorElement.innerText=message;
//     C1.classList.add('error')
//     C1.classList.remove('success')

// } 
// function setSuccess(element)
// {
//     C1=element.parentElement;
//     errorElement=C1.querySelector('.error')

//     errorElement.innerText= ' ';
//     C1.classList.add('success')
//     C1.classList.remove('error')

// } 
function validation()
         {
            var BrokerId_ip=document.getElementById("BrokerId").value;
            if(BrokerId_ip.trim()==''){
                alert("Please Enter a Valid Credit Card Number")
                return false;
               

            }
            // var AccountHolderName_ip=document.getElementById("AccountHolderName").value;
            // if(AccountHolderName_ip.trim()==''||(!isNaN(AccountHolderName_ip)))
            // {
            //     alert("Please Enter your name")
            //     return false;
            // }
            
            // var CVV_ip=document.getElementById("CVV").value;
            // if(CVV_ip.trim()==''||isNaN(CVV_ip))
            // {
            //     alert("Please Enter a Valid CVV")
            //     return false;

            // }
            // var ExpiryDate_ip=document.getElementById("ExpiryDate").value;
            // if(ExpiryDate_ip.trim()=='')
            // {
            //     alert("Please Enter Your ExpiryDate of Credit Card")
            //     return false;

            // }
            // var Amount_ip=document.getElementById("Amount").value;
            // if(Amount_ip.trim()==''||isNaN(Amount_ip))
            // {
            //     alert("Please Enter a valid amount")
            //     return false;

            // }
           
        alert("You have Sucessfully filled the form ")
        return true;
 
        }
       

