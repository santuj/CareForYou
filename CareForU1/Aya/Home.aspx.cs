using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Aya_Home : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Email"] != null)
            {
                string email = Session["Email"].ToString();
                lblUserName.Text = Session["UserName"].ToString();
                lblUserName1.Text = Session["UserName"].ToString();
                LoadProfile(email);
            }
            else
            {
                Response.Redirect("~/General/Ayalogin.aspx");
            }
        }
    }

    private void LoadProfile(string email)
    {
        using (SqlCommand cmd = new SqlCommand("SELECT ProfilePictureNew FROM AyaDetails WHERE Email = @Email", conn))
        {
            cmd.Parameters.AddWithValue("@Email", email);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                if (reader["ProfilePictureNew"] != DBNull.Value)
                {
                    byte[] imagedata = (byte[])reader["ProfilePictureNew"];
                    string base64String = Convert.ToBase64String(imagedata);
                    ProfilePicture.Src = "data:image/png;base64," + base64String;
                }

            }

        }
    }
}