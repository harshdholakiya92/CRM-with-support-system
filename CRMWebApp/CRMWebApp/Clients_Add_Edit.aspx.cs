using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRMWebApp
{
    public partial class Clients : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static string Inquiry_For = "";
        public static string Inquiry_Stage = "";
        public static decimal id;
        public static string Mode;
        public static decimal? mobile_no;
        public static decimal? landline;
        public static decimal? pincode;
        protected void Page_Load(object sender, EventArgs e)
        {
            Mode = Request.QueryString["Mode"];
            if (Mode == "edit" && IsPostBack == false)
            {
                id = Convert.ToDecimal(Request.QueryString["ID"]);
                Btn_Follow_up.Visible = true;
                GridView1.Visible = true;
                
                BindData();
                GetData();
            }
            Tb_Date.Text = DateTime.Today.ToString("dd/MM/yyyy");
        }

        private void BindData()
        {
            DropDownList_City.DataBind();
            DropDownList_Area.DataBind();
            DropDownList_PassOnTo.DataBind();
            DropDownList_State.DataBind();
            DropDownList_Status.DataBind();
            CheckBoxList_Inquiry_For.DataBind();
            CheckBoxList_Inquiry_Stage.DataBind();

        }

        private void GetData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ClientData where Inquiry_No='" + id + "';", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Tb_Series.Text = dr.GetValue(0).ToString();
                Tb_Inquiry_No.Text = dr.GetValue(1).ToString();
                Tb_Mobile_no.Text = dr.GetValue(2).ToString();
                Tb_LandLine.Text = dr.GetValue(3).ToString();
                Tb_email.Text = dr.GetValue(4).ToString();
                Tb_Company_Name.Text = dr.GetValue(5).ToString();
                Tb_Contact_person.Text = dr.GetValue(6).ToString();
                Tb_Address.Text = dr.GetValue(7).ToString();
                DropDownList_Area.Items.FindByText(dr.GetValue(8).ToString()).Selected = true;
                DropDownList_City.Items.FindByText(dr.GetValue(9).ToString()).Selected = true;
                Tb_PinCode.Text = dr.GetValue(10).ToString();
                DropDownList_State.Items.FindByText(dr.GetValue(11).ToString()).Selected = true;
                Tb_Remark.Text = dr.GetValue(12).ToString();
                Inquiry_For = dr.GetValue(13).ToString();
                string[] a = Inquiry_For.Split('@');
                foreach (string item in a)
                {
                    if (item != "")
                    {
                        CheckBoxList_Inquiry_For.Items.FindByText(item).Selected = true;
                    }
                }
                Inquiry_Stage = dr.GetValue(14).ToString();
                string[] b = Inquiry_Stage.Split('@');
                foreach (string item in b)
                {
                    if (item != "")
                    {
                        CheckBoxList_Inquiry_Stage.Items.FindByText(item).Selected = true;
                    }
                }
                DropDownList_PassOnTo.Items.FindByText(dr.GetValue(15).ToString()).Selected = true;
                DropDownList_Status.Items.FindByText(dr.GetValue(16).ToString()).Selected = true;
                con.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            if (Mode == "edit")
            {
                SqlCommand cmd = new SqlCommand("update ClientData set Series=@series,Mobile_No=@mobile,Landline=@landline,email=@email,Company_Name=@company,Contact_Person=@person,Address=@address,Area=@area,city=@city,PinCode=@pincode,State=@state,Remark=@remark,Inquiry_For=@inquiry_for,Inquiry_Stage=@inquiry_stage,Pass_On_To=@pass_on_to,Status=@status where Inquiry_No='" + id + "';", con);
                cmd.Parameters.AddWithValue("@series", Tb_Series.Text);
                cmd.Parameters.Add("@mobile", SqlDbType.Decimal);
                if (Tb_Mobile_no.Text == "")
                {
                    cmd.Parameters["@mobile"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@mobile"].Value = Convert.ToDecimal(Tb_Mobile_no.Text);
                }
                cmd.Parameters.Add("@landline", SqlDbType.Decimal);
                if (Tb_LandLine.Text == "")
                {
                    cmd.Parameters["@landline"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@landline"].Value = Convert.ToDecimal(Tb_LandLine.Text);
                }
                cmd.Parameters.AddWithValue("@email", Tb_email.Text);
                cmd.Parameters.AddWithValue("@company", Tb_Company_Name.Text);
                cmd.Parameters.AddWithValue("@person", Tb_Contact_person.Text);
                cmd.Parameters.AddWithValue("@address", Tb_Address.Text);
                cmd.Parameters.AddWithValue("@area", DropDownList_Area.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@city", DropDownList_City.SelectedItem.ToString());
                cmd.Parameters.Add("@pincode", SqlDbType.Decimal);
                if (Tb_PinCode.Text == "")
                {
                    cmd.Parameters["@pincode"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@pincode"].Value = Convert.ToDecimal(Tb_PinCode.Text);
                }

                cmd.Parameters.AddWithValue("@state", DropDownList_State.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@remark", Tb_Remark.Text);
                cmd.Parameters.AddWithValue("@inquiry_for", Inquiry_For);
                cmd.Parameters.AddWithValue("@inquiry_stage", Inquiry_Stage);
                cmd.Parameters.AddWithValue("@pass_on_to", DropDownList_PassOnTo.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@status", DropDownList_Status.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into ClientData (Series,Mobile_No,Landline,email,Company_Name,Contact_Person,Address,Area,city,PinCode,State,Remark,Inquiry_For,Inquiry_Stage,Pass_On_To,Status) values(@series,@mobile,@landline,@email,@company,@person,@address,@area,@city,@pincode,@state,@remark,@inquiry_for,@inquiry_stage,@pass_on_to,@status);", con);
                cmd.Parameters.AddWithValue("@series", Tb_Series.Text);
                cmd.Parameters.Add("@mobile", SqlDbType.Decimal);
                if (Tb_Mobile_no.Text == "")
                {
                    cmd.Parameters["@mobile"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@mobile"].Value = Convert.ToDecimal(Tb_Mobile_no.Text);
                }
                cmd.Parameters.Add("@landline", SqlDbType.Decimal);
                if (Tb_LandLine.Text == "")
                {
                    cmd.Parameters["@landline"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@landline"].Value = Convert.ToDecimal(Tb_LandLine.Text);
                }
                cmd.Parameters.AddWithValue("@email", Tb_email.Text);
                cmd.Parameters.AddWithValue("@company", Tb_Company_Name.Text);
                cmd.Parameters.AddWithValue("@person", Tb_Contact_person.Text);
                cmd.Parameters.AddWithValue("@address", Tb_Address.Text);
                cmd.Parameters.AddWithValue("@area", DropDownList_Area.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@city", DropDownList_City.SelectedItem.ToString());
                cmd.Parameters.Add("@pincode", SqlDbType.Decimal);
                if (Tb_PinCode.Text == "")
                {
                    cmd.Parameters["@pincode"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@pincode"].Value = Convert.ToDecimal(Tb_PinCode.Text);
                }
                cmd.Parameters.AddWithValue("@state", DropDownList_State.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@remark", Tb_Remark.Text);
                cmd.Parameters.AddWithValue("@inquiry_for", Inquiry_For);
                cmd.Parameters.AddWithValue("@inquiry_stage", Inquiry_Stage);
                cmd.Parameters.AddWithValue("@pass_on_to", DropDownList_PassOnTo.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@status", DropDownList_Status.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
            }
            Response.Redirect("Clients.aspx");
        }


        protected void Btn_Add_InquiryFor_Click(object sender, EventArgs e)
        {
            try
            {
                if (Tb_Inquiry_For.Text != "")
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Inquiry_For_Master values(@new,@series);", con);
                    cmd.Parameters.AddWithValue("@new", Tb_Inquiry_For.Text);
                    cmd.Parameters.AddWithValue("@series", Tb_Inquiry_Series.Text);
                    cmd.ExecuteNonQuery();

                }
            }
            catch
            {

            }
            finally
            {
                CheckBoxList_Inquiry_For.DataBind();
            }
        }

        protected void Btn_Add_InquiryStage_Click(object sender, EventArgs e)
        {
            try
            {
                if (Tb_Inquiry_Stage.Text != "")
                {

                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Inquiry_Stage_Master values(@new);", con);
                    cmd.Parameters.AddWithValue("@new", Tb_Inquiry_Stage.Text);
                    cmd.ExecuteNonQuery();

                }
            }
            catch
            {

            }
            finally
            {
                CheckBoxList_Inquiry_Stage.DataBind();
            }

        }

        protected void Btn_Add_City_Click(object sender, EventArgs e)
        {
            try
            {
                if (Tb_add_city.Text != "")
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into City_Master values(@new);", con);
                    cmd.Parameters.AddWithValue("@new", Tb_add_city.Text);

                    cmd.ExecuteNonQuery();

                }
            }
            catch
            {

            }
            finally
            {
                DropDownList_City.DataBind();
            }
        }

        protected void Btn_Add_Area_Click(object sender, EventArgs e)
        {
            try
            {
                if (Tb_add_area.Text != "")
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Area_Master values(@new);", con);
                    cmd.Parameters.AddWithValue("@new", Tb_add_area.Text);

                    cmd.ExecuteNonQuery();

                }
            }
            catch
            {

            }
            finally
            {
                DropDownList_Area.DataBind();
            }
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Inquiry_For = "";
            bool flag = true;
            for (int i = 0; i < CheckBoxList_Inquiry_For.Items.Count; i++)
            {
                if (CheckBoxList_Inquiry_For.Items[i].Selected == true)
                {
                    Inquiry_For += CheckBoxList_Inquiry_For.Items[i].ToString() + "@";
                    if (flag)
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("Select series from Inquiry_For_Master where Inquiry_For=@new", con);
                        cmd.Parameters.AddWithValue("@new", CheckBoxList_Inquiry_For.Items[i].ToString());
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            Tb_Series.Text = dr.GetValue(0).ToString();
                            con.Close();
                            flag = false;
                        }


                    }
                }

            }
        }

        protected void CheckBoxList_Inquiry_Stage_SelectedIndexChanged(object sender, EventArgs e)
        {
            Inquiry_Stage = "";
            for (int i = 0; i < CheckBoxList_Inquiry_Stage.Items.Count; i++)
            {
                if (CheckBoxList_Inquiry_Stage.Items[i].Selected == true)
                {
                    Inquiry_Stage += CheckBoxList_Inquiry_Stage.Items[i].ToString() + "@";
                }
            }

        }

        protected void Btn_Follow_up_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lead_Follow_up.aspx?id="+id);
        }     
    }

}