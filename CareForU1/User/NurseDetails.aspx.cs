using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_NurseDetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ID"] != null)
            {
                string nurseId = Request.QueryString["ID"];
                LoadNurseDetails(nurseId);
            }
            else
            {
                Response.Redirect("~/General/Userlogin.aspx");
            }
        }
    }

    private void LoadNurseDetails(string nurseId)
    {
        using (SqlCommand cmd = new SqlCommand("select * from NurseDetails where ID = @ID", conn))
        {
            cmd.Parameters.AddWithValue("@ID", nurseId);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblName.Text = reader["Name"].ToString();
                lblQualification.Text = reader["Nursingqualification"].ToString();
                lblLicense.Text = reader["Licensenumber"].ToString();
                lblExperience.Text = reader["Year"].ToString();
                lblEmail.Text = reader["Email"].ToString();
                lblAddress.Text = reader["Address"].ToString();


                byte[] imagebytes = (byte[])reader["ProfilePicture"];
                string imageBase64 = Convert.ToBase64String(imagebytes);
                imgProfile.ImageUrl = "data:image/png;base64," + imageBase64;


            }
        }
    }

    protected void request_Click(object sender, EventArgs e)
    {
        string nurseId = Request.QueryString["ID"];
        Session["NurseId"] = nurseId;
        Response.Redirect("~/User/requestnurse_payment.aspx");
    }
}