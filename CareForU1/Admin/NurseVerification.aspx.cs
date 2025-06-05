using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_NurseVerification : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Email"] != null)
            {
                LoadNurseDetails();
                UserName.Text = Session["UserName"].ToString();
            }
            else
            {
                Response.Redirect("~/General/Adminlogin.aspx");
            }
        }
    }

    private void LoadNurseDetails()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from NurseDetails where Status = 'Pending' order by id desc", conn);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        rptNurseReg.DataSource = dt;
        rptNurseReg.DataBind();
        conn.Close();
    }

    protected void rptNurse_itemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "approveNurse")
        {
            int id = Convert.ToInt32(e.CommandArgument);

            SqlCommand cmd = new SqlCommand("Update NurseDetails set Status = 'Approved' where ID = @id", conn);
            cmd.Parameters.AddWithValue("@id", id);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            LoadNurseDetails();
        }

         if (e.CommandName == "RejectNurse")
        {
            int id = Convert.ToInt32(e.CommandArgument);

            SqlCommand cmd = new SqlCommand("Update NurseDetails set Status = 'Rejected' where ID = @id", conn);
            cmd.Parameters.AddWithValue("@id", id);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            LoadNurseDetails();
        }
    }

}