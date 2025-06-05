using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class General_requestnurse_payment : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Session["NurseId"] == null)
            {
                Response.Redirect("~/General/Userlogin.aspx");
            }
        }
    }

    protected void register_Click(object sender, EventArgs e)
    {
        SqlDataAdapter adp = new SqlDataAdapter("select Email from NurseRequest where Contact = @Contact and NurseId = @NurseId and Status = 'Pending'", conn);
        adp.SelectCommand.Parameters.AddWithValue("@Contact", txtNumber.Text);
        adp.SelectCommand.Parameters.AddWithValue("@NurseId", Session["NurseId"].ToString());

        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Already requested to this nurse.";
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insert into NurseRequest (Name, Email, Contact, Address, IdType, IdNumber, IdProof, FromDate, FromTime, ToDate, ToTime, Duration, NurseId) values (@Name, @Email, @Contact, @Address, @IdType, @IdNumber, @IdProof, @FromDate, @FromTime, @ToDate, @ToTime, @Duration, @NurseId)", conn);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());
            cmd.Parameters.AddWithValue("@Contact", txtNumber.Text);
            cmd.Parameters.AddWithValue("@Address", txtadress.Text);
            cmd.Parameters.AddWithValue("@IdType", ddlIDType.Text);
            cmd.Parameters.AddWithValue("@IdNumber", Txtidnumber.Text);
            cmd.Parameters.AddWithValue("@FromDate", txtFromDate.Text);
            cmd.Parameters.AddWithValue("@FromTime", txtFromTime.Text);
            cmd.Parameters.AddWithValue("@ToDate", txtToDate.Text);
            cmd.Parameters.AddWithValue("@ToTime", txtToTime.Text);
            cmd.Parameters.AddWithValue("@Duration", ddlPreferredDuration.Text);
            cmd.Parameters.AddWithValue("@NurseId", Session["NurseId"].ToString());

              byte[] imagedata = null;
                if (profilePic.HasFile)
                {
                    using (System.IO.BinaryReader br = new System.IO.BinaryReader(profilePic.PostedFile.InputStream))
                    {
                        imagedata = br.ReadBytes(profilePic.PostedFile.ContentLength);
                    }
                    cmd.Parameters.AddWithValue("@IdProof", imagedata);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@IdProof", DBNull.Value);
                }

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            lblError.ForeColor = System.Drawing.Color.Green;
            lblError.Text = "Request submitted successfully.";
        }
        Response.Redirect("~/General/Thankyou3.aspx");
    }

        
   
}