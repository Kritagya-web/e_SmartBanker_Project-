using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

namespace eSmartBanker
{
    public partial class Registerationoct : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Bank.mdf;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();

                cmd.CommandText = "insert into Cust_Register values(@cust, @account, @pass)";
                cmd.Parameters.AddWithValue("@account", AccountNo.Text);
                cmd.Parameters.AddWithValue("@cust", CustID.Text);
                cmd.Parameters.AddWithValue("@pass", Password.Text);
               
                cmd.ExecuteNonQuery();
                Response.Write("Registered Successfully!");
                AccountNo.Text = "";
                CustID.Text = "";
                Password.Text = "";
                ConfirmPassword.Text = "";
            }

            catch
            {
                Response.Write("You have already registered");
            }
            finally
            {
                con.Close();
            }
           
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            display();
        }
        void display()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Bank.mdf;Integrated Security=True");

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Cust_Register";
            //SqlCommand cmd = new SqlCommand("select * from RegisterTable", con);
            //SqlDataReader dataFinal = cmd.ExecuteReader();
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sa = new SqlDataAdapter(cmd);
            sa.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}