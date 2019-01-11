using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CRMWebApp
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into UserData values(@name, @uname, @email, @password, user)", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@uname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@password", TextBox4.Text);
            int i = 0;
            i = cmd.ExecuteNonQuery();          
            if (i > 0)
            {
                //Response.Redirect("CustomerModule/CustoMain.aspx");
                Response.Redirect("LogInPage.aspx");
            }

            else

            {
                Response.Write("fail");
            }
        }
    }
}