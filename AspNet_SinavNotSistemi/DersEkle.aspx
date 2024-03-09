<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="AspNet_SinavNotSistemi.DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h1 style="color: #6f7DCC; font-weight: bold; font-size: 24px;">Ders Ekle</h1>

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtDersAd" runat="server">Ders Ad</asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" class="form-control"></asp:TextBox>
            </div>
            <br />

        </div>
        <asp:Button ID="BtnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="BtnKaydet_Click"/>
    </form>


</asp:Content>
