<%@ Page Language="C#" Inherits="StockMarket.Form" Debug="true" CodeFile="BusinessLogic/Form.aspx.cs" %>
    <!DOCTYPE html>

    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width" ,initial-scale=1.0>
        <title>forms</title>
        <!-- <link rel="StyleSheet" href="Styles/LogStock.css"> -->

    </head>

    <body>
        <div class="div1">
            <form runat="server" id="form">


                <div class=" div1">
                    <h2 id="h2">EmployeeDetails</h2>
                    <br>
                    <div class="div2"> <label>Name</label>
                        <input type="text" id="Name" runat="server" placeholder="Enter your Name">
                    </div>
                    <br>
                    <div class="div2"> <label>Age</label>
                        <input type="text" id="Age" runat="server" >
                    </div>
                    <br>
                   
                    <input type="submit" id="Submitbtn" runat="server" onserverclick="SubmitClick">
                </div>
            </form>
    </body>

    </html>