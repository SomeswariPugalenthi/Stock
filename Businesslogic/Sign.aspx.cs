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
    public partial class Sign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
             {
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            string aquery = "SELECT UserType from StockLog";
            using(SqlCommand command = new SqlCommand(aquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    usertype.DataSource = reader;
                   usertype.DataTextField ="UserType";
                  usertype.DataValueField ="UserType";
                  usertype.DataBind();
                  
                }
                else
                {
                    usertype.DataSource = null;
                   usertype.DataBind();
                    
                }
                reader.Close();
            }

            string bquery = "SELECT UserType from StockLog";
            using(SqlCommand command = new SqlCommand(bquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    usertype1.DataSource = reader;
                   usertype1.DataTextField ="UserType";
                  usertype1.DataValueField ="UserType";
                  usertype1.DataBind();
                  
                }
                else
                {
                    usertype1.DataSource = null;
                   usertype1.DataBind();
                    
                }
                reader.Close();
            }
           
           string cquery = "SELECT UserType from StockLog";
            using(SqlCommand command = new SqlCommand(cquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    usertype2.DataSource = reader;
                   usertype2.DataTextField ="UserType";
                  usertype2.DataValueField ="UserType";
                  usertype2.DataBind();
                  
                }
                else
                {
                    usertype2.DataSource = null;
                   usertype2.DataBind();
                    
                }
                reader.Close();
            }
           


            string dquery = "SELECT UserType from StockLog";
            using(SqlCommand command = new SqlCommand(dquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    usertype3.DataSource = reader;
                   usertype3.DataTextField ="UserType";
                  usertype3.DataValueField ="UserType";
                  usertype3.DataBind();
                  
                }
                else
                {
                    usertype3.DataSource = null;
                   usertype3.DataBind();
                    
                }
                reader.Close();
            }
           
            connection.Close();
             }
       
          
        }
        protected void BrokerSignUp(object sender, EventArgs e)
        {
            
              
        }
        protected void InvestorSignUp(object sender, EventArgs e)
        {
            
              
        }
        protected void CompanySignUp(object sender, EventArgs e)
        {
            
              
        }
        protected void SubmitClick(object sender, EventArgs e)
        {
            
              
        }
       
     
    }
}
