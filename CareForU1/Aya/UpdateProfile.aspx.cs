using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //1
using System.Data.SqlClient;  //2


public partial class Aya_UpdateProfile : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(" Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Email"] != null)
            {
                string email = Session["Email"].ToString();
                lblUserName.Text = Session["UserName"].ToString();
                LoadProfile(email);
                LoadAyaDetails(email);
                lblError.Text = "";

            }
            else
            {
                Response.Redirect("~/General/Ayalogin.aspx");
            }
        }
    }
    private void LoadProfile(string email)
    {
        using (SqlCommand cmd = new SqlCommand("select ProfilePictureNew from AyaDetails where Email = @Email", conn))
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

            } conn.Close();

        }
    }

    private void LoadAyaDetails(string email)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select Name, Number, Address, Country, Zipcode, Primaryspecialty, Experience, StartTime, EmploymentType from AyaDetails where Email = @Email", conn);

        cmd.Parameters.AddWithValue("@Email", email);

        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            txtName.Text = reader["Name"].ToString();
            txtNumber.Text = reader["Number"].ToString();
            txtAddress.Text = reader["Address"].ToString();
            txtCountry.Text = reader["Country"].ToString();
            txtZipCode.Text = reader["Zipcode"].ToString();
            txtSpecialty.Text = reader["Primaryspecialty"].ToString();
            ddlExperience.Text = reader["Experience"].ToString();
            ddlStartTime.Text = reader["StartTime"].ToString();
            ddlEmploymentType.Text = reader["EmploymentType"].ToString();
        }
        conn.Close();
       
        



    }

    protected void Update_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update AyaDetails set Name = @Name, Number = @Number, Address = @Address, Country = @Country, Zipcode = @Zipcode, Primaryspecialty = @Primaryspecialty, Experience = @Experience, StartTime = @StartTime, EmploymentType = @EmploymentType  where Email = @Email", conn);
        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());

        cmd.Parameters.AddWithValue("@Number", txtNumber.Text);
        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@Country", txtCountry.Text);
        cmd.Parameters.AddWithValue("@Zipcode",txtZipCode.Text);
        cmd.Parameters.AddWithValue("@Primaryspecialty",txtSpecialty.Text);
        cmd.Parameters.AddWithValue("@Experience", ddlExperience.Text);
        cmd.Parameters.AddWithValue("@StartTime",ddlStartTime.Text);
        cmd.Parameters.AddWithValue("@EmploymentType",ddlEmploymentType.Text);
         

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        lblError.Text = "Details updated successfully.";
    }

}