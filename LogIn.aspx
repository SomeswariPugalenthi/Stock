<%@ Page Language="C#" Inherits="StockMarket.LogIn" Debug="true" 
CodeFile="BusinessLogic/LogIn.aspx.cs" %>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width",initial-scale=1.0>
        <title>forms</title>
        <link rel="StyleSheet" href="Styles/LogStock.css">
       
    </head>
    <body>
        <div class="div1">
        <form runat="server" id="form">
           
            
           <div class=" div1">
            <h2 id="h2">Log In</h2>
             <br>
            <div class="div2"> <label>UserName</label>
                <input type="text" id="UserName" runat="server" 
                placeholder="Enter your UserName"></div>
                <br>
            <div class="div2"> <label>Password</label>
                <input type="password" id="Password" runat="server" 
                placeholder="Enter your Password" ></div>
                <br>
                <div class="div2"> <label>UserType</label>
                    <asp:dropdownList id="UserType" runat="server"></asp:dropdownList></div>
                <br>
            <input type="submit" id="Submitbtn" 
            runat="server" onserverclick="SubmitClick">
        </div>
        </form>
    </body>
    
</html>