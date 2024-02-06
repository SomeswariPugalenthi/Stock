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
    public partial class SignUp : System.Web.UI.Page
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

            string bquery = "SELECT UserType from StockLog";
            using(SqlCommand command = new SqlCommand(bquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    UserType1.DataSource = reader;
                   UserType1.DataTextField ="UserType";
                  UserType1.DataValueField ="UserType";
                  UserType1.DataBind();
                  
                }
                else
                {
                    UserType1.DataSource = null;
                   UserType1.DataBind();
                    
                }
                reader.Close();
            }
           
           string cquery = "SELECT UserType from StockLog";
            using(SqlCommand command = new SqlCommand(cquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    UserType2.DataSource = reader;
                   UserType2.DataTextField ="UserType";
                  UserType2.DataValueField ="UserType";
                  UserType2.DataBind();
                  
                }
                else
                {
                    UserType2.DataSource = null;
                   UserType2.DataBind();
                    
                }
                reader.Close();
            }
           

             string equery = "select SectorName from Sectors";
            using(SqlCommand command = new SqlCommand(equery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    Sector6.DataSource = reader;
                  Sector6.DataTextField ="SectorName";
                 Sector6.DataValueField ="SectorName";
                 Sector6.DataBind();
                  
                }
                else
                {
                   Sector6.DataSource = null;
                   Sector6.DataBind();
                    
                }
                reader.Close();
            }
               string fquery = "select SectorName from Sectors";
            using(SqlCommand command = new SqlCommand(fquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    CompanyType.DataSource = reader;
                   CompanyType.DataTextField ="SectorName";
                  CompanyType.DataValueField ="SectorName";
                  CompanyType.DataBind();
                  
                }
                else
                {
                    CompanyType.DataSource = null;
                  CompanyType.DataBind();
                    
                }
                reader.Close();
            }
           
            string gquery = "select BrokerId from BrokerSignUp";
            using(SqlCommand command = new SqlCommand(gquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    ChooseBroker.DataSource = reader;
                  ChooseBroker.DataTextField ="BrokerId";
                ChooseBroker.DataValueField ="BrokerId";
                 ChooseBroker.DataBind();
                  
                }
                else
                {
                  ChooseBroker.DataSource = null;
                  ChooseBroker.DataBind();
                    
                }
                reader.Close();
            }
            connection.Close();
             }
       
          
        }
        protected void BrokerSignUp(object sender, EventArgs e)
        {
             string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            string query = ConfigurationManager.AppSettings["spaddBroker"];
             
            query += "'" + Request.Form["BrokerName"] + "','" +
            Request.Form["EntityType"] + "','" + Request.Form["BrokerType"] + "','" +  Request.Form["Location"] + "','" + Request.Form["Email"] + "','" + Request.Form["Password"] + "'" ; 
            // Response.Write(query);
             
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
        protected void InvestorSignUp(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            string query = ConfigurationManager.AppSettings["spInvestorsign"];
             
            query += "'" + Request.Form["InvestorName"] + "','" +
            Request.Form["TypeOfInvestor"] + "','" + Request.Form["MobileNo2"] + "','" +  Request.Form["Email2"] + "','" + Request.Form["Address"] + "','" + Request.Form["ChooseBroker"] + "','" + Request.Form["PanCardNumber"] + "','" + Request.Form["AccountNumber"] + "','" + Request.Form["Password2"] + "'" ; 
           
            // Response.Write(query);
             
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
        protected void CompanySignUp(object sender, EventArgs e)
        {
              string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            string query = ConfigurationManager.AppSettings["spaddcompany"];
             
            query += "'" + Request.Form["CompanyId"] + "','" +
            Request.Form["CompanyName"] + "','" + Request.Form["CompanyType"] + "','" +  Request.Form["Location1"] + "','" + Request.Form["StartedDate"] + "','" + Request.Form["Email1"] + "','" + Request.Form["CompanyContactNumber"] + "','" + Request.Form["CompanyPanNumber"] + "','" + Request.Form["Password1"]+ "'" ; 
           
            // Response.Write(query);
             
             using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                   string result=reader["Msg"].ToString();
                   Response.Write(result);
                  //  Response.Redirect("BrokerDisplay.aspx");
                }
                
                reader.Close();
            }

            
                connection.Close();
              
              
        }
        protected void ExchangeLogIn(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
    
        
           string Exname=Request.Form["ExchangeName"];

           string query =ConfigurationManager.AppSettings["spExchange"];
           query+="'"+Exname+"'";
            using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    // string exname= reader.GetValue(reader.GetOrdinal("NameExchange")).ToString();
                    string password = reader.GetValue(reader.GetOrdinal("Password")).ToString();
                  reader.Close();
                     
                  if(password == Request.Form["Password4"] )
                  {
                    Response.Redirect("Exchange/Exchange.aspx");
                  }
                  else
                  {
                    Response.Write("<script>alert('Invalid Password')</script>");
                    // Response.Write("<center><h2 style='color:white;'>Password Does not match</h2></center>");
                  }
                }
                else
                {
                Response.Write("<script>alert('Invalid UserName')</script>");
                //   Response.Write("<center><h2 style='color:white;'>Please Enter a Valid UserName </h2 ></center> ");

                }

            }
           connection.Close(); 
              
        }
         protected void BrokerLogIn(object sender, EventArgs e)
        {
             string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
    
        
           string brokername=Request.Form["BrokerUserName"];

           string query =ConfigurationManager.AppSettings["spBroker"];
           query+="'"+brokername+"'";
            using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    // string exname= reader.GetValue(reader.GetOrdinal("NameExchange")).ToString();
                    string password = reader.GetValue(reader.GetOrdinal("Password")).ToString();
                    string brokerapproval = reader.GetValue(reader.GetOrdinal("ExchangeApproval")).ToString();
                     string brokerId = reader.GetValue(reader.GetOrdinal("BrokerId")).ToString();
                        string brokerName = reader.GetValue(reader.GetOrdinal("BrokerName")).ToString();
                  reader.Close();
                  if(brokerapproval=="Submitted")
                  {
                    Response.Write("<script>alert('Exchange Did not Approved Your Profile')</script>");
                  }   
                  if(brokerapproval=="Rejected")
                  {
                    Response.Write("<script>alert('Sorry! Exchange Rejected Your Profile')</script>");
                  } 
                  if(brokerapproval=="Approved")  
                  {
                  if(password == Request.Form["Password5"] )
                  {
                    Session["BrokerName"]=brokerName;
                     Session["BrokerID"]=brokerId;
                    Response.Redirect("Broker/Broker.aspx");
                  }
                  else
                  {
                    Response.Write("<script>alert('Invalid Password')</script>");
                    // Response.Write("<center><h2 style='color:white;'>Password Does not match</h2></center>");
                  }
                  }
                  }
                else
                {
                Response.Write("<script>alert('Invalid UserName')</script>");
                //   Response.Write("<center><h2 style='color:white;'>Please Enter a Valid UserName </h2 ></center> ");

                }

            }
           connection.Close(); 
              
        }
          protected void CompanyLogIn(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
    
        
           string companyname=Request.Form["CompanyName1"];

           string query =ConfigurationManager.AppSettings["spcompany"];
           query+="'"+companyname+"'";
            using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    // string exname= reader.GetValue(reader.GetOrdinal("NameExchange")).ToString();
                    string password = reader.GetValue(reader.GetOrdinal("Password")).ToString();
                     string companyapproval = reader.GetValue(reader.GetOrdinal("ExchangeApproval")).ToString();
                     string companyid = reader.GetValue(reader.GetOrdinal("CompanyId")).ToString();

                  reader.Close();
                   if(companyapproval=="Submitted")
                  {
                    Response.Write("<script>alert('Exchange Did not Approved Your Profile')</script>");
                  }   
                  if(companyapproval=="Rejected")
                  {
                    Response.Write("<script>alert('Sorry! Exchange Rejected Your Profile')</script>");
                  } 
                  if(companyapproval=="Approved")  
                  {
                  if(password == Request.Form["Password6"] )
                  {
                      Session["CompanyID"]=companyid;
                    Response.Redirect("Company/Company.aspx");
                  }
                  else
                  {
                    Response.Write("<script>alert('Invalid Password')</script>");
                    // Response.Write("<center><h2 style='color:white;'>Password Does not match</h2></center>");
                  }
                }
                }
                else
                {
                Response.Write("<script>alert('Invalid UserName')</script>");
                //   Response.Write("<center><h2 style='color:white;'>Please Enter a Valid UserName </h2 ></center> ");

                }
                }
           connection.Close(); 
              
        }
        
           protected void InvestorLogIn(object sender, EventArgs e)
        {
         
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
    
        
           string investorname=Request.Form["InvestorUserName"];

           string query =ConfigurationManager.AppSettings["sp_logInvestors"];
           query+="'"+investorname+"'";
            using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    // string exname= reader.GetValue(reader.GetOrdinal("NameExchange")).ToString();
                    string password = reader.GetValue(reader.GetOrdinal("Password")).ToString();
                      string investorapproval = reader.GetValue(reader.GetOrdinal("BrokerApproval")).ToString();
                      string investorid = reader.GetValue(reader.GetOrdinal("InvestorId")).ToString();
                  reader.Close();
                  
                   if(investorapproval=="Submitted")
                  {
                    Response.Write("<script>alert('Exchange Did not Approved Your Profile')</script>");
                  }   
                  if(investorapproval=="Rejected")
                  {
                    Response.Write("<script>alert('Sorry! Broker Rejected Your Profile')</script>");
                  } 
                  if(investorapproval=="Approved")  
                  { 
                  if(password == Request.Form["Password7"] )
                  {
                   
                     Session["Retailer"]=investorname;
                       Session["ID"]=investorid;
                       Response.Redirect("Investor/Retail.aspx");
                  }
                  else
                  {
                    Response.Write("<script>alert('Invalid Password')</script>");
                    // Response.Write("<center><h2 style='color:white;'>Password Does not match</h2></center>");
                  }
                  }
                }
                else
                {
                Response.Write("<script>alert('Invalid UserName')</script>");
                //   Response.Write("<center><h2 style='color:white;'>Please Enter a Valid UserName </h2 ></center> ");

                }
                }
           connection.Close(); 
              
        }
        
     
    }
}
