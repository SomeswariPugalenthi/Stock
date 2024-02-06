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
    public partial class ExchangeEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              if (!IsPostBack)
        {
            string str_id=(string)Session["BrokerId"];
            // string str_id = Request.QueryString["id"];
            // int id = int.Parse(str_id);
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            
            string query ="SELECT * FROM BrokerSignUp where BrokerId="+"'"+str_id+"'";
            using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                      BrokerId.Value =  reader.GetValue (reader.GetOrdinal("BrokerId")).ToString();
        
                        BrokerName.Value =  reader.GetValue (reader.GetOrdinal("BrokerName")).ToString();
                        EntityType.Value = reader.GetValue (reader.GetOrdinal("EntityType")).ToString();
                        BrokerType.Value = reader.GetValue (reader.GetOrdinal("BrokerType")).ToString();
                        ExchangeName.Value = reader.GetValue (reader.GetOrdinal("ExchangeName")).ToString();
                        Location.Value = reader.GetValue (reader.GetOrdinal("Location")).ToString();
                     Email.Value = reader.GetValue (reader.GetOrdinal("Email")).ToString();
                       password.Value = reader.GetValue (reader.GetOrdinal("Password")).ToString();
                         ExchangeApproval.Value = reader.GetValue (reader.GetOrdinal("ExchangeApproval")).ToString();
                }
                else
                {
                     Response.Write("Data Not Found");
                   
                }
                reader.Close();
            }
            
            connection.Close();
        }
    }
    protected void EditClick(object sender, EventArgs e)
        {
           
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();


             string query = ConfigurationManager.AppSettings["spbrokeredit"];
             
            query += "'" + Request.Form["BrokerId"] + "','" + Request.Form["BrokerName"] + "','" +
            Request.Form["EntityType"] + "','" + Request.Form["BrokerType"] + "','" + Request.Form["ExchangeName"] +
            "','" +  Request.Form["Location"] + "','" + Request.Form["Email"] + "','" + Request.Form["password"] + "','" +  Request.Form["ExchangeApproval"] + "'"; 
            
            Response.Write(query);
             
             using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                   string result=reader["Msg"].ToString();
                   Response.Write(result);
                   Response.Redirect("Exchange.aspx");
                }
                
                reader.Close();
            }

            
                connection.Close();
        }
   }
}