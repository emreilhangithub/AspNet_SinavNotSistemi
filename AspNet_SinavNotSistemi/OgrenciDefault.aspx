<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="AspNet_SinavNotSistemi.OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <br />
            <div>
                <asp:TextBox ID="TxtOgrenciSayisi" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgretmenSayisi" runat="server" CssClass="form-control" Enabled="False">Ad Soyad</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtDersSayisi" runat="server" CssClass="form-control" Enabled="False">Mail</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtAtilanMesajSayisi" runat="server" CssClass="form-control" Enabled="False">Telefon</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtDuyuruSayisi" runat="server" CssClass="form-control" Enabled="False">Şifre</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtMatematikNotOrtalamasi" runat="server" CssClass="form-control" Enabled="False">Cinsiyet</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtSinav1EnBasariliOgrenci" runat="server" CssClass="form-control" Enabled="False">Fotoğraf</asp:TextBox>
            </div>
            <br />


        </div>

    </form>


</asp:Content>
