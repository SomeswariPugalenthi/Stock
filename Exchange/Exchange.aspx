<%@ Page Language="C#" Inherits="StockMarket.Exchange" Debug="true" CodeFile="Businesslogic/Exchange.aspx.cs" %>


    <!DOCTYPE html>

    <html>

    <head>
        <title></title>
        <style>
            /* table,th,td,tr{
            border: 1px solid black; 
             margin-left: auto;
            margin-right: auto; 
             margin:16%; 
            background-color: rgb(146, 243, 250);
            text-align: center;
            
        }
        th{
            height:80px;
        }
        td{
            height:50px;
            font-family:Verdana, Geneva, Tahoma, sans-serif;
        }
        table
        {
            width:90%;
            margin:5%;
        }
        .button
        {
            
            cursor:pointer;
            border:200px;
            background-color:rgb(125, 193, 242);
            width: 15%;
            height:290%;
            padding: 20px;
            border-radius: 10px;
            margin: 30px;
            font-size:larger; 
            box-shadow: rgb(56, 56, 56) 9px 9px 9px;
            float: right;
        } */
            #employee {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
                margin-left: auto;
                margin-right: auto;

            }

            #employee td,
            #employee th {
                border: 1px solid grey;
                padding: 8px;
            }

            #employee tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            #employee tr:hover {
                background-color: #ddd;
            }

            #employee th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #034552;
                color: white;
                text-align: center;

            }

            #employee tr {
                text-align: center;
            }

            #employee td {
                height: 10%;
            }

            /* .button
        {
            
            cursor:pointer;
            border:200px;
            background-color:rgb(125, 193, 242);
            width: 15%;
            height:290%;
            padding: 20px;
            border-radius: 10px;
            margin: 30px;
            font-size:larger; 
            box-shadow: rgb(56, 56, 56) 9px 9px 9px;
            float: right;
        }  */
            /* table,th,td,tr{
            border: 1px solid black;
            margin-left: auto;
            margin-right: auto;
            margin:16%;
            background-color: rgb(107, 246, 246);
            text-align: center;
        }
        th{
            height:80px;
        }
        td{
            height:50px;
            font-family:Verdana, Geneva, Tahoma, sans-serif;
        }
        table
        {
            width:60%;
            vertical-align: middle;
        } */
            /* .button
        {
            cursor:pointer;
            border:200px;
            background-color:rgb(125, 193, 242);
            width: 15%;
            padding: 20px;
            border-radius: 10px;
            margin:10px;
            font-size:larger; 
            box-shadow: rgb(56, 56, 56) 9px 9px 9px;
            float:right;
        } */
            .button1 {
                cursor: pointer;
                border: 200px;
                background-color: rgb(125, 193, 242);
                width: 15%;
                padding: 20px;
                border-radius: 10px;
                margin: 10px;
                font-size: larger;
                box-shadow: rgb(56, 56, 56) 9px 9px 9px;
                /* float:left; */
                position: absolute;
                top: 11px;
                left: 50px;
            }

            table {
                margin: 90px;
            }
            #Blue{
                 width:100px;
                 height:100px;
            }
        </style>
        <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

        <script src="Scripts/jquery-3.5.1.js"></script>
        <script src="Scripts/Status.js"></script>
        <!-- <link rel="StyleSheet" href="Styles/Exchange.css"> -->
        <img src="/Exchange/Images/bse-new-logo.jpg" id="Blue">
    </head>

    <body>
        <form runat="server">

            <!-- <button  type="button" class="button1" id="Back" runat="server" onserverclick="RedirectBack">Back</button></div> -->

           
            <div class="dropdown">
                <button type="button" id="Broker">Broker</button>
                <button type="button" id="Company">Company</button>
                <button type="button" id="TotalOrders">TotalOrders</button>
                <button type="button" id="MatchedOrders">MatchedOrders</button>
               


                <div class="drop" style="display:none">
                    <a id="a1">Approved</a> <br>
                    <a id="a2">Pending</a> <br>
                    <a id="a3">Rejected</a> <br>
                </div>

                <div class="drop1" style="display:none">
                    <a id="a4">Approved</a> <br>
                    <a id="a5">Pending</a> <br>
                    <a id="a6">Rejected</a> <br>
                </div>




            </div>


            <div class="div1" style="display:none">
                <asp:Repeater ID="DataRepeater" runat="server">
                    <HeaderTemplate>
                        <table style="width:90%;font-size:12px" id="employee">
                            <tr>
                                <th>BrokerId</th>
                                <th>BrokerName</th>
                                <th>EntityType</th>
                                <th>BrokerType</th>
                                <th>ExchangeName</th>
                                <th>Location</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>ExchangeApproval</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <!-- Your item template here -->
                        <tr>
                            <td>
                                <%# Eval("BrokerId") %>
                            </td>
                            <td>
                                <%# Eval("BrokerName") %>
                            </td>
                            <td>
                                <%# Eval("EntityType") %>
                            </td>
                            <td>
                                <%# Eval("BrokerType") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeName") %>
                            </td>
                            <td>
                                <%# Eval("Location") %>
                            </td>
                            <td>
                                <%# Eval("Email") %>
                            </td>
                            <td>
                                <%# Eval("Password") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeApproval") %>
                            </td>
                            

                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <!-- <a href="Model.aspx">click here</a> -->
                <div id="NoDataDiv" runat=server></div>

            </div>


            <div class="div2" style="display:none">
                <asp:Repeater ID="DataRepeater1" runat="server">
                    <HeaderTemplate>
                        <table style="width:90%;font-size:12px" id="employee">
                            <tr>
                                <th>ScripNo</th>
                                <th>CompanyId</th>
                                <th>CompanyName</th>
                                <th>Sector</th>
                                <th>Location</th>
                                <th>StartedDate</th>
                                <th>Email</th>
                                <th>MobileNo</th>
                                <th>PanNo</th>
                                <th>Password</th>
                                <th>ExchangeName</th>
                                <th>ExchangeApproval</th>
                               
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <!-- Your item template here -->
                        <tr>
                            <td>
                                <%# Eval("ScripNo") %>
                            </td>
                            <td>
                                <%# Eval("CompanyId") %>
                            </td>
                            <td>
                                <%# Eval("CompanyName") %>
                            </td>
                            <td>
                                <%# Eval("Sector") %>
                            </td>
                            <td>
                                <%# Eval("Location") %>
                            </td>
                            <td>
                                <%# Eval("StartedDate") %>
                            </td>
                            <td>
                                <%# Eval("Email") %>
                            </td>
                            <td>
                                <%# Eval("MobileNo") %>
                            </td>
                            <td>
                                <%# Eval("PanNo") %>
                            </td>
                            <td>
                                <%# Eval("Password") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeName") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeApproval") %>
                            </td>
                            

                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <!-- <a href="Model.aspx">click here</a> -->
                <div id="NoDataDiv1" runat=server></div>

            </div>


            <div class="div3" style="display:none">
                <asp:Repeater ID="DataRepeater2" runat="server">
                    <HeaderTemplate>
                        <table style="width:90%;font-size:12px" id="employee">
                            <tr>
                                <th>BrokerId</th>
                                <th>BrokerName</th>
                                <th>EntityType</th>
                                <th>BrokerType</th>
                                <th>ExchangeName</th>
                                <th>Location</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>ExchangeApproval</th>
                                <th>Approve</th>
                                <th>Reject</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <!-- Your item template here -->
                        <tr>
                            <td>
                                <%# Eval("BrokerId") %>
                            </td>
                            <td>
                                <%# Eval("BrokerName") %>
                            </td>
                            <td>
                                <%# Eval("EntityType") %>
                            </td>
                            <td>
                                <%# Eval("BrokerType") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeName") %>
                            </td>
                            <td>
                                <%# Eval("Location") %>
                            </td>
                            <td>
                                <%# Eval("Email") %>
                            </td>
                            <td>
                                <%# Eval("Password") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeApproval") %>
                            </td>
                            <td>
                                <asp:Button Text="Approve" runat="server" CommandArgument='<%# Eval("BrokerId") %>'
                                    OnClick="Approve"></asp:Button>
                            </td>

                            <td>
                                <asp:Button Text="Reject" runat="server" CommandArgument='<%# Eval("BrokerId") %>'
                                    OnClick="Reject"></asp:Button>
                            </td>

                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <!-- <a href="Model.aspx">click here</a> -->
                <div id="NoDataDiv2" runat=server></div>

            </div>

            <div class="div4" style="display:none">
                <asp:Repeater ID="DataRepeater3" runat="server">
                    <HeaderTemplate>
                        <table style="width:90%;font-size:12px" id="employee">
                            <tr>
                                <th>BrokerId</th>
                                <th>BrokerName</th>
                                <th>EntityType</th>
                                <th>BrokerType</th>
                                <th>ExchangeName</th>
                                <th>Location</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>ExchangeApproval</th>
                              
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <!-- Your item template here -->
                        <tr>
                            <td>
                                <%# Eval("BrokerId") %>
                            </td>
                            <td>
                                <%# Eval("BrokerName") %>
                            </td>
                            <td>
                                <%# Eval("EntityType") %>
                            </td>
                            <td>
                                <%# Eval("BrokerType") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeName") %>
                            </td>
                            <td>
                                <%# Eval("Location") %>
                            </td>
                            <td>
                                <%# Eval("Email") %>
                            </td>
                            <td>
                                <%# Eval("Password") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeApproval") %>
                            </td>
                           
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <!-- <a href="Model.aspx">click here</a> -->
                <div id="NoDataDiv3" runat=server></div>

            </div>



            <div class="div5" style="display:none">
                <asp:Repeater ID="DataRepeater4" runat="server">
                    <HeaderTemplate>
                        <table style="width:90%;font-size:12px" id="employee">
                            <tr>
                                <th>ScripNo</th>
                                <th>CompanyId</th>
                                <th>CompanyName</th>
                                <th>Sector</th>
                                <th>Location</th>
                                <th>StartedDate</th>
                                <th>Email</th>
                                <th>MobileNo</th>
                                <th>PanNo</th>
                                <th>Password</th>
                                <th>ExchangeName</th>
                                <th>ExchangeApproval</th>
                                <th>Approve</th>
                                <th>Reject</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                      
                        <tr>
                            <td>
                                <%# Eval("ScripNo") %>
                            </td>
                            <td>
                                <%# Eval("CompanyId") %>
                            </td>
                            <td>
                                <%# Eval("CompanyName") %>
                            </td>
                            <td>
                                <%# Eval("Sector") %>
                            </td>
                            <td>
                                <%# Eval("Location") %>
                            </td>
                            <td>
                                <%# Eval("StartedDate") %>
                            </td>
                            <td>
                                <%# Eval("Email") %>
                            </td>
                            <td>
                                <%# Eval("MobileNo") %>
                            </td>
                            <td>
                                <%# Eval("PanNo") %>
                            </td>
                            <td>
                                <%# Eval("Password") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeName") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeApproval") %>
                            </td>
                            <td>
                                <asp:Button Text="Approve" runat="server" CommandArgument='<%# Eval("CompanyId") %>'
                                    OnClick="CompanyApprove"></asp:Button>
                            </td>

                            <td>
                                <asp:Button Text="Reject" runat="server" CommandArgument='<%# Eval("CompanyId") %>'
                                    OnClick="CompanyReject"></asp:Button>
                            </td>

                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <!-- <a href="Model.aspx">click here</a> -->
                <div id="NoDataDiv4" runat=server></div>

            </div>

            <div class="div6" style="display:none">
                <asp:Repeater ID="DataRepeater5" runat="server">
                    <HeaderTemplate>
                        <table style="width:90%;font-size:12px" id="employee">
                            <tr>
                                <th>ScripNo</th>
                                <th>CompanyId</th>
                                <th>CompanyName</th>
                                <th>Sector</th>
                                <th>Location</th>
                                <th>StartedDate</th>
                                <th>Email</th>
                                <th>MobileNo</th>
                                <th>PanNo</th>
                                <th>Password</th>
                                <th>ExchangeName</th>
                                <th>ExchangeApproval</th>
                
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <!-- Your item template here -->
                        <tr>
                            <td>
                                <%# Eval("ScripNo") %>
                            </td>
                            <td>
                                <%# Eval("CompanyId") %>
                            </td>
                            <td>
                                <%# Eval("CompanyName") %>
                            </td>
                            <td>
                                <%# Eval("Sector") %>
                            </td>
                            <td>
                                <%# Eval("Location") %>
                            </td>
                            <td>
                                <%# Eval("StartedDate") %>
                            </td>
                            <td>
                                <%# Eval("Email") %>
                            </td>
                            <td>
                                <%# Eval("MobileNo") %>
                            </td>
                            <td>
                                <%# Eval("PanNo") %>
                            </td>
                            <td>
                                <%# Eval("Password") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeName") %>
                            </td>
                            <td>
                                <%# Eval("ExchangeApproval") %>
                            </td>
                           
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <!-- <a href="Model.aspx">click here</a> -->
                <div id="NoDataDiv5" runat=server></div>

            </div>



            <div class="div7" style="display:none;" >
                <asp:Repeater ID="DataRepeater6" runat="server">
                    <HeaderTemplate>
                        <table style="width:90%;font-size:12px" id="employee">
                            <tr >
                                <th>OrderId</th>
                                <th>InvestorId</th>
                                <th>CompanyId</th>
                                <th>NumberOfShares</th>
                                <th>BuyOrSell</th>
                                <th>Price</th>
                                <th>Status</th>
                                <th>MatchOrders</th>
                              
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <!-- Your item template here -->
                    <tr><td><%# Eval("OrderId") %></td>
                        <td><%# Eval("InvestorId") %></td>
                        <td><%# Eval("CompanyId") %></td>
                        <td><%# Eval("NumberOfShares") %></td>
                        <td><%# Eval("BuyOrSell") %></td>
                        <td><%# Eval("Price") %></td>
                        <td><%# Eval("Status") %></td>
                        <td>
                            <asp:Button Text="MatchOrders" runat="server" CommandArgument='<%# Eval("OrderId") %>'
                                OnClick="Matching"></asp:Button>
                        </td>
                    
                    </tr>
                       
          
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <!-- <a href="Model.aspx">click here</a> -->
                <div id="NoDataDiv6" runat=server></div>

            </div>


            
            <div class="div8" style="display:none;" >
                <asp:Repeater ID="DataRepeater7" runat="server">
                    <HeaderTemplate>
                        <table style="width:90%;font-size:12px" id="employee">
                            <tr >
                                <th>OrderId</th>
                                <th>InvestorId</th>
                                <th>CompanyId</th>
                                <th>NumberOfShares</th>
                                <th>BuyOrSell</th>
                                <th>Price</th>
                                <th>Status</th>
                               
                              
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <!-- Your item template here -->
                    <tr><td><%# Eval("OrderId") %></td>
                        <td><%# Eval("InvestorId") %></td>
                        <td><%# Eval("CompanyId") %></td>
                        <td><%# Eval("NumberOfShares") %></td>
                        <td><%# Eval("BuyOrSell") %></td>
                        <td><%# Eval("Price") %></td>
                        <td><%# Eval("Status") %></td>
                    </tr>
                       
          
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <!-- <a href="Model.aspx">click here</a> -->
                <div id="NoDataDiv7" runat=server></div>

            </div>

        </form>
        <script>
            $(document).ready(function () {
                $("#Broker").click(function () {

                $(".drop").toggle(1000)
                $(".drop1").hide(1000)
                        
                });
                $("#Company").click(function () {

                 $(".drop1").toggle(1000)
                 $(".drop").hide(1000)
        
                });
                $("#a1").click(function()
                {
                    // $(".div1").toggle(1000)
                    $(".div3").hide(1000)
                    $(".div4").hide(1000)
                    $(".div6").hide(1000)
                    $(".div2").hide(1000)
                    $(".div5").hide(1000)
                    $(".div7").hide(1000)
                    $(".div8").hide(1000)
                })
                $("#a2").click(function()
                {
                    $(".div3").toggle(1000)
                    $(".div1").hide(1000)
                    $(".div4").hide(1000)
                    $(".div6").hide(1000)
                    $(".div2").hide(1000)
                    $(".div5").hide(1000)
                    $(".div7").hide(1000)
                    $(".div8").hide(1000)

                })
                $("#a3").click(function()
                {
                    $(".div4").toggle(1000)
                    $(".div1").hide(1000)
                    $(".div3").hide(1000)
                    $(".div6").hide(1000)
                    $(".div2").hide(1000)
                    $(".div5").hide(1000)
                    $(".div7").hide(1000)
                    $(".div8").hide(1000)
                })
                $("#a4").click(function()
                {
                    $(".div2").toggle(1000)
                    $(".div5").hide(1000)
                    $(".div6").hide(1000)
                    $(".div4").hide(1000)
                    $(".div1").hide(1000)
                    $(".div3").hide(1000)
                    $(".div7").hide(1000)
                    $(".div8").hide(1000)
                })
                $("#a5").click(function()
                {
                    $(".div5").toggle(1000)
                    $(".div2").hide(1000)
                    $(".div6").hide(1000)
                    $(".div4").hide(1000)
                    $(".div1").hide(1000)
                    $(".div3").hide(1000)
                    $(".div7").hide(1000)
                    $(".div8").hide(1000)

                })
                $("#a6").click(function()
                {
                    $(".div6").toggle(1000)
                    $(".div2").hide(1000)
                    $(".div5").hide(1000)
                    $(".div4").hide(1000)
                    $(".div1").hide(1000)
                    $(".div3").hide(1000)
                    $(".div7").hide(1000)
                    $(".div8").hide(1000)
                })
                $("#TotalOrders").click(function()
                {
                 $(".div7").toggle(1000)
                 $(".div6").hide(1000)
                    $(".div2").hide(1000)
                    $(".div5").hide(1000)
                    $(".div4").hide(1000)
                    $(".div1").hide(1000)
                    $(".div3").hide(1000)
                    $(".div8").hide(1000)
                    $(".drop1").hide(1000)
                    $(".drop").hide(1000)
                })
                $("#MatchedOrders").click(function()
                {
                    $(".div8").toggle(1000)
                    $(".div7").hide(1000)
                 $(".div6").hide(1000)
                    $(".div2").hide(1000)
                    $(".div5").hide(1000)
                    $(".div4").hide(1000)
                    $(".div1").hide(1000)
                    $(".div3").hide(1000)
                    $(".drop1").hide(1000)
                    $(".drop").hide(1000)
                })
            

            })
        </script>
    </body>

    </html>