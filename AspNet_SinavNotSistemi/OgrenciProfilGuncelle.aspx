<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciProfilGuncelle.aspx.cs" Inherits="AspNet_SinavNotSistemi.OgrenciProfilGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h1 style="color: #808080; font-weight: bold; font-size: 24px;">Şifre Güncelle</h1>

    <form id="Form1" runat="server">
        <div class="form-group">
            <br />
            <div>
                <asp:TextBox ID="TxtOgrenciNumara" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgrenciSifre" runat="server" CssClass="form-control">Şifre</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgrenciYeniSifre" runat="server" CssClass="form-control">Şifre Tekrar</asp:TextBox>
            </div>
            <br />

            <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="BtnGuncelle_Click" />

        </div>

    </form>

</asp:Content>
