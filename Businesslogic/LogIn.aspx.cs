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
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
             {
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
           
            string query = "SELECT UserType from StockLog";
            using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    UserType.DataSource = reader;
                   UserType.DataTextField ="UserType";
                  UserType.DataValueField ="UserType";
                  UserType.DataBind();
                  
                }
                else
                {
                    UserType.DataSource = null;
                   UserType.DataBind();
                    
                }
                reader.Close();
            }
           
            connection.Close();
             }
       
          
        }
        protected void SubmitClick(object sender, EventArgs e)
        {
            
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
    
        
            string UserName=Request.Form["UserName"];

            string query ="SELECT * FROM StockLog where Username="+"'"+UserName+"'";
            using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {

                    string PasswordIp = reader.GetValue(reader.GetOrdinal("Password")).ToString();
                    // string PasswordIp=reader["Password"].ToString();
                     
                     string UserTypeIp= reader.GetValue(reader.GetOrdinal("UserType")).ToString();
                     
                 if(PasswordIp==Request.Form["Password"])
                    {
                        //  Session["EmpId"]=EmployeeId;
                        //  Session["roleid"]=Roleid;
                        //   Response.Redirect("LogStock.aspx");

                    if(UserTypeIp==UserType.SelectedValue)
                    {
                        //  Session["EmpId"]=EmployeeId;
                        //  Session["roleid"]=Roleid;
                        if(UserType.SelectedValue=="Exchange")
                        {
                          Response.Redirect("Exchange/Exchange.aspx");
                        }
                         if(UserType.SelectedValue=="Company")
                        {
                          Response.Redirect("Company/Company.aspx");
                        }
                         if(UserType.SelectedValue=="Broker")
                        {
                          Response.Redirect("Broker/Broker.aspx");
                        }
                         if(UserType.SelectedValue=="Retail")
                        {
                          Response.Redirect("Retail.aspx");
                        }
                         if(UserType.SelectedValue=="Institution")
                        {
                          Response.Redirect("Institution.aspx");
                        }
                    }
                   
                   
                     else 
                    {
                        reader.Close();
                       Response.Write("<center><h2 style='color:white;'>UserType Does not match</h2></center>");
                    }
                    }
                else 
                    {
                      
                       Response.Write("<center><h2 style='color:white;'>Password Does not match</h2></center>");
                    }
                    
                   

                }
                  else   
                    {
                        Response.Write("<center><h2 style='color:white;'>Please Enter a Valid UserName </h2 ></center> ");
                    }

            }      
           connection.Close();    
        }
       
     
    }
}
