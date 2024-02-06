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
    public partial class Exchange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
             {
            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();


            string query = "select*from BrokerSignUp where ExchangeApproval='Approved'";

            using(SqlCommand command = new SqlCommand(query, connection))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows == true)
                {
                    DataRepeater.DataSource = reader;
                    DataRepeater.DataBind();
                }
                else
                {
                    DataRepeater.DataSource = null;
                    DataRepeater.DataBind();
                    NoDataDiv.InnerHtml  = "<br>No Data Found!";
                }
                reader.Close();
            }


             string squery = "select*from BrokerSignUp where ExchangeApproval='Submitted'";

            using(SqlCommand command = new SqlCommand(squery, connection))
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

            string nquery = "select*from BrokerSignUp where ExchangeApproval='Rejected'";

            using(SqlCommand command = new SqlCommand(nquery, connection))
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
            

            string aquery = "select*from CompanySignUp where ExchangeApproval='Approved'";
                                                             
            using(SqlCommand command = new SqlCommand(aquery, connection))
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

             string equery = "select*from CompanySignUp where ExchangeApproval='Submitted'";
                                                             
            using(SqlCommand command = new SqlCommand(equery, connection))
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

             string gquery = "select*from CompanySignUp where ExchangeApproval='Rejected'";
                                                             
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

             string hquery = "select*from OrderForm where Status='Routed'";
                                                             
            using(SqlCommand command = new SqlCommand(hquery, connection))
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

             string jquery = "select*from OrderForm where Status='Matched'";
                                                             
            using(SqlCommand command = new SqlCommand(jquery, connection))
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
        //  protected void EmployeeForm(object sender, EventArgs e)
        // {
        //    Response.Redirect("Employee.aspx");
        // }
        // protected void RedirectBack(object sender, EventArgs e)
        // {
        //    Response.Redirect("Role.aspx");
        // }
        
        //  protected void EditRecord(object sender, EventArgs e)
        // {
        //     Button btn=(Button) sender;
        //     Session["BrokerId"]=btn.CommandArgument;
        //     Response.Redirect("ExchangeEdit.aspx");
        // }
        
    //    protected void DeleteRecord(object sender, EventArgs e)
    //     {
    //         Button btn=(Button) sender;
    //         string id=btn.CommandArgument;
    //         // string str_id = Request.QueryString["id"];

    //         string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

    //         SqlConnection connection = new SqlConnection(connectionString);
    //         connection.Open();

    //         string query = "delete from BrokerSignUp where BrokerId ="+"'"+id+"'";
    //         using(SqlCommand command = new SqlCommand(query, connection))
    //         { 
               
    //             int rowsAffected = command.ExecuteNonQuery();
    //             if (rowsAffected > 0)
    //             {
    //                 Response.Redirect("EmployeeDisplay.aspx");
    //             }
    //             else
    //             {
    //                 Response.Write("Failed to Delete record.");
    //             }
    //         }
    //         connection.Close();
    //     }
        
         protected void RedirectBack(object sender, EventArgs e)
        {
           
            Response.Redirect("SignUp.aspx");
        }

         protected void Approve(object sender, EventArgs e)
        { 
             Button btn = (Button)sender;
            string id = btn.CommandArgument;
            string Approve="Approved";

            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);

            string query=ConfigurationManager.AppSettings["spbrokerapprove"];
                  query+="'"+id+"','"+Approve+"'";
                        connection.Open();
                        using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("Record Update Successfully");
                        Response.Redirect("Exchange.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();

        }
         protected void Reject(object sender, EventArgs e)
        { 
             Button btn = (Button)sender;
            string id = btn.CommandArgument;
            string Reject="Rejected";

            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);

            string query=ConfigurationManager.AppSettings["spbrokerApprove"];
                  query+="'"+id+"','"+Reject+"'";
                        connection.Open();
                        using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("Record Update Successfully");
                        Response.Redirect("Exchange.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();

        }
        
         protected void CompanyApprove(object sender, EventArgs e)
        { 
             Button btn = (Button)sender;
            string id = btn.CommandArgument;
            string Approve2="Approved";

            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);

            string query=ConfigurationManager.AppSettings["spcompanyApprove"];
                  query+="'"+id+"','"+Approve2+"'";
                        connection.Open();
                        using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("Record Update Successfully");
                        Response.Redirect("Exchange.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();
                
        }

         protected void CompanyReject(object sender, EventArgs e)
        { 
             Button btn = (Button)sender;
            string id = btn.CommandArgument;
            string Reject2="Rejected";

            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);

            string query=ConfigurationManager.AppSettings["spcompanyReject"];
                  query+="'"+id+"','"+Reject2+"'";
                        connection.Open();
                        using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("Record Update Successfully");
                        Response.Redirect("Exchange.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();
                
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
                        Response.Redirect("Exchange.aspx");
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
                        Response.Redirect("Exchange.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();
                
        }

          protected void Matching(object sender, EventArgs e)
        { 
             Button btn = (Button)sender;
            string id = btn.CommandArgument;
            string Match2="Matched";

            string connectionString = ConfigurationManager.AppSettings["LocalDatabase"];

            SqlConnection connection = new SqlConnection(connectionString);

            string query=ConfigurationManager.AppSettings["spordermatch"];
                  query+="'"+id+"','"+Match2+"'";
                        connection.Open();
                        using (SqlCommand command = new SqlCommand(query, connection))
                {
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("Record Update Successfully");
                        Response.Redirect("Exchange.aspx");
                    }
                    else
                    {
                        Response.Write("Failed to Update record.");
                    }
                }connection.Close();
                
        }
       
    }
}


