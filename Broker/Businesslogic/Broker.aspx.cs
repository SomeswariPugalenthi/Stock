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
    public partial class Broker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
             {

              
                string Broker = (string)Session["BrokerID"];
               
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();


            

           

            
            string bquery = "Select*From InvestorSignUp where BrokerApproval='Approved' and BrokerId="+"'"+Broker+"'";
                                                             
            using(SqlCommand command = new SqlCommand(bquery, connection))
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

            
            string cquery = "Select*From InvestorSignUp where BrokerApproval='Submitted' and BrokerId="+"'"+Broker+"'";
                                                             
            using(SqlCommand command = new SqlCommand(cquery, connection))
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


            string dquery = "Select*From InvestorSignUp where BrokerApproval='Rejected' and BrokerId="+"'"+Broker+"'";
                                                             
            using(SqlCommand command = new SqlCommand(dquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    DataRepeater3.DataSource = reader;
                    DataRepeater3.DataBind();
                }
                else
                {
                    DataRepeater3.DataSource = null;
                    DataRepeater3.DataBind();
                    NoDataDiv3.InnerHtml  = "<br>No Data Found!";
                }
                reader.Close();
            }

            //   string dquery = "Select*From OrderForm where BrokerId="+"'"+Broker+"'";
           string gquery=" SELECT OrderForm.*, InvestorSignup.BrokerId FROM OrderForm INNER JOIN InvestorSignup ON OrderForm.InvestorId = InvestorSignup.InvestorId where Status='Placed' and BrokerId="+"'"+Broker+"'";
                                                             
            using(SqlCommand command = new SqlCommand(gquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    DataRepeater5.DataSource = reader;
                    DataRepeater5.DataBind();
                }
                else
                {
                    DataRepeater5.DataSource = null;
                    DataRepeater5.DataBind();
                    NoDataDiv5.InnerHtml  = "<br>No Data Found!";
                }
                reader.Close();
            }

            string hquery=" SELECT OrderForm.*, InvestorSignup.BrokerId FROM OrderForm INNER JOIN InvestorSignup ON OrderForm.InvestorId = InvestorSignup.InvestorId where Status='Routed' and BrokerId="+"'"+Broker+"'";
                                                             
            using(SqlCommand command = new SqlCommand(hquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    DataRepeater4.DataSource = reader;
                    DataRepeater4.DataBind();
                }
                else
                {
                    DataRepeater4.DataSource = null;
                    DataRepeater4.DataBind();
                    NoDataDiv4.InnerHtml  = "<br>No Data Found!";
                }
                reader.Close();
            }

            string iquery=" SELECT OrderForm.*, InvestorSignup.BrokerId FROM OrderForm INNER JOIN InvestorSignup ON OrderForm.InvestorId = InvestorSignup.InvestorId where Status='Rejected' and BrokerId="+"'"+Broker+"'";
                                                             
            using(SqlCommand command = new SqlCommand(iquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    DataRepeater6.DataSource = reader;
                    DataRepeater6.DataBind();
                }
                else
                {
                    DataRepeater6.DataSource = null;
                    DataRepeater6.DataBind();
                    NoDataDiv6.InnerHtml  = "<br>No Data Found!";
                }
                reader.Close();
            }

            //  string bquery = "Select*From OrderForm where Status='Placed'";
                                                             
            // using(SqlCommand command = new SqlCommand(bquery, connection))
            // {
            //     SqlDataReader reader = command.ExecuteReader();
            //     if (reader.HasRows == true)
            //     {
            //         DataRepeater4.DataSource = reader;
            //         DataRepeater4.DataBind();
            //     }
            //     else
            //     {
            //         DataRepeater4.DataSource = null;
            //         DataRepeater4.DataBind();
            //         NoDataDiv4.InnerHtml  = "<br>No Data Found!";
            //     }
            //     reader.Close();
            // }
                
            string kquery=" SELECT InvestorPort.*, InvestorSignup.BrokerId FROM InvestorPort INNER JOIN InvestorSignup ON InvestorPort.InvestorId = InvestorSignup.InvestorId where BrokerId="+"'"+Broker+"'";
                                                             
            using(SqlCommand command = new SqlCommand(kquery, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    DataRepeater7.DataSource = reader;
                    DataRepeater7.DataBind();
                }
                else
                {
                    DataRepeater7.DataSource = null;
                    DataRepeater7.DataBind();
                    NoDataDiv7.InnerHtml  = "<br>No Data Found!";
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
         protected void Redirect(object sender, EventArgs e)
        {
           
            Response.Redirect("Portfolio.aspx");
        }

        
         protected void InvestorApprove(object sender, EventArgs e)
        { 
             Button btn = (Button)sender;
            string id = btn.CommandArgument;
            string Approve2="Approved";

            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);

            string query=ConfigurationManager.AppSettings["spinvestoraccept"];
                  query+="'"+id+"','"+Approve2+"'";
                        connection.Open();
                        using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("Record Update Successfully");
                        Response.Redirect("Broker.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();
                
        }

         protected void InvestorReject(object sender, EventArgs e)
        { 
             Button btn = (Button)sender;
            string id = btn.CommandArgument;
            string Reject2="Rejected";

            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);

            string query=ConfigurationManager.AppSettings["spinvestorreject"];
                  query+="'"+id+"','"+Reject2+"'";
                        connection.Open();
                        using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("Record Update Successfully");
                        Response.Redirect("Broker.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();
                
        }

         protected void BrokerRoute(object sender, EventArgs e)
        { 
             Button btn = (Button)sender;
            string id = btn.CommandArgument;
            string Approve2="Routed";

            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);

            string query=ConfigurationManager.AppSettings["spbrokerroute"];
                  query+="'"+id+"','"+Approve2+"'";
                        connection.Open();
                        using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("Record Update Successfully");
                        Response.Redirect("Broker.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();
                
        }

          protected void BrokerReject(object sender, EventArgs e)
        { 
             Button btn = (Button)sender;
            string id = btn.CommandArgument;
            string Approve2="Rejected";

            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);

            string query=ConfigurationManager.AppSettings["spbrokerroute"];
                  query+="'"+id+"','"+Approve2+"'";
                        connection.Open();
                        using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("Record Update Successfully");
                        Response.Redirect("Broker.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();
                
        }
       
    }
}


