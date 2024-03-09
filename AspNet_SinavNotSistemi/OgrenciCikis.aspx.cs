using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNet_SinavNotSistemi
{
    public partial class OgrenciCikis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Oturumu sonlandır
            Session.Remove("OgrenciNumara");
            // Giriş sayfasına yönlendir
            Response.Redirect("Login.aspx");
        }
    }
}