using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_myprofile : System.Web.UI.Page
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
                LoadProfile(email);
                LoadUserDetails();
                
            }
            else
            {
                Response.Redirect("~/General/UserLogin.aspx");
            }
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

        }
    }

    private void LoadUserDetails()
    {
        txtName.Text = Session["UserName"].ToString();
        txtPhone.Text = Session["Phone"].ToString();
        txtAddress.Text = Session["Address"].ToString();
    }

    protected void Update_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update UserDetails set Name = @Name, Contact = @Contact, Address = @Address where Email = @Email", conn);
        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());
        cmd.Parameters.AddWithValue("@Contact", txtPhone.Text);
        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}