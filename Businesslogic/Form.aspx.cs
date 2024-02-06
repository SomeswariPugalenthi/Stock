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
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
       
          
        }
        protected void SubmitClick(object sender, EventArgs e)
        {
           
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            string query = ConfigurationManager.AppSettings["spForm"];
             
            query += "'" + Request.Form["Name"] + "','" +
            Request.Form["Age"] + "','" + Request.Form[""] + "'" ; 
            // Response.Write(query);
            // query +="'" + Request.Form["Name"] + "','" + Request.Form["Age"] + "'" ;
             
             using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                   string result=reader["Msg"].ToString();
                   Response.Write(result);
                //    Response.Redirect("BrokerDisplay.aspx");
                }
                
                reader.Close();
            }

            
                connection.Close();
              
        
          
            
        }
       
     
    }
}
