﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Email"] != null)
            {
                UserName.Text = Session["userName"].ToString();
            }
            else
            {
                Response.Redirect("~/General/Adminlogin.aspx");
            }
        }
    }
}