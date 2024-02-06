<%@ Page Language="C#" Inherits="StockMarket.Sign" Debug="true" 
CodeFile="BusinessLogic/Sign.aspx.cs" %>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width",initial-scale=1.0>
        <title>forms</title>
        <!-- <link rel="StyleSheet" href="Styles/LogStock.css"> -->
       
    </head>
    <body>
        <div class="div1">
        <form runat="server" id="form">
            <h1>Hello</h1>
           
           <p>TEsting</p> 
            <div class="box" id="form1" style="display:none">
                <h1><u>Broker SignUp</u></h1>
                <div class="div2">
                    <!-- <label>Broker Id</label>
                    <input class="input" type="text" id="brokerid" placeholder="Enter Your BrokerId" runat="server">
                    <div class="error"></div> -->
                </div>
                <div class="div2">
                    <label>Broker Name</label>
                    <input class="input" type="text" id="brokername" placeholder="Enter Your Name" runat="server">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Entity Type</label>
                    <select id="entitytype" runat="server">
                        <option value="Corporate">Corporate</option>
                        <option value="Individual">Individual</option>
                    </select>
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Broker Type</label>
                    <select id="brokertype" runat="server">
                        <option value="Full-Time Broker">Full-Time Broker</option>
                        <option value="Discount Broker">Discount Broker</option>
                    </select>
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label id="locationlabel">Location</label>
                    <textarea type="text" id="location" runat="server" placeholder="Enter The Location"></textarea>
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Email</label>
                    <input class="input" type="text" runat="server" id="email" placeholder="Enter The Email">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Password</label>
                    <input class="input" runat="server" type="password" id="password">
                    <div class="error"></div>
                </div>
                <div class="div2"> <label>User Type</label>
                    <asp:dropdownList id="usertype" runat="server"></asp:dropdownList></div>
                </div>
                
                <input class="submit" runat="server" type="Submit" id="submit" onserverclick="BrokerSignUp">
            </div>


            <div id="form2" class="box" style="display:none">

                <h1><u>Company SignUp</u></h1>
                <div class="div2">
                    <label>Scrip Number</label>
                    <input class="input" runat="server" type="text" id="scripno"
                        placeholder="Enter Your Company ScripNo">
                        <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Company Id</label>
                    <input class="input" runat="server" type="text" id="companyid"
                        placeholder="Enter Your Company ID">
                        <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Company Name</label>
                    <input class="input" runat="server" type="text" id="companyname"
                        placeholder="Enter Your Company Name">
                        <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Company Type</label>
                    <asp:DropDownList id="companytype" runat="server" required placeholder="--Select--">
                    </asp:DropDownList>
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Location</label>
                    <textarea class="input" runat="server" type="text" id="location1"></textarea>
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Started Date</label>
                    <input type="text" runat="server" class="input" id="starteddate">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Email</label>
                    <input type="text" runat="server" class="input" id="email1">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Company Contact Number</label>
                    +91<input class="input" runat="server" type="text" id="companycontactnumber" minlength="10" maxlength="10">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Company Pan Number</label>
                    <input class="input" runat="server" type="text" id="companypannumber" minlength="10" maxlength="10">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Password</label>
                    <input class="input" runat="server" type="text" id="password1">
                    <div class="error"></div>
                </div>
                <div class="div2"> <label>User Type</label>
                    <asp:dropdownList id="usertype1" runat="server"></asp:dropdownList></div>
                </div>
               
                <input class="submit" runat="server" type="Submit" id="submit2" onserverclick="CompanySignUp">
          
            </div>


            <div id="form3" class="box" style="display:none">

                <h1><u>Investor SignUp</u></h1>
                <div class="div2">
                    <label>Investor Name</label>
                    <input class="input" runat="server" type="text" id="investorname"
                     placeholder="Enter the Invester Name">
                     <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Type of investor</label>
                    <select id="typeofinvestor" runat="server">
                        <option value="Individual Investor">Individual Investor</option>
                        <option value="Institutional Investor">Institutional Investor</option>
                    </select>
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Mobile No</label>
                    <input type="text" runat="server" class="input" id="mobileno2" minlength="10" maxlength="10">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Email</label>
                    <input type="text" runat="server" class="input" id="email2">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Address</label>
                    <textarea class="input" runat="server" type="text" id="address"></textarea>
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Choose Broker</label>
                    <asp:DropDownList id="choosebroker" runat="server">
                    </asp:DropDownList>
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Pan Card Number</label>
                    <input class="input" runat="server" type="text" id="pancardnumber" minlength="10" maxlength="10">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Account Number</label>
                    <input class="input" runat="server" type="text" id="accountnumber" minlength="12" maxlength="16">
                    <div class="error"></div>
                </div>
                <div class="div2">
                    <label>Password</label>
                    <input class="input" runat="server" type="text" id="password2">
                    <div class="error"></div>
                </div>
                <div class="div2"> <label>User Type</label>
                    <asp:dropdownList id="usertype2" runat="server"></asp:dropdownList></div>
                </div>
             
                <input class="submit" runat="server" type="Submit" id="submit3" onserverclick="InvestorSignUp">
            </div>


            <div id="form4" class="box" style="display:none">
                <h2 id="h2">Log In</h2>
                 <br>
                <div class="div2"> <label>UserName</label>
                    <input type="text" id="username" runat="server" 
                    placeholder="Enter your UserName"></div>
                    <br>
                <div class="div2"> <label>Password</label>
                    <input type="password" id="password3" runat="server" 
                    placeholder="Enter your Password" ></div>
                    <br>
                    <div class="div2"> <label>UserType</label>
                        <asp:dropdownList id="usertype3" runat="server"></asp:dropdownList></div>
                    <br>
                <input type="submit" id="Submitbtn" 
                runat="server" onserverclick="SubmitClick">
            </div>
             
        </form>
        <p>Test by Narendiran</p>
        <img src="Photo.png">
        <div class="photo">
            <h1>Hi Someshwari</h1>
            <p>Fetch git</p>
        </div>
    </body>
    
</html>