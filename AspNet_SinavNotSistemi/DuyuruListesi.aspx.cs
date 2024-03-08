using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class DuyuruListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.Tbl_DuyurularTableAdapter dt = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
            Repeater1.DataSource = dt.DuyuruListesi(); //veriyi çekmek için
            Repeater1.DataBind();//veriyi bağlamak için 
        }
    }
}