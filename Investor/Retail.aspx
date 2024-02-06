<%@ Page Language="C#" Inherits="StockMarket.Retail" Debug="true" 
CodeFile="Businesslogic/Retail.aspx.cs" %>


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
           
</style>










     <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

     <script src="Scripts/jquery-3.5.1.js"></script>
     <script src="Scripts/Valid.js"></script>
     <script src="Scripts/Magic.js"></script>
     <link rel ="StyleSheets" href="Magic.css">
</head>
<div id="loader"></div>

    <div id="content-container">
<body>

    <form runat="server">
     
      <!-- <button  type="button" class="button1" id="Back" runat="server" onserverclick="RedirectBack">Back</button></div> -->


      <div class="dropdown">
        <!-- <button type="button"  id="Investor">Investor</button> -->
        <button type="button"  id="Port" runat="server">Portfolio</button>
        <button type="button"  id="Order" >OrderForm</button>
        <button type="button"  id="OrdersList" runat="server">OrdersList</button>

        <!-- <div class="dropdown-content" style="display:none">
            <a id="a1">Approved</a> <br>
            <a id="a2">Pending</a> <br>
            <a id="a3">Rejected</a> <br>
        </div> -->

      


    </div>
     

    <div class="div2" style="display:none" >
        <asp:Repeater ID="DataRepeater1" runat="server" >
            <HeaderTemplate>
                <table style="width:90%;font-size:12px"id="employee">
                    <tr >
                        <th>InvestorId</th>
                        <th>InvestorName</th>
                        <th>CompanyName</th>
                        <th>ScripNo</th>
                        <th>NumberOfShares</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <!-- Your item template here -->
                <tr>
                    <td><%# Eval("InvestorId") %></td>
                    <td><%# Eval("InvestorName") %></td>
                    <td><%# Eval("CompanyName") %></td>
                    <td><%# Eval("ScripNo") %></td>
                    <td><%# Eval("NumberOfShares") %></td>  
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <!-- <a href="Model.aspx">click here</a> -->
        <div id="NoDataDiv1" runat=server></div>

    </div>

    <div id="form1" class="box" style="display:none;" >
        
            <h1><u>OrderForm</u></h1>
            <br>
            <label>InvestorId</label>
            <input type="text" runat="server" class="input" id="InvestorId" readonly>
        <br><br>
            <label>CompanyId</label>
            <asp:DropDownList id="CompanyId" runat="server">
            </asp:DropDownList>
      <br><br>
            <label>NumberOfShares</label>
            <input type="text" runat="server" class="input" id="NumberOfShares">
        <br><br>
        
            <label>Buy/Sell</label>
            <select id="BuyOrSell" runat="server">
                <option value="Buy">Buy</option>
                <option value="Sell">Sell</option>
            </select>
      
        <br><br>
       
            <label>Price</label>
            <input type="text" runat="server" class="input" id="Price">
           
         <br><br>

      
         <input class="submit" runat="server" type="Submit" id="submit1" onclick="return validCredit()" onserverclick="SubmitClick">
 </div>
       
    


    <div class="div3" style="display:none;" >
        <asp:Repeater ID="DataRepeater2" runat="server" >
            <HeaderTemplate>
                <table style="width:90%;font-size:12px"id="employee">
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
                <tr>
                        <!-- Your item template here -->
                <td><%# Eval("OrderId") %></td>
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
        <div id="NoDataDiv2" runat=server></div>

    </div>

   
    </form>
     <script>
        $(document).ready(function () {
           
            $("#Port").click(function () {
        
               
                $(".div2").toggle(1000)
                $(".box").hide(1000)
              
                
            });
            $("#OrdersList").click(function () {
        
               
        $(".div3").toggle(1000)
        $(".box").hide(1000)
        $(".div2").hide(1000)
      
        
    });
    $("#Order").click(function () {
        
               
       
        $(".box").toggle(1000)
        $(".div2").hide(1000)
        $(".div3").hide(1000)
        
    });

            
        })
    </script> 
   
</body>
</div>
</html>