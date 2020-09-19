using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eSmartBanker
{
    public partial class Registration_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {
            Random rand = new Random();
            int number = rand.Next()/10000;
            TextBox12.Text = TextBox1.Text + "_U_"+number;
        }

        protected void TextBox13_TextChanged(object sender, EventArgs e)
        {
            Random rand = new Random();
            int number = rand.Next();
            TextBox13.Text = "0012_U_" + number;
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
            TextBox8.Text = TextBox1.Text+"emp";
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            TextBox7.Text = TextBox1.Text + "@smartCell.com";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox7_TextChanged(sender, e);
            TextBox8_TextChanged(sender, e);
            TextBox12_TextChanged(sender, e);
            TextBox13_TextChanged(sender, e);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox12.Text = " ";
            TextBox13.Text = " ";
        }


    }
}