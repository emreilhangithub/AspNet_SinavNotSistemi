<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Istatistikler.aspx.cs" Inherits="AspNet_SinavNotSistemi.Istatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h1 style="color: #6f7DCC; font-weight: bold; font-size: 24px;">İstatistikler</h1>

    <form id="Form1" runat="server">
        <div class="form-group">
            <br />
            <div>
                <asp:TextBox ID="TxtOgrenciSayisi" runat="server" CssClass="form-control" Enabled="False">Toplam Öğrenci Sayısı</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtOgretmenSayisi" runat="server" CssClass="form-control" Enabled="False">Toplam Öğretmen Sayısı</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtDersSayisi" runat="server" CssClass="form-control" Enabled="False">Toplam Ders Sayısı</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtSinav1EnBasariliOgrenci" runat="server" CssClass="form-control" Enabled="False">Sınav 1 En Başarılı Ögrenci</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtAtilanMesajSayisi" runat="server" CssClass="form-control" Enabled="False">Toplam Atılan Mesaj</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtDuyuruSayisi" runat="server" CssClass="form-control" Enabled="False">Sistemdeki Duyuru Sayısı</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtMatematikNotOrtalamasi" runat="server" CssClass="form-control" Enabled="False">Matematik Not Ortalaması</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TxtBilisimNotOrtalamasi" runat="server" CssClass="form-control" Enabled="False">Bilişim Not Ortalaması</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtGeometriNotOrtalamasi" runat="server" CssClass="form-control" Enabled="False">Geometri Not Ortlaması</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtDinNotOrtalamasi" runat="server" CssClass="form-control" Enabled="False">Din Not Ortlaması</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtTurkceNotOrtalamasi" runat="server" CssClass="form-control" Enabled="False">Türkçe Not Ortlaması</asp:TextBox>
            </div>
            <br />
        </div>

    </form>

</asp:Content>
