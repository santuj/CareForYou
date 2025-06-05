using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class General_nurselogin : System.Web.UI.Page
{
    SqlDataAdapter adp = new SqlDataAdapter("select * from NurseDetails", @"Data Source=SANTU\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        adp.Fill(dt);
    }

    protected void SignIn_Click(object sender, EventArgs e)
    {
        lblError.Text = "";

        // Step 1: Check empty fields
        if (string.IsNullOrWhiteSpace(txtEmail.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Please enter all fields.";
            return;
        }

        try
        {
            // Step 2: Search for user by email
            DataRow[] dr = dt.Select("Email = '" + txtEmail.Text + "'");

            // Step 3: Check if user exists
            if (dr.Length == 0)
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Invalid login credentials.";
                return;
            }

            // Step 4: Check password match
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

            // Step 6: Store session values and redirect to nurse homepage
            Session["Email"] = dr[0]["Email"].ToString();
            Session["UserName"] = dr[0]["Name"].ToString();
            Session["Phone"] = dr[0]["Contact"].ToString();
            Session["Qualification"] = dr[0]["Nursingqualification"].ToString();
            Session["License"] = dr[0]["Licensenumber"].ToString();
            Session["year"] = dr[0]["Year"].ToString();
            Session["Address"] = dr[0]["Address"].ToString();

            Response.Redirect("~/Nurse/Index.aspx");
        }
        catch
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "An error occurred. Please try again.";
        }
    }

}