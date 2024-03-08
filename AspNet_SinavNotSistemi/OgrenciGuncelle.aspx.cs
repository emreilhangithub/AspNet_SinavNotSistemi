using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                try
                {

                    int id = Convert.ToInt32(Request.QueryString["OgrenciId"].ToString());
                    DataSetTableAdapters.Tbl_OgrencilerTableAdapter dt = new DataSetTableAdapters.Tbl_OgrencilerTableAdapter();
                    TxtOgrenciId.Text = id.ToString();
                    TxtOgrenciAd.Text = dt.OgrenciSec(id)[0].OgrenciAd;
                    TxtOgrenciSoyad.Text = dt.OgrenciSec(id)[0].OgrenciSoyad;
                    TxtOgrenciMail.Text = dt.OgrenciSec(id)[0].OgrenciMail;
                    TxtOgrenciTelefon.Text = dt.OgrenciSec(id)[0].OgrenciTelefon;
                    TxtOgrenciSifre.Text = dt.OgrenciSec(id)[0].OgrenciSifre;
                    TxtOgrenciFotograf.Text = dt.OgrenciSec(id)[0].OgrenciFotograf;

                }
                catch (Exception)
                {
                    TxtOgrenciFotograf.Text = "Link Girin";
                }
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                DataSetTableAdapters.Tbl_OgrencilerTableAdapter dt = new DataSetTableAdapters.Tbl_OgrencilerTableAdapter();
                var test = dt.OgrenciGuncelle(TxtOgrenciAd.Text, TxtOgrenciSoyad.Text, TxtOgrenciTelefon.Text, TxtOgrenciMail.Text, TxtOgrenciSifre.Text, TxtOgrenciFotograf.Text, Convert.ToInt32(TxtOgrenciId.Text));
                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {
                var error = ex.Message;
                throw;
            }

        }
    }
}