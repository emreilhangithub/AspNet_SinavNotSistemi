<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="AspNet_SinavNotSistemi.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h1 style="color: #6f7DCC; font-weight: bold; font-size: 24px;">Duyuru Güncelle</h1>

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:Label for="TxtDuyuruId" runat="server">Duyuru Id</asp:Label>
                <asp:TextBox ID="TxtDuyuruId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TextAreaDuyuruIcerik" runat="server">Duyuru İçerik</asp:Label>
                <textarea id="TextAreaDuyuruIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />

            <%--  <div>
                <asp:Label for="DropDownListDuyuruYapanOgretmen" runat="server">Duyuru Yapan Öğretmen</asp:Label>
                <asp:DropDownList ID="DropDownListDuyuruYapanOgretmen" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />--%>
        </div>

        <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="BtnGuncelle_Click" />

    </form>


</asp:Content>
