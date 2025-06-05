using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  //1
using System.Data.SqlClient;  //2

public partial class General_userregister : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");
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
            SqlDataAdapter adp = new SqlDataAdapter("select Email from UserDetails where Email = '" + txtEmail.Text + "'", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "User already registered.";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("InsertUserDetails", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@Contact", txtNumber.Text);
                cmd.Parameters.AddWithValue("@State", txtState.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);


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



                byte[] idProofData = null;
                if (FileUpload1.HasFile)
                {
                    using (System.IO.BinaryReader br = new System.IO.BinaryReader(FileUpload1.PostedFile.InputStream))
                    {
                        idProofData = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
                    }
                    cmd.Parameters.AddWithValue("@IDProof", idProofData);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@IDProof", DBNull.Value);
                }



                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                lblError.ForeColor = System.Drawing.Color.Green;
                lblError.Text = "User registered successfull.";


                txtAddress.Text = "";
                txtCity.Text = "";
                txtConfirmPassword.Text = "";
                txtDOB.Text = "";
                txtEmail.Text = "";
                txtName.Text = "";
                txtNumber.Text = "";
                txtPassword.Text = "";
                txtConfirmPassword.Text = "";
                txtState.Text = "";
                
            }
        }

        Response.Redirect("~/General/Thankyou1.aspx");


    }

}