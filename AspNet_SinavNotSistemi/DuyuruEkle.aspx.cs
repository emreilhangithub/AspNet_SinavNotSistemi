using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.Tbl_OgretmenlerTableAdapter dt = new DataSetTableAdapters.Tbl_OgretmenlerTableAdapter();
                DropDownListDuyuruYapanOgretmen.DataSource = dt.OgretmenListesi();
                DropDownListDuyuruYapanOgretmen.DataTextField = "OgretmenAdSoyad";
                DropDownListDuyuruYapanOgretmen.DataValueField = "OgretmenId";
                DropDownListDuyuruYapanOgretmen.DataBind();
            }
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.Tbl_DuyurularTableAdapter dt = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
            dt.DuyuruEkle(TxtDuyuruBaslik.Text, TextAreaDuyuruIcerik.Value.ToString(), Convert.ToInt32(DropDownListDuyuruYapanOgretmen.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}