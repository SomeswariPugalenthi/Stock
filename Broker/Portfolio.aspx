<%@ Page Language="C#" Inherits="StockMarket.Portfolio" Debug="true" CodeFile="Businesslogic/Portfolio.aspx.cs" %>


    <!DOCTYPE html>

    <html>

    <head>
        <style>
            #table
        {
            font-family:Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width:100%;
            margin-left:auto;
            margin-right:auto;
            
        }
       #table td,#table th{
        border:1px solid grey;
        padding:8px;
       }
       #table tr:nth-child(even){background-color:#f2f2f2;}

       #table tr:hover{background-color:#ddd;}
       #table th{
        padding-top:12px;
        padding-bottom:12px;
        text-align:left;
        background-color:#034552;
        color:white;
        text-align: center;
            
    }
    #table tr{
        text-align: center;
    }
    #table td{
        height:10%;
    }
    table{
            margin:90px;
        }
        </style>
        <script src="Scripts/jquery-3.5.1.js"></script>
    </head>

    <body>
        <form class="chosse">

            <div id="selectbox">
                <label>Investors :</label>
                <select id="span1">
                    
                </select>
                <span id="span2"></span>
            </div>
            <div>
                <table id="table"></table>
            </div>
        </form>
       
        <script>
            $(document).ready(function () {
                $.ajax({

                    type: "post",
                    url: "Portfolio.aspx/GetSessionValue",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: '{"key":"BrokerID"}',
                    success: function (result) {
                        console.log(result.d);

                        $("#span2").val(result.d);
                        //  $("#span2").html(key);
                        var SessionValue = $("#span2").val();

                        var key = { "SessionValue": SessionValue };

                        $.ajax({
                            type: "post",
                            url: "Portfolio.aspx/GetInvestors",
                            data: JSON.stringify(key),
                            dataType: "json",
                            contentType: "application/json",
                            success: function (response) {
                                var result = response;
                                var dept = JSON.parse(result.d);
                                console.log(dept);
                                var dropdown = "<select><option value=null>None</option>"

                                $.each(dept, function (indexInArray, valueOfElement) {
                                    dropdown += "<option value='" + valueOfElement.InvestorId
                                        + "'>" + valueOfElement.InvestorName
                                        + "</option>"

                                })
                                dropdown += "</select>"
                                
                                
                            

                                $("#span1").html(dropdown);
                                $("#span1").change(function () {
                                    var val = $(this).val();
                                    var data = { "InvestorName": val };

                                    $.ajax({
                                        type: "post",
                                        url: "Portfolio.aspx/DataRepeater",
                                        data: JSON.stringify(data),
                                        dataType: "json",
                                        contentType: "application/json",
                                        success: function (response) {
                                            var result1 = response;
                                            var Role = JSON.parse(result1.d);
                                            console.log(Role);
                                            var inv_select = "<table id='table'><tr><th>Investor Id</th><th>Investor Name</th><th>Company Name</th><th>Scrip No</th><th>No Of Shares</th></tr>";
                                            $.each(Role, function (indexInArray, valueOfElement) {
                                                inv_select += "<tr><td>" + valueOfElement.InvestorId + "</td><td>" + valueOfElement.InvestorName + "</td><td>" + 
                                                    valueOfElement.CompanyName + "</td><td>" +
                                                    valueOfElement.ScripNo + "</td><td>" + valueOfElement.NumberOfShares + "</td></tr>"
                                            });
                                            inv_select += "</table>";
                                            console.log(inv_select);
                                            $("#table").html(inv_select);

                                        }
                                    });



                                });

                            }
                        })
                    }
                })
            })
        </script>






    </body>



    </html>

    