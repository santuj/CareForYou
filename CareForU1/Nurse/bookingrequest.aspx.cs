using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Nurse_bookingrequest : System.Web.UI.Page
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
                Response.Redirect("~/General/nurselogin.aspx");
            }
        }
    }

    private void LoadRequests()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select NurseRequest.Name, NurseRequest.Contact, NurseRequest.ID, NurseRequest.Email, NurseRequest.FromDate, NurseRequest.FromTime, NurseRequest.Todate, NurseRequest.ToTime, NurseRequest.Address from NurseRequest join NurseDetails on NurseDetails.ID = NurseRequest.NurseId where NurseDetails.Email = @Email and NurseRequest.Status = 'Pending'", conn);
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
            SqlCommand cmd = new SqlCommand("UPDATE NurseRequest SET Status = 'Approved' WHERE ID = @ID", conn);
            cmd.Parameters.AddWithValue("@ID", Id);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            // Refresh the list
            LoadRequests();
        }

        if (e.CommandName == "RejectRequest")
        {
            string Id = e.CommandArgument.ToString();
            SqlCommand cmd = new SqlCommand("UPDATE NurseRequest SET Status = 'Rejected' WHERE ID = @ID", conn);
            cmd.Parameters.AddWithValue("@ID", Id);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            // Refresh the list
            LoadRequests();
        }
    }

    private void LoadProfile(string email)
    {
        using (SqlCommand cmd = new SqlCommand("SELECT ProfilePicture FROM NurseDetails WHERE Email = @Email", conn))
        {
            cmd.Parameters.AddWithValue("@Email", email);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                byte[] imagedata = (byte[])reader["ProfilePicture"];
                string base64String = Convert.ToBase64String(imagedata);
                ProfilePicture.Src = "data:image/png;base64," + base64String;
            }

            reader.Close(); // ✅ Explicitly close the reader
            conn.Close();   // ✅ Close the connection
        }
    }

   
}