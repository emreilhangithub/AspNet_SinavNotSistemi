﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class DersSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DersId"].ToString());
            DataSetTableAdapters.Tbl_DerslerTableAdapter dt = new DataSetTableAdapters.Tbl_DerslerTableAdapter();
            dt.DersSil(id);
            Response.Redirect("DersListesi.aspx");
        }
    }
}