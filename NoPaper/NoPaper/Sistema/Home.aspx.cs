﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoPaper.Sistema
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Response.Redirect("/nopaper/Default.aspx");
        }
    }
}