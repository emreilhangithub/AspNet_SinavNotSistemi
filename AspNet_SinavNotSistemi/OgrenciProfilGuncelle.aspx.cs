using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class OgrenciProfilGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {     
            TxtOgrenciNumara.Text = Request.QueryString["OgrenciNumara"];

            if (Page.IsPostBack == false)
            {
               
            }          
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.Tbl_OgrencilerTableAdapter dt = new DataSetTableAdapters.Tbl_OgrencilerTableAdapter();

            if (TxtOgrenciSifre.Text == TxtOgrenciYeniSifre.Text)
            {
                dt.OgrenciSifreGuncelle(TxtOgrenciYeniSifre.Text, TxtOgrenciNumara.Text);
                Response.Redirect("OgrenciDefault.aspx?OgrenciNumara=" + TxtOgrenciNumara.Text);
            }
            else
            {
                Response.Redirect("OgrenciDefault.aspx?OgrenciNumara=" + TxtOgrenciNumara.Text);
            }
        }
    }
}