using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var ogrenciNumarasi = "0";
            //TxtOgrenciNumara.Text = Request.QueryString["OgrenciNumara"];
            TxtOgrenciNumara.Text = Session["OgrenciNumara"].ToString();
            ogrenciNumarasi = TxtOgrenciNumara.Text;

            DataSetTableAdapters.Tbl_OgrencilerTableAdapter dt = new DataSetTableAdapters.Tbl_OgrencilerTableAdapter();
            TxtOgrenciAd.Text = "Ögrenci Ad = " + dt.OgrenciPaneliGetir(ogrenciNumarasi)[0].OgrenciAd;
            TxtOgrenciSoyad.Text = "Ögrenci Soyad = " + dt.OgrenciPaneliGetir(ogrenciNumarasi)[0].OgrenciSoyad;
            TxtOgrenciMail.Text = "Ögrenci Mail = " + dt.OgrenciPaneliGetir(ogrenciNumarasi)[0].OgrenciMail;
            TxtOgrenciSifre.Text = "Ögrenci Şifre = " + dt.OgrenciPaneliGetir(ogrenciNumarasi)[0].OgrenciSifre;
            TxtOgrenciTelefon.Text = "Ögrenci Telefon = " + dt.OgrenciPaneliGetir(ogrenciNumarasi)[0].OgrenciTelefon;
            TxtOgrenciFotograf.Text = "Ögrenci Fotograf = " + dt.OgrenciPaneliGetir(ogrenciNumarasi)[0].OgrenciFotograf;
            TxtOgrenciCinsiyet.Text = "Ögrenci Cinsiyet = " + dt.OgrenciPaneliGetir(ogrenciNumarasi)[0].OgrenciCinsiyet;
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciProfilGuncelle.aspx?OgrenciNumara=" + TxtOgrenciNumara.Text);
        }
    }
}