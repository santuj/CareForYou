using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Aya_viewbooking : System.Web.UI.Page
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
                LoadRequests();
                
            }
            else
            {
                Response.Redirect("~/General/Ayalogin.aspx");
            }
        }
    }

    private void LoadProfile(string email)
    {
        using (SqlCommand cmd = new SqlCommand("SELECT ProfilePictureNew FROM AyaDetails WHERE Email = @Email", conn))
        {
            cmd.Parameters.AddWithValue("@Email", email);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                byte[] imagedata = (byte[])reader["ProfilePictureNew"];
                string base64String = Convert.ToBase64String(imagedata);
                ProfilePicture.Src = "data:image/png;base64," + base64String;
            }

            reader.Close(); // ✅ Explicitly close the reader
            conn.Close();   // ✅ Close the connection
        }
    }

    private void LoadRequests()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select AyaRequest1.Name, AyaRequest1.Contact, AyaRequest1.ID, AyaRequest1.Email, AyaRequest1.FromDate, AyaRequest1.FromTime, AyaRequest1.Todate, AyaRequest1.ToTime, AyaRequest1.Address from AyaRequest1 join AyaDetails on AyaDetails.ID = AyaRequest1.AyaId where AyaDetails.Email = @Email and AyaRequest1.Status = 'Pending'", conn);
        cmd.Parameters.AddWithValue("@Email", Session["Email"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        rptRequest.DataSource = dt;
        rptRequest.DataBind();
        conn.Close();
    }


    protected void rptRequest_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "ConfirmRequest")
        {
            string Id = e.CommandArgument.ToString();
            SqlCommand cmd = new SqlCommand("UPDATE AyaRequest1 SET Status = 'Approved' WHERE ID = @ID", conn);
            cmd.Parameters.AddWithValue("@ID", Id);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            // Refresh the list
            LoadRequests();
        }
        if (e.CommandName == "Rejectequest")
        {
            string Id = e.CommandArgument.ToString();
            SqlCommand cmd = new SqlCommand("UPDATE AyaRequest1 SET Status = 'Rejected' WHERE ID = @ID", conn);
            cmd.Parameters.AddWithValue("@ID", Id);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            // Refresh the list
            LoadRequests();
        }
    }

    

}