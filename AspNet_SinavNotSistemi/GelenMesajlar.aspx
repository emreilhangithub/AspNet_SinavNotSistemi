﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="AspNet_SinavNotSistemi.GelenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Gönderen</th>
        <th scope="col">Başlık</th>
        <th scope="col">İçerik</th>
        <th scope="col">Tarih</th>
        <th scope="col">İşlemler</th>
    </tr>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("MesajId")%></td>
                    <td><%#Eval("MesajGonderen")%></td>
                    <td><%#Eval("MesajBaslik")%></td>
                    <td><%#Eval("MesajIcerik")%></td>
                    <td><%#Eval("MesajTarih")%></td>
                   <%-- <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/MesajSil.aspx?MesajId="+ Eval("MesajId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/MesajGuncelle.aspx?MesajId="+ Eval("MesajId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                    </td>--%>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>


</asp:Content>
