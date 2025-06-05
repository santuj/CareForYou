using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_NurseCertificateView : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ID"] != null)
            {
                string id = Request.QueryString["ID"];
                LoadDocumentImg(id);
            }
            else
            {
                Response.Redirect("~/General/Adminlogin.aspx");
            }

        }
    }

    private void LoadDocumentImg(string id)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT Certificate FROM NurseDetails WHERE ID = @ID", conn);
        cmd.Parameters.AddWithValue("@ID", id);

        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            if (reader["Certificate"] != DBNull.Value)
            {
                byte[] imageBytes = (byte[])reader["Certificate"];
                string base64String = Convert.ToBase64String(imageBytes);
                imgDocumentFull.ImageUrl = "data:image/png;base64," + base64String;
                imgDocument.Src = "data:image/png;base64," + base64String;
            }
            
        }
        conn.Close();
    }

    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/NurseVerification.aspx");
    }
}