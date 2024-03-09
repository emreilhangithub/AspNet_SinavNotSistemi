<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="AspNet_SinavNotSistemi.OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <br />
            <div>
                <asp:TextBox ID="TxtOgrenciNumara" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgrenciAd" runat="server" CssClass="form-control" Enabled="False">Ad</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgrenciSoyad" runat="server" CssClass="form-control" Enabled="False"> Soyad</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgrenciMail" runat="server" CssClass="form-control" Enabled="False">Mail</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgrenciTelefon" runat="server" CssClass="form-control" Enabled="False">Telefon</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgrenciSifre" runat="server" CssClass="form-control" Enabled="False">Şifre</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgrenciCinsiyet" runat="server" CssClass="form-control" Enabled="False">Cinsiyet</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgrenciFotograf" runat="server" CssClass="form-control" Enabled="False">Fotoğraf</asp:TextBox>
            </div>
            <br />

            <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" />

        </div>

    </form>


</asp:Content>
