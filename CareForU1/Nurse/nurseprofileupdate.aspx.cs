using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //1
using System.Data.SqlClient;  //2


public partial class Nurse_nursepeofileupdate : System.Web.UI.Page
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
                LoadNurseDetails();
                lblError.Text = "";

            }
            else
            {
                Response.Redirect("~/General/nurselogin.aspx"); 
            }
        }
    }

    private void LoadProfile(string email)
    {
        using (SqlCommand cmd = new SqlCommand("select ProfilePicture from NurseDetails where Email = @Email", conn))
        {
            cmd.Parameters.AddWithValue("@Email", email);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                
                    byte[] imagedata = (byte[])reader["ProfilePicture"];
                    string base64String = Convert.ToBase64String(imagedata);
                    ProfilePicture.Src = "data:image/png;base64," + base64String;

                  
                   profilePreview.Src = "data:image/png;base64," + base64String;
                

            }

        }
    }

     private void LoadNurseDetails()
    {
        txtName.Text = Session["UserName"].ToString();
        txtNumber.Text = Session["Phone"].ToString();
        txtAddress.Text = Session["Address"].ToString();
        ddlQualification.Text = Session["Qualification"].ToString();
        Txtlicense.Text = Session["License"].ToString();
        txtyear.Text = Session["year"].ToString();


    }

    protected void Update_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update NurseDetails set Name = @Name, Contact = @Contact, Address = @Address, Nursingqualification = @Qualification, Licensenumber = @Licensenumber, Year = @year   where Email = @Email", conn);
        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());
        cmd.Parameters.AddWithValue("@Contact", txtNumber.Text );
        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@Qualification", ddlQualification.Text);
        cmd.Parameters.AddWithValue("@Licensenumber", Txtlicense.Text);
        cmd.Parameters.AddWithValue("@Year", txtyear.Text);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        lblError.Text = "Details updated successfully.";
}
    }