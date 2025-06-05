using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_userrequsterbooking : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Email"]!= null)
            {
                string email = Session["Email"].ToString();
                lblUsername.Text = Session["UserName"].ToString();

                LoadProfile(email);
                LoadProfile1(email);
                LoadNurseRequest();
                LoadAyaRequest1();
            }
            else
            {
                Response.Redirect("~/General/Userlogin.aspx");
            }
        }
    }

    private void LoadNurseRequest()
    {
        SqlCommand cmd = new SqlCommand("select NurseDetails.Name, NurseDetails.Contact, NurseRequest.ID, NurseRequest.Status from NurseDetails join NurseRequest on NurseDetails.ID = NurseRequest.NurseId where NurseRequest.Email = @Email order by ID desc", conn);
        cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());
         conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        if(reader.HasRows)
        {
            rptNurse.DataSource = reader;
        rptNurse.DataBind();
        }
        conn.Close();
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

        }
        conn.Close();
    }


    private void LoadAyaRequest1()
    {
        SqlCommand cmd = new SqlCommand("select AyaDetails.Name, AyaDetails.Number, AyaRequest1.ID, AyaRequest1.Status from AyaDetails join AyaRequest1 on AyaDetails.ID = AyaRequest1.AyaId where AyaRequest1.Email = @Email order by ID desc", conn);
        cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            rptAya.DataSource = reader;
            rptAya.DataBind();
        }
        conn.Close();
    }

    private void LoadProfile1(string email)
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

            }

        }
        conn.Close();
    }
}