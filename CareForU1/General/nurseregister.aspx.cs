using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //1
using System.Data.SqlClient;  //2

public partial class General_nurseregister : System.Web.UI.Page
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
            SqlDataAdapter adp = new SqlDataAdapter("select Email from NurseDetails where Email = '" + txtEmail.Text + "'", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Nurse already registered.";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("InsertNurseDetails", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Nursingqualification", ddlQualification.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.Text);
                cmd.Parameters.AddWithValue("@Year", txtyear.Text);
                cmd.Parameters.AddWithValue("@Contact", txtNumber.Text);
                cmd.Parameters.AddWithValue("@Licensenumber",Txtlicense.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);



                byte[] imagedata = null;
                if (profilePic.HasFile)
                {
                    using (System.IO.BinaryReader br = new System.IO.BinaryReader(profilePic.PostedFile.InputStream))
                    {
                        imagedata = br.ReadBytes(profilePic.PostedFile.ContentLength);
                    }
                    cmd.Parameters.AddWithValue("@ProfilePicture", imagedata);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@ProfilePicture", DBNull.Value);
                }



                byte[] imagedata_certificate = null;
                if (Certificate.HasFile)
                {
                    using (System.IO.BinaryReader br = new System.IO.BinaryReader(Certificate.PostedFile.InputStream))
                    {
                        imagedata_certificate = br.ReadBytes(Certificate.PostedFile.ContentLength);
                    }
                    cmd.Parameters.AddWithValue("@Certificate", imagedata_certificate);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Certificate", DBNull.Value);
                }



                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                lblError.ForeColor = System.Drawing.Color.Green;
                lblError.Text = "Nurse registered successfull.";


                txtAddress.Text = "";
                ddlGender.Text = "";
                Txtlicense.Text = "";
                lblQualification.Text = "";
                txtConfirmPassword.Text = "";
                txtDOB.Text = "";
                txtEmail.Text = "";
                txtName.Text = "";
                txtNumber.Text = "";
                txtPassword.Text = "";

                
            }
        }

        Response.Redirect("~/General/Thankyou2.aspx");


    }
}