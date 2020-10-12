using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace login2
{
    public partial class loginpage : System.Web.UI.Page
    {
        //string CS = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            display();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.Parameters.AddWithValue("@userid", USERID.Text);
                cmd.Parameters.AddWithValue("@Password", PASSWORD.Text);
                cmd.CommandText = "Select count(*) from Cust_Register where customer_id='" + USERID.Text + "' and Password='" + PASSWORD.Text + "' ;";
                int pass = (int)cmd.ExecuteScalar();
                Response.Write(pass);
                cmd.CommandText = "Select count(*) from Cust_Register where customer_id='" + USERID.Text + "' ;";
                int check = (int)cmd.ExecuteScalar();

                if (pass == 1 && check != 0)
                {

                    Response.Write("Login Successfully!");

                }
                else if (check == 0)
                {
                    Response.Write("INVALID USERID");
                }
                else
                {
                    Response.Write("Login declined! wRong Password");
                }
                USERID.Text = "";
                PASSWORD.Text = "";
            }
            catch
            {
                Response.Write("Login Failed");
            }
            finally
            {
                con.Close();
            }


        }
        void display()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\registration_page.mdf;Integrated Security=True");

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
    }
}