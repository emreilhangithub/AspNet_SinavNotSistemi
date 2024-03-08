using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int nid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                nid = Convert.ToInt32(Request.QueryString["NotId"].ToString());
                DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
                TxtOgrenciId.Text = dt.NotGetir2(nid)[0].OgrenciId.ToString();
                TxtOgrenciAdSoyad.Text = dt.NotGetir2(nid)[0].OgrenciAdSoyad;
                TxtDersAd.Text = dt.NotGetir2(nid)[0].DersAd;
                TxtSinav1.Text = dt.NotGetir2(nid)[0].Sinav1.ToString();
                TxtSinav2.Text = dt.NotGetir2(nid)[0].Sinav2.ToString();
                TxtSinav3.Text = dt.NotGetir2(nid)[0].Sinav3.ToString();
                TxtOrtalama.Text = dt.NotGetir2(nid)[0].Ortalama.ToString();
                TxtDurum.Text = dt.NotGetir2(nid)[0].Durum.ToString();
            }
        }

        protected void BtnHesapla_Click(object sender, EventArgs e)
        {
            double sinav1 = Convert.ToInt32(TxtSinav1.Text);
            double sinav2 = Convert.ToInt32(TxtSinav2.Text);
            double sinav3 = Convert.ToInt32(TxtSinav3.Text);
            double ortalama = (sinav1 + sinav2 + sinav3) / 3;
            TxtOrtalama.Text = ortalama.ToString("0.00");
            if (ortalama >= 50)
            {
                TxtDurum.Text = "True";
            }
            else
            {
                TxtDurum.Text = "False";
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {

        }
    }
}