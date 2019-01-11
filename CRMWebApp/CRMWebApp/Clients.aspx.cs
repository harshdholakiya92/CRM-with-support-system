using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRMWebApp
{
    public partial class Clients1 : System.Web.UI.Page
    {
        public static string edit_Row_Id="";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                }
            }
            edit_Row_Id = GridView1.SelectedRow.Cells[1].Text;

        }
        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "this.style.cursor='pointer'");
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
            }
        }

        protected void btn_new_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clients_Add_Edit.aspx?Mode=new");
        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {
            if (edit_Row_Id == "")
            {
                Response.Write("<script>alert('Select a Row to edit');</script>");
            }
            else
            {
                Response.Redirect("Clients_Add_Edit.aspx?Mode=edit&ID=" + edit_Row_Id);
            }
        }

        protected void btn_refresh_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void btn_Follow_up_Click(object sender, EventArgs e)
        {
            if (edit_Row_Id == "")
            {
                Response.Write("<script>alert('Select a Row first!');</script>");
            }
            else
            {
                Response.Redirect("Lead_Follow_up.aspx?Mode=edit&ID=" + edit_Row_Id);
            }
        }
    }
}