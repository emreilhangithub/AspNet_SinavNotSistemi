using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["DersId"].ToString());
                DataSetTableAdapters.Tbl_DerslerTableAdapter dt = new DataSetTableAdapters.Tbl_DerslerTableAdapter();
                TxtDersId.Text = id.ToString();
                TxtDersAd.Text = dt.DersGetir(id)[0].DersAd;
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                DataSetTableAdapters.Tbl_DerslerTableAdapter dt = new DataSetTableAdapters.Tbl_DerslerTableAdapter();
                var test = dt.DersGuncelle(TxtDersAd.Text,Convert.ToInt32(TxtDersId.Text));
                Response.Redirect("DersListesi.aspx");
            }
            catch (Exception ex)
            {
                var error = ex.Message;
                throw;
            }
        }
    }
}