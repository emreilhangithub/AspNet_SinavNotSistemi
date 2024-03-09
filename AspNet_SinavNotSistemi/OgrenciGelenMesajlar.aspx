<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGelenMesajlar.aspx.cs" Inherits="AspNet_SinavNotSistemi.OgrenciGelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h1 style="color: #808080; font-weight: bold; font-size: 24px;">Gelen Mesajlarım</h1>

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">Gönderen</th>
            <th scope="col">Başlık</th>
            <th scope="col">İçerik</th>
            <th scope="col">Tarih</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MesajGonderen")%></td>
                        <td><%#Eval("MesajBaslik")%></td>
                        <td><%#Eval("MesajIcerik")%></td>
                        <td><%#Eval("MesajTarih")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>


</asp:Content>
