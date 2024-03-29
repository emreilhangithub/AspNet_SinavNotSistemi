﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AspNet_SinavNotSistemi
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-I1U4DR9;Initial Catalog=DbSinavNotSistemi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGirisYap_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Ogrenciler WHERE OgrenciNumara = @OgrenciNumara and OgrenciSifre = @OgrenciSifre",baglanti);
            komut.Parameters.AddWithValue("@OgrenciNumara",TxtNumara.Text);
            komut.Parameters.AddWithValue("@OgrenciSifre", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OgrenciNumara", TxtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx");
                //Response.Redirect("OgrenciDefault.aspx?OgrenciNumara=" + TxtNumara.Text);
            }
            else
            {
                TxtNumara.Text = "Hatalı Giriş";
            }
            baglanti.Close();
           
        }

        protected void BtnOgretmenGirisYap_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Ogretmenler WHERE OgretmenNumara = @OgretmenNumara and OgretmenSifre = @OgretmenSifre", baglanti);
            komut.Parameters.AddWithValue("@OgretmenNumara", TxtNumara.Text);
            komut.Parameters.AddWithValue("@OgretmenSifre", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OgretmenNumara", TxtNumara.Text);
                Response.Redirect("Default.aspx");
                //Response.Redirect("OgrenciDefault.aspx?OgrenciNumara=" + TxtNumara.Text);
            }
            else
            {
                TxtNumara.Text = "Hatalı Giriş";
            }
            baglanti.Close();
        }
    }
}