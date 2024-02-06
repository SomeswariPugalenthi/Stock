<%@ Page Language="C#" Inherits="StockMarket.SignUp" Debug="true" CodeFile="BusinessLogic/SignUp.aspx.cs" %>
    <!DOCTYPE html>

    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width" ,initial-scale=1.0>
        <title>forms</title>
        <style>
            #locationlabel,
            #location {
                vertical-align: middle;
            }
        </style>
        <script src="Scripts/jquery-3.5.1.js"></script>
        <script src="Scripts/SignUp.js"></script>
        <link rel="StyleSheet" href="Styles/SignUp.css">
        <script src="Scripts/Form.js"></script>
        <script src="Scripts/Form1.js"></script>
    </head>

    <body>
        <div class="div1">
            <form runat="server" id="form">

                <div class="dropdown">
                    <button type="button" class="dropbtn" id="SignUp">SignUp</button>
                    <button type="button" class="dropbtn1" id="LogIn">LogIn</button>

                    <div class="dropdown-content" style="display:none">
                        <br>
                        <a id="a1">Broker SignUp</a> <br><br>
                        <a id="a2">Company SignUp</a> <br><br>
                        <a id="a3">Investor SignUp</a> <br><br>
                    </div>

                    <div class="dropdown-content1" style="display:none">
                        <a id="a4">Exchange LogIn</a> <br>
                        <a id="a5">Broker LogIn</a> <br>
                        <a id="a6">Company LogIn</a> <br>
                        <a id="a7">Investor LogIn</a> <br>
                    </div>


                </div>


                <div class="box" id="form1" style="display:None">
                    <h1><u>Broker SignUp</u></h1>
                    <!-- <div class="div2">
                        <label>Broker Id</label>
                        <input class="input" type="text" id="BrokerId" placeholder="Enter Your BrokerId" runat="server">
                        <div class="error"></div>
                    </div> -->
                    <div class="div2">
                        <label>Broker Name</label>
                        <input class="input" type="text" id="BrokerName" placeholder="Enter Your Name" runat="server">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Entity Type</label>
                        <select id="EntityType" runat="server">
                            <option value="Corporate">Corporate</option>
                            <option value="Individual">Individual</option>
                        </select>
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Broker Type</label>
                        <select id="BrokerType" runat="server">
                            <option value="Full-Time Broker">Full-Time Broker</option>
                            <option value="Discount Broker">Discount Broker</option>
                        </select>
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label id="locationlabel">Location</label>
                        <textarea type="text" id="Location" runat="server" placeholder="Enter The Location"></textarea>
                        <div class="error"></div>
                    </div>

                    <div class="div2">
                        <label>Email</label>
                        <input class="input" type="text" runat="server" id="Email" placeholder="Enter The Email">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Password</label>
                        <input class="input" runat="server" type="Password" id="password">
                        <div class="error"></div>
                    </div>
                    <!-- <div class="div2"> <label>User Type</label>
                        <asp:dropdownList id="UserType" runat="server"></asp:dropdownList>
                    </div> -->

                    <input class="submit" runat="server" type="Submit" id="submit" onclick="return validForm()"
                        onserverclick="BrokerSignUp">
                </div>



                <div id="form2" class="box" style="display:None">

                    <h1><u>Company SignUp</u></h1>
                    <!-- <div class="div2">
                        <label>Scrip Number</label>
                        <input class="input" runat="server" type="text" id="ScripNo"
                            placeholder="Enter Your Company ScripNo">
                        <div class="error"></div>
                    </div> -->
                    <div class="div2">
                        <label>Company Id</label>
                        <input class="input" runat="server" type="text" id="CompanyId"
                            placeholder="Enter Your Company ID">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Company Name</label>
                        <input class="input" runat="server" type="text" id="CompanyName"
                            placeholder="Enter Your Company Name">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Company Type</label>
                        <asp:DropDownList id="CompanyType" runat="server" placeholder="--Select--">
                        </asp:DropDownList>
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Location</label>
                        <textarea class="input" runat="server" type="text" id="Location1"></textarea>
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Started Date</label>
                        <input type="text" runat="server" class="input" id="StartedDate">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Email</label>
                        <input type="text" runat="server" class="input" id="Email1">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Company Contact Number</label>
                        <input class="input" runat="server" type="text" id="CompanyContactNumber" minlength="10"
                            maxlength="10">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Company Pan Number</label>
                        <input class="input" runat="server" type="text" id="CompanyPanNumber" minlength="10"
                            maxlength="10">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Password</label>
                        <input class="input" runat="server" type="text" id="Password1">
                        <div class="error"></div>
                    </div>
                    <!-- <div class="div2"> <label>User Type</label>
                        <asp:dropdownList id="UserType1" runat="server"></asp:dropdownList>
                    </div> -->

                    <input class="submit" runat="server" type="Submit" id="submit1" onclick="return validForm1()" onserverclick="CompanySignUp">

                </div>


                <div id="form3" class="box" style="display:None">

                    <h1><u>Investor SignUp</u></h1>
                    <!-- <div class="div2">
                        <label>Investor Id</label>
                        <input class="input" runat="server" type="text" id="InvestorId"
                            placeholder="Enter the Invester Id">
                        <div class="error"></div>
                    </div> -->
                    <div class="div2">
                        <label>Investor Name</label>
                        <input class="input" runat="server" type="text" id="InvestorName"
                            placeholder="Enter the Invester Name">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Type of investor</label>
                        <select id="TypeOfInvestor" runat="server">
                            <option value="Individual Investor">Individual Investor</option>
                            <option value="Institutional Investor">Institutional Investor</option>
                        </select>
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Mobile No</label>
                        <input type="text" runat="server" class="input" id="MobileNo2" minlength="10" maxlength="10">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Email</label>
                        <input type="text" runat="server" class="input" id="Email2">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Address</label>
                        <textarea class="input" runat="server" type="text" id="Address"></textarea>
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Choose Broker</label>
                        <asp:DropDownList id="ChooseBroker" runat="server">
                        </asp:DropDownList>
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Pan Card Number</label>
                        <input class="input" runat="server" type="text" id="PanCardNumber" minlength="10"
                            maxlength="10">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Account Number</label>
                        <input class="input" runat="server" type="text" id="AccountNumber" minlength="12"
                            maxlength="16">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Password</label>
                        <input class="input" runat="server" type="text" id="Password2">
                        <div class="error"></div>
                    </div>
                    <!-- <div class="div2"> <label>User Type</label>
                        <asp:dropdownList id="UserType2" runat="server"></asp:dropdownList>
                    </div> -->

                    <input class="submit" runat="server" type="Submit" id="submit2" onserverclick="InvestorSignUp">
                </div>




               

                 <div id="form4" class="box" style="display:none">
                    <h1><u>Exchange Login</u></h1>
                    <div class="div2">
                        <label>Exchange Name</label>
                        <input class="input" runat="server" type="text" id="ExchangeName">
                        <div class="error"></div>
                    </div>
                    <div class="div2">
                        <label>Password</label>
                        <input class="input" runat="server" type="text" id="Password4">
                        <div class="error"></div>
                    </div>
                    <input class="submit" runat="server" type="Submit" id="submit4" onserverclick="ExchangeLogIn">
                </div>


                <div id="form5" class="box" style="display:none">
                    <h1><u>Broker Login</u></h1>
                    <div class="div2">
                        <label>Broker UserName</label>
                        <input class="input" runat="server" type="text" id="BrokerUserName">
                        <div class="error"></div>
                    </div>
                    <!-- <div class="div2">
                        <label>Entity Type</label>
                        <select id="EntityType5" runat="server">
                            <option value="Corporate">Corporate</option>
                            <option value="Composite Corporate">Composite Corporate</option>
                        </select>
                        <div class="error"></div>
                    </div> -->
                    <div class="div2">
                        <label>Password</label>
                        <input class="input" runat="server" type="text" id="Password5">
                        <div class="error"></div>
                    </div>
                    <input class="submit" runat="server" type="Submit" id="submit5" onserverclick="BrokerLogIn">
                </div>


                <div id="form6" class="box" style="display:none">

                    <h1><u>Company Login</u></h1>
                    <div class="div2">
                        <label>CompanyName</label>
                        <input class="input" runat="server" type="text" id="CompanyName1">
                        <div class="error"></div>
                    </div>

                    <!-- <div class="div2">
                        <label>Sector</label>
                        <asp:DropDownList id="Sector6" runat="server" required placeholder="--Select--">
                        </asp:DropDownList>
                        <div class="error"></div>
                    </div> -->

                    <div class="div2">
                        <label>Password</label>
                        <input class="input" type="text" runat="server" id="Password6">
                        <div class="error"></div>
                    </div>
                    <input class="submit" type="Submit" runat="server" id="submit6" onserverclick="CompanyLogIn">
                </div>


                 <div id="form7" class="box" style="display:none">
                    <h1><u>Investor Login</u></h1>
                    <div class="div2">
                        <label>Investor UserName</label>
                        <input class="input" type="text" runat="server" id="InvestorUserName">
                        <div class="error"></div>
                    </div>
                    <!-- <div class="div2">
                        <label>Type of investor</label>
                        <select id="TypeOfInvestor7" runat="server">
                            <option value="Individual Investor">Individual Investor</option>
                            <option value="Institutional Investor">Retail Investor</option>
                        </select>
                        <div class="error"></div>
                    </div> -->

                    <div class="div2">
                        <label>Password</label>
                        <input class="input" type="text" runat="server" id="Password7">
                        <div class="error"></div>
                    </div>
                    <input class="submit" type="Submit" runat="server" id="submit7" onserverClick="InvestorLogIn">
                </div>


        </div>
        </form>
        <script>
            $(document).ready(function () {
                $(".dropbtn").click(function () {

                    $(".dropdown-content").toggle(1000)
                    $(".dropdown-content1").hide(1000)
                    $("#form1").hide(500)
                    $("#form2").hide(500)
                    $("#form3").hide(500)
                    $("#form4").hide(500)
                    $("#form5").hide(500)
                    $("#form6").hide(500)
                    $("#form7").hide(500)
                })
                $(".dropbtn1").click(function () {

                    $(".dropdown-content1").toggle(1000)
                    $(".dropdown-content").hide(1000)

                    $("#form1").hide(500)
                    $("#form2").hide(500)
                    $("#form3").hide(500)
                    $("#form4").hide(500)
                    $("#form4").hide(1000)
                    $("#form5").hide(500)
                    $("#form6").hide(500)
                    $("#form7").hide(500)
                })
                // $(".dropbtn1").click(function () {
                //     $(".dropdown-content").hide();
                //     $("#form1").hide(1000)
                //     $("#form2").hide(1000)
                //     $("#form3").hide(500)
                //     $("#form4").toggle(1000);
                //     $("#form5").hide(500)
                //     $("#form6").hide(500)
                //     $("#form7").hide(500)
                   
                // });


                $("#a1").click(function () {
                    $("#form1").toggle(1000)
                    $("#form2").hide(1000)
                    $("#form3").hide(500)
                    $("#form4").hide(500)
                    $("#form5").hide(500)
                    $("#form6").hide(500)
                    $("#form7").hide(500)
                    
                })
                $("#a2").click(function () {
                    $("#form1").hide(1000)
                    $("#form2").toggle(1000)
                    $("#form3").hide(500)
                    $("#form4").hide(500)
                    $("#form5").hide(500)
                    $("#form6").hide(500)
                    $("#form7").hide(500)
                   
                })
                $("#a3").click(function () {
                    $("#form1").hide(1000)
                    $("#form2").hide(1000)
                    $("#form3").toggle(500)
                    $("#form4").hide(500)
                    $("#form5").hide(500)
                    $("#form6").hide(500)
                    $("#form7").hide(500)
                })
                $("#a4").click(function () {
                    $("#form1").hide(1000)
                    $("#form2").hide(1000)
                    $("#form3").hide(500)
                    $("#form4").toggle(500)
                    $("#form5").hide(500)
                    $("#form6").hide(500)
                    $("#form7").hide(500)


                })
                $("#a5").click(function () {
                    $("#form1").hide(1000)
                    $("#form2").hide(1000)
                    $("#form3").hide(500)
                    $("#form4").hide(500)
                    $("#form5").toggle(500)
                    $("#form6").hide(500)
                    $("#form7").hide(500)


                })

                $("#a6").click(function () {
                    $("#form1").hide(1000)
                    $("#form2").hide(1000)
                    $("#form3").hide(500)
                    $("#form4").hide(500)
                    $("#form5").hide(500)
                    $("#form6").toggle(500)
                    $("#form7").hide(500)


                })
                $("#a7").click(function () {
                    $("#form1").hide(1000)
                    $("#form2").hide(1000)
                    $("#form3").hide(500)
                    $("#form4").hide(500)
                    $("#form5").hide(500)
                    $("#form6").hide(500)
                    $("#form7").toggle(500)


                })

            })
        </script>


    </body>

    </html>