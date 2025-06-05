using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AyaAvailability : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");
 
 protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Email"] != null)
            {
                LoadAyaDetails();
                UserName.Text = Session["UserName"].ToString();
            }
            else
            {
                Response.Redirect("~/General/Adminlogin.aspx");
            }
        }
    }

    private void LoadAyaDetails()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from AyaDetails where Status = 'Pending' order by ID desc", conn);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        rptAyaReg.DataSource = dt;
        rptAyaReg.DataBind();
        conn.Close();
    }

    protected void rptAya_itemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "approveAya")
        {
            int id = Convert.ToInt32(e.CommandArgument);

            SqlCommand cmd = new SqlCommand("Update AyaDetails set Status = 'Approved' where ID = @id", conn);
            cmd.Parameters.AddWithValue("@id", id);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            LoadAyaDetails();
        }

        if (e.CommandName == "RejectAya")
        {
            int id = Convert.ToInt32(e.CommandArgument);

            SqlCommand cmd = new SqlCommand("Update AyaDetails set Status = 'Rejected' where ID = @id", conn);
            cmd.Parameters.AddWithValue("@id", id);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            LoadAyaDetails();
        }
    }

   
  }  
 