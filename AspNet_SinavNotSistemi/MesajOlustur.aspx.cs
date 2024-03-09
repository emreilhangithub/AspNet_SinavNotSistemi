using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class MesajOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtMesajGonderen.Text = "1114";
        }

        protected void BtnMesajGonder_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.Tbl_MesajlarTableAdapter dt = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();
            dt.MesajGonder(TxtMesajGonderen.Text,TxtMesajAlici.Text,TxtMesajBaslik.Text,TextAreaMesajIcerik.Value);
            Response.Redirect("GidenMesajlar.aspx");
        }
    }
}