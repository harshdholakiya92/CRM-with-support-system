using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRMWebApp
{
    public partial class Lead_Follow_up : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static decimal id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToDecimal(Request.QueryString["ID"]);
         
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Lead_Follow_up values(@id, (SELECT COUNT(Inquiry_No)+1 FROM Lead_Follow_up WHERE Inquiry_No=@id), @date, @time, @action, @response, @ndate, @ntime, @naction, @what_todo)", con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@date", Tb_DateTime.Text);
            cmd.Parameters.AddWithValue("@time", Tb_DateTime.Text);
            cmd.Parameters.AddWithValue("@action", DropDownList_Action.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@response", Tb_Response.Text);
            
            if (Tb_NextDateTime.Text == "")
            {
                cmd.Parameters.AddWithValue("@ndate", DBNull.Value);
                cmd.Parameters.AddWithValue("@ntime", DBNull.Value);
            }
            else
            {
                cmd.Parameters.AddWithValue("@ndate", Tb_NextDateTime.Text);
                cmd.Parameters.AddWithValue("@ntime", Tb_NextDateTime.Text);
            }            
            cmd.Parameters.AddWithValue("@naction", DropDownList_NextAction.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@what_todo", Tb_What_Todo.Text);
            int i = 0;
            i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
            }
        }
    }
}