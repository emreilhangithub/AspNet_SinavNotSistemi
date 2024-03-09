using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.DataTableIstatistikTableAdapter dt = new DataSetTableAdapters.DataTableIstatistikTableAdapter();
            TxtOgrenciSayisi.Text = "Toplam Ögrenci Sayisi = " + dt.OgrenciSayisi().ToString();
            TxtOgretmenSayisi.Text = "Toplam Öğretmen Sayisi = " + dt.OgretmenSayisi().ToString();
            TxtDersSayisi.Text = "Toplam Ders Sayisi = " + dt.DersSayisi().ToString();

            TxtSinav1EnBasariliOgrenci.Text = "Sınav 1 En Başarılı Ögrenci = " + dt.Sinav1EnBasariliOgrenci().ToString();

            TxtAtilanMesajSayisi.Text = "Toplam Atılan Mesaj Sayisi = " + dt.MesajSayisi().ToString();
            TxtDuyuruSayisi.Text = "Sistemdeki Duyuru Sayısı = " + dt.DuyuruSayisi().ToString();

            TxtMatematikNotOrtalamasi.Text = "Matematik Not Ortalaması = " + dt.MatematikNotOrtalamasi().ToString();
            TxtBilisimNotOrtalamasi.Text = "Bilişim Not Ortalaması = " + dt.BilisimNotOrtalamasi().ToString();
            TxtGeometriNotOrtalamasi.Text = "Geometri Not Ortlaması = " + dt.GeometriNotOrtalamasi().ToString();
            TxtDinNotOrtalamasi.Text = "Din Not Ortlaması = " + dt.DinNotOrtalamasi().ToString();
            TxtTurkceNotOrtalamasi.Text = "Türkçe Not Ortlaması = " + dt.TurkceNotOrtalamasi().ToString();
        }
    }
}