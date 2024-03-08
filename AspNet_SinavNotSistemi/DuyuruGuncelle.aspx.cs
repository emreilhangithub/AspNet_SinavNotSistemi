using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["DuyuruId"].ToString());
                DataSetTableAdapters.Tbl_DuyurularTableAdapter dt = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
                TxtDuyuruId.Text = id.ToString();
                TxtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DuyuruBaslik;
                TextAreaDuyuruIcerik.Value = dt.DuyuruSec(id)[0].DuyuruIcerik;
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                DataSetTableAdapters.Tbl_DuyurularTableAdapter dt = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
                var test = dt.DuyuruGuncelle(TxtDuyuruBaslik.Text, TextAreaDuyuruIcerik.Value, Convert.ToInt32(TxtDuyuruId.Text));
                Response.Redirect("DuyuruListesi.aspx");
            }
            catch (Exception ex)
            {
                var error = ex.Message;
                throw;
            }
        }
    }
}