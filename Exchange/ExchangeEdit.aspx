<%@ Page Language="C#" Inherits="StockMarket.ExchangeEdit" Debug="true" 
CodeFile="Businesslogic/ExchangeEdit.aspx.cs" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width",initial-scale=1.0>
        <title>forms</title>
        <!-- <link rel="StyleSheet" href="Styles/LogStock.css"> -->
       <style>
        form{
            width: 650px;
            margin: auto;
            margin-top: 100px;
            background-color: aliceblue;
            border-radius: 5px;
             padding: 30px;
             margin-bottom: 100px; 
            }
       </style>
    </head>
    <body>
        <div class="div1">
        <form runat="server" id="form">

<div class="box" id="form1" >
    <h1><u>Broker SignUp ApprovalForm</u></h1>
    <div class="div2">
        <label>Broker Id</label>
        <input class="input" type="text" id="BrokerId" placeholder="Enter Your BrokerId" runat="server" readonly>
        <div class="error"></div>
    </div>
    <div class="div2">
        <label>Broker Name</label>
        <input class="input" type="text" id="BrokerName" placeholder="Enter Your Name" runat="server" readonly>
        <div class="error"></div>
    </div>
    <div class="div2">
        <label>Entity Type</label>
        <input class="input" type="text" id="EntityType"  runat="server" readonly>
        <div class="error"></div>
    </div>
    <div class="div2">
        <label>Broker Type</label>
        <input class="input" type="text" id="BrokerType"  runat="server" readonly>
        <div class="error"></div>
    </div>
    <div class="div2">
        <label >Exchange Name</label>
        <input class="input" type="text" id="ExchangeName" placeholder="Enter Your Name" runat="server" readonly>
        <div class="error"></div>
    </div>
   
    </div>
    <div class="div2">
        <label >Location</label>
        <textarea type="text" id="Location" runat="server" placeholder="Enter The Location" readonly></textarea>
        <div class="error"></div>
    </div>

    <div class="div2">
        <label>Email</label>
        <input class="input" type="text" runat="server" id="Email" placeholder="Enter The Email" readonly>
        <div class="error"></div>
    </div>
    <div class="div2">
        <label>Password</label>
        <input class="input" runat="server" type="text" id="password" readonly>
        <div class="error"></div>
    </div>
   
    <div class="div2">
        <label>ExchangeApproval</label>
        <select id="ExchangeApproval" runat="server">
            <option value="Approved">Approved</option>
            <option value="WaitingList">WaitingList</option>
        </select> 
    </div>
    <input class="submit" runat="server" type="Submit" id="submit2" onserverclick="EditClick">
      
</div>

</form>
</body>

</html>