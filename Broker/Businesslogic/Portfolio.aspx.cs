using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.Script.Services;

namespace StockMarket
{
    public partial class Portfolio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        public static string GetInvestors(string SessionValue)
        {
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string result = "";
            string query = "select InvestorName,InvestorId from InvestorSignup where BrokerId ="+SessionValue+" for JSON auto";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    result = reader[0].ToString();
                }
                reader.Close();
            }
            connection.Close();
            return result;
        }

         [WebMethod]
        public static string GetSessionValue( string key)
        {
                   return HttpContext.Current.Session[key].ToString();
        }

        [WebMethod]
        public static string DataRepeater(string InvestorName )
        {
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string result1 = "";
            // string query = "select * from Items_Purchase where Item_Name='"+Item_Name+"' for  json auto";
            string query = "select * from InvestorPort where InvestorId='" + InvestorName + "' FOR JSON AUTO";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    result1 = reader[0].ToString();
                }
                reader.Close();
            }
            connection.Close();
            return result1;
        }
    }
}


        
    
         


       
    
