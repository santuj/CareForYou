using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_AyaDetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ID"] != null)
            {
                string AyaId = Request.QueryString["ID"];
                LoadAyaDetails(AyaId);
            }
            else
            {
                Response.Redirect("~/General/Userlogin.aspx");
            }
        }
    }

    private void LoadAyaDetails(string AyaId)
    {
        using (SqlCommand cmd = new SqlCommand("select * from AyaDetails where ID = @ID", conn))
        {
            cmd.Parameters.AddWithValue("@ID", AyaId);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblName.Text = reader["Name"].ToString();
                lblPoliceverification.Text = reader["Policeverification"].ToString();
                txtNumber.Text = reader["Number"].ToString();
                lblExperience.Text = reader["Experience"].ToString();
                lblEmail.Text = reader["Email"].ToString();
                lblAddress.Text = reader["Address"].ToString();


                if (reader["ProfilePictureNew"] != DBNull.Value)
                {
                    byte[] imagebytes = (byte[])reader["ProfilePictureNew"];
                    string imageBase64 = Convert.ToBase64String(imagebytes);
                    imgProfile.ImageUrl = "data:image/png;base64," + imageBase64;
                }
                else
                {
                    imgProfile.ImageUrl = "~/Images/default-profile.png"; // Provide a default image path
                }
            }
            conn.Close();
        }
    }

    protected void request_Click(object sender, EventArgs e)
    {
        string AyaId = Request.QueryString["ID"];
        Session["AyaId"] = AyaId;
        Response.Redirect("~/User/bookdaycare_payment.aspx");
    }
}