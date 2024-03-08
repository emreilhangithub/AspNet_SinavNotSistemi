<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="AspNet_SinavNotSistemi.OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtOgrenciAd" runat="server">Ögrenci Adı</asp:Label>
                <asp:TextBox ID="TxtOgrenciAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrenciSoyad" runat="server">Ögrenci Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrenciSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrenciTelefon" runat="server">Ögrenci Telefon</asp:Label>
                <asp:TextBox ID="TxtOgrenciTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrenciMail" runat="server">Ögrenci Mail</asp:Label>
                <asp:TextBox ID="TxtOgrenciMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrenciSifre" runat="server">Ögrenci Şifre</asp:Label>
                <asp:TextBox ID="TxtOgrenciSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrenciFotograf" runat="server">Ögrenci Fotoğraf Linki</asp:Label>
                <asp:TextBox ID="TxtOgrenciFotograf" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-info" />
    </form>
</asp:Content>
