using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Con.State==ConnectionState.Open)
            {
                Con.Close();
            }
            Con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = Con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText ="insert into Person values ('"+firstname.Text+"','"+lastname.Text+"')";
            cmd.ExecuteNonQuery();

            firstname.Text = "";
            lastname.Text = ""; 

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = Con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from person";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}