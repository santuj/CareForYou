using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Usermanagement : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=SANTU\\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Email"] != null)
            {
                LoadUserDetails();
                  UserName.Text = Session["UserName"].ToString(); 
            }
            else
            {
                Response.Redirect("~/General/Adminlogin.aspx");
            }
        }
    }
    private void LoadUserDetails()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from UserDetails", conn);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        rptUserReg.DataSource = dt;
        rptUserReg.DataBind();
        conn.Close();
    }
}