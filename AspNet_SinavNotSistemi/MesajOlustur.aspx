<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="AspNet_SinavNotSistemi.MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtMesajGonderen" runat="server">Gönderen</asp:Label>
                <asp:TextBox ID="TxtMesajGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label for="TxtMesajAlici" runat="server">Alıcı</asp:Label>
                <asp:TextBox ID="TxtMesajAlici" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtMesajBaslik" runat="server">Mesaj Başlık</asp:Label>
                <asp:TextBox ID="TxtMesajBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextAreaMesajIcerik" runat="server">Mesaj İçerik</asp:Label>
                <textarea id="TextAreaMesajIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
        </div>
        <asp:Button ID="BtnMesajGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="BtnMesajGonder_Click"/>
    </form>

</asp:Content>
