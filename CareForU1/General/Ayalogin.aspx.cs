using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class General_Ayalogin : System.Web.UI.Page
{
    SqlDataAdapter adp = new SqlDataAdapter("select * from  AyaDetails", @"Data Source=SANTU\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        adp.Fill(dt);
    }

    protected void SignIn_Click(object sender, EventArgs e)
    {
        lblError.Text = "";

        // Step 1: Check for empty input
        if (string.IsNullOrWhiteSpace(txtEmail.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Please enter all fields.";
            return;
        }

        try
        {
            // Step 2: Fetch rows matching the email
            DataRow[] dr = dt.Select("Email = '" + txtEmail.Text + "'");

            // Step 3: Validate if user exists
            if (dr.Length == 0)
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Invalid login credentials.";
                return;
            }

            // Step 4: Compare password
            if (txtPassword.Text != dr[0]["Password"].ToString())
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Invalid login credentials.";
                return;
            }

            // Step 5: Check status
            if (dr[0]["Status"].ToString() == "Pending")
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Your Registration is now pending";
                return;
            }

            if (dr[0]["Status"].ToString() == "Rejected")
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Your Registration is Rejected";
                return;
            }

            // Step 5: Set session and redirect
            Session["Email"] = dr[0]["Email"].ToString();
            Session["UserName"] = dr[0]["Name"].ToString();
            Response.Redirect("~/Aya/Home.aspx");
        }
        catch
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "An unexpected error occurred. Please try again.";
        }
    }

}