﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class General_Admin : System.Web.UI.Page
{
    SqlDataAdapter adp = new SqlDataAdapter("select * from  AdminDetails", @"Data Source=SANTU\SQLEXPRESS;Initial Catalog=CareForYou;Persist Security Info=True;User ID=sa;Password=1234");
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        adp.Fill(dt);
    }

    protected void SignIn_Click(object sender, EventArgs e)
    {

        if (txtEmail.Text == "" || txtPassword.Text == "")
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Enter all fileds.";
        }
        else
        {
            try
            {
                DataRow[] dr = dt.Select("Email = '" + txtEmail.Text + "'");
                if (txtPassword.Text == dr[0]["Password"].ToString())
                {
                    Session["Email"] = dr[0]["Email"].ToString();
                    Session["UserName"] = dr[0]["Name"].ToString();
                    Response.Redirect("~/Admin/Home.aspx");

                }
                else
                {
                    lblError.ForeColor = System.Drawing.Color.Red;
                    lblError.Text = "Invalid login credential.";
                }
            }
            catch
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Invalid login credential.";
            }
        }
    }
}