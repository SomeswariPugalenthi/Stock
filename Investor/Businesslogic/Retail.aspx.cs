using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient; 

namespace StockMarket
{
    public partial class Retail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
             {
            
            string Id=(string)Session["ID"];
            InvestorId.Value=Id;
            string Investor = (string)Session["Retailer"];
            


            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            string query=ConfigurationManager.AppSettings["spRetailer"];
             query+="'"+Investor+"'";
            
                                                             
            using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    DataRepeater1.DataSource = reader;
                    DataRepeater1.DataBind();
                }
                else
                {
                    DataRepeater1.DataSource = null;
                    DataRepeater1.DataBind();
                    NoDataDiv1.InnerHtml  = "<br>No Data Found!";
                }
                reader.Close();
            }

             

               string fquery = "select CompanyName from CompanySignUp";
            using(SqlCommand command = new SqlCommand(fquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                   CompanyId.DataSource = reader;
                  CompanyId.DataTextField ="CompanyName";
                 CompanyId.DataValueField ="CompanyName";
                CompanyId.DataBind();
                  
                }
                else
                {
                   CompanyId.DataSource = null;
                 CompanyId.DataBind();
                    
                }
                reader.Close();
            }

            //  string hquery = "select*from OrderForm where InvestorId="+"'"+Id+"'";
              string hquery = ConfigurationManager.AppSettings["sporderdisplay"];
              hquery+="'"+Id+"'";
                                                             
            using(SqlCommand command = new SqlCommand(hquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    DataRepeater2.DataSource = reader;
                    DataRepeater2.DataBind();
                }
                else
                {
                    DataRepeater2.DataSource = null;
                    DataRepeater2.DataBind();
                    NoDataDiv2.InnerHtml  = "<br>No Data Found!";
                }
                reader.Close();
            }




        

            connection.Close();
           }

          
        }
        
        
         protected void RedirectBack(object sender, EventArgs e)
        {
           
            Response.Redirect("SignUp.aspx");
        }

        
         protected void SubmitClick(object sender, EventArgs e)
        {
           
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

             int PO_Num =0;
            // string ITM_Id = "";
            // int Line_Quantity;
            // string qty1 = Request.Form["QSTxt"];
            // int qty = Convert.ToInt32(qty1);
            string Qty1 = Request.Form["NumberOfShares"];
            int Qty = Convert.ToInt32(Qty1);
            // int a=0;
            // string Buy=Request.Form["BuyOrSell"]
            
           
          
      
     string Purchase_query=" select NumberOfShares as 'Shares' from InvestorPort where CompanyName="+"'"+CompanyId.SelectedValue+"'"+" and InvestorId="+ "'" + Request.Form["InvestorId"] + "'";

                using (SqlCommand command = new SqlCommand(Purchase_query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // PO_Num = reader["Shares"].ToInt32();
                           PO_Num =     Convert.ToInt32(reader.GetValue(reader.GetOrdinal("Shares")));
                        }
                          reader.Close();
                    }
                }
               
      

                  
           
       
         if (Request.Form["BuyOrSell"]=="Sell")
         {
            if(Qty>PO_Num)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert ('The NumberOfShares available is " + PO_Num + " , the NumberOfShares must be Less than Or Equal to the Available NumberOfShares');", true);
            }
       
                 
            else 
            {
              
            
            string query = ConfigurationManager.AppSettings["sporderform"];
             
            query += "'" + Request.Form["InvestorId"] + "','" +
            Request.Form["CompanyId"] + "','" + Request.Form["NumberOfShares"] + "','" +  Request.Form["BuyOrSell"] + "','" + Request.Form["Price"] + "'" ;
           
            // Response.Write(query);
             
             using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                //    string result=reader["Msg"].ToString();
                //    Response.Write(result);
                  //  Response.Redirect("BrokerDisplay.aspx");
                }
                
                reader.Close();
            }

            
                connection.Close();
            }
         
        }
        else if(Request.Form["BuyOrSell"]=="Buy")
        {
            

            string query = ConfigurationManager.AppSettings["sporderform"];
             
            query += "'" + Request.Form["InvestorId"] + "','" +
            Request.Form["CompanyId"] + "','" + Request.Form["NumberOfShares"] + "','" +  Request.Form["BuyOrSell"] + "','" + Request.Form["Price"] + "'" ;
           
            // Response.Write(query);
             
             using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                //    string result=reader["Msg"].ToString();
                //    Response.Write(result);
                  //  Response.Redirect("BrokerDisplay.aspx");
                }
                
                reader.Close();
            }

            
                connection.Close();
        }
            
        }

        
        
        
    }
}


 