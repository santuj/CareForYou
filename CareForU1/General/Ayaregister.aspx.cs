using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //1
using System.Data.SqlClient;  //2


public partial class General_Ayaregister : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(" Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {

        if (txtPassword.Text != txtConfirmPassword.Text)
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Password not match.";
        }
        else
        {
            SqlDataAdapter adp = new SqlDataAdapter("select Email from AyaDetails where Email = '" + txtEmail.Text + "'", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Aya already registered.";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into AyaDetails(Name, Email, Password, DOB, Address, Number, Experience, Country, Zipcode, Primaryspecialty, Qualification, IDType, IDNumber, Policeverification, EmploymentType, StartTime, Location,ProfilePictureNew,IDProofNew) values (@Name, @Email, @Password, @DOB, @Address, @Number, @Experience, @Country, @Zipcode, @Primaryspecialty, @Qualification, @IDType, @IDNumber, @Policeverification, @EmploymentType, @StartTime, @Location,@ProfilePictureNew,@IDProofNew)", conn);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@Number", txtPhone.Text);
                cmd.Parameters.AddWithValue("@Experience", ddlExperience.Text);
                cmd.Parameters.AddWithValue("@Country", txtCountry.Text);
                cmd.Parameters.AddWithValue("@Zipcode", txtZipCode.Text);
                
                cmd.Parameters.AddWithValue("@Primaryspecialty",txtSpecialty.Text);
                cmd.Parameters.AddWithValue("@Qualification",txtQualification.Text);
                cmd.Parameters.AddWithValue("@IDType",ddlIDType.Text);
                cmd.Parameters.AddWithValue("@IDNumber",Txtidnumber.Text);
                cmd.Parameters.AddWithValue("@Policeverification",ddlPoliceVerification.Text);
                cmd.Parameters.AddWithValue("@EmploymentType",ddlEmploymentType.Text);
                cmd.Parameters.AddWithValue("@StartTime",ddlStartTime.Text);
                cmd.Parameters.AddWithValue("@Location",txtLocation.Text);
               
                






                byte[] imagedata = null;
                if (filePhoto.HasFile)
                {
                    using (System.IO.BinaryReader br = new System.IO.BinaryReader(filePhoto.PostedFile.InputStream))
                    {
                        imagedata = br.ReadBytes(filePhoto.PostedFile.ContentLength);
                    }
                    cmd.Parameters.AddWithValue("@ProfilePictureNew", imagedata);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@ProfilePictureNew", DBNull.Value);
                }



                byte[] imagedata1 = null;
                if (profilePic.HasFile)
                {
                    using (System.IO.BinaryReader br = new System.IO.BinaryReader(profilePic.PostedFile.InputStream))
                    {
                        imagedata1 = br.ReadBytes(profilePic.PostedFile.ContentLength);
                    }
                    cmd.Parameters.AddWithValue("@IDProofNew", imagedata1);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@IDProofNew", DBNull.Value);
                }



                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                lblError.ForeColor = System.Drawing.Color.Green;
                lblError.Text = "Aya registered successfull.";


                txtAddress.Text = "";
                 
                txtConfirmPassword.Text = "";
                txtDOB.Text = "";
                txtEmail.Text = "";
                txtName.Text = "";
                txtPassword.Text = "";
                txtPhone.Text = " ";
                ddlExperience.Text =" ";
                txtCountry.Text = " ";
                  txtZipCode.Text =" ";
                  
                txtSpecialty.Text="";
               txtQualification.Text="";
                  ddlIDType.Text="";
                   Txtidnumber.Text="";
                  ddlPoliceVerification.Text="";
              ddlEmploymentType.Text="";
              ddlStartTime.Text="";
              txtLocation.Text = "";


            }
        }

        Response.Redirect("~/General/Thankyou.aspx");

    }
}