using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.Tbl_OgrencilerTableAdapter dt = new DataSetTableAdapters.Tbl_OgrencilerTableAdapter();
            dt.OgrenciEkle(TxtOgrenciAd.Text,TxtOgrenciSoyad.Text,TxtOgrenciTelefon.Text,TxtOgrenciMail.Text,TxtOgrenciSifre.Text,TxtOgrenciFotograf.Text);
            Response.Redirect("Default.aspx"); //Yönlendirme Yapar.
        }
    }
}