<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="AspNet_SinavNotSistemi.DuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">
     <tr>
         <th scope="col">Duyuru Id</th>
         <th scope="col">Duyuru Başlık</th>
         <th scope="col">Duyuru İçerik</th>
         <th scope="col">Duyuru Yapan Öğretmen</th>
     </tr>
     <tbody>
         <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td> <%#Eval("DuyuruId")%></td>
                    <td> <%#Eval("DuyuruBaslik")%></td>
                    <td> <%#Eval("DuyuruIcerik")%></td>
                    <td> <%#Eval("DuyuruYapanOgretmen")%></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DuyuruSil.aspx?DuyuruId="+ Eval("DuyuruId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/DuyuruGuncelle.aspx?DuyuruId="+ Eval("DuyuruId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
         </asp:Repeater>
     </tbody>
 </table>

</asp:Content>
