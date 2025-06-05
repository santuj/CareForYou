using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_AyaAvailability : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Email"] != null)
            {
                string email = Session["Email"].ToString();
                lblUsername.Text = Session["UserName"].ToString();
                LoadProfile(email);
                LoadAyaDetails();
            }
            else
            {
                Response.Redirect("~/General/UserLogin.aspx");
            }
        }
    }
    private void LoadAyaDetails()
    {
        using (SqlCommand cmd = new SqlCommand("select * from AyaDetails where Status = 'Approved' order by ID DESC", conn))
        {
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                rptAya.DataSource = reader;
                rptAya.DataBind();
                lblNoAya.Visible = false;
            }
            else
            {
                rptAya.DataSource = null;
                rptAya.DataBind();
                lblNoAya.Visible = true;
            }
            conn.Close();
        }
    }
    private void LoadProfile(string email)
    {
        using (SqlCommand cmd = new SqlCommand("select ProfilePicture from UserDetails where Email = @Email", conn))
        {
            cmd.Parameters.AddWithValue("@Email", email);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                if (reader["ProfilePicture"] != DBNull.Value)
                {
                    byte[] imagedata = (byte[])reader["ProfilePicture"];
                    string base64String = Convert.ToBase64String(imagedata);
                    ProfilePicture.Src = "data:image/png;base64," + base64String;
                }

            }
            conn.Close();

        }
    }
}