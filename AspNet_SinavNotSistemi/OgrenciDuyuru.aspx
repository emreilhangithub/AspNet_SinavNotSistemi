<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDuyuru.aspx.cs" Inherits="AspNet_SinavNotSistemi.OgrenciDuyuru" %>
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
                     <td><%#Eval("DuyuruId")%></td>
                     <td><%#Eval("DuyuruBaslik")%></td>
                     <td><%#Eval("DuyuruIcerik")%></td>
                     <td><%#Eval("DuyuruYapanOgretmen")%></td>                     
                 </tr>
             </ItemTemplate>
         </asp:Repeater>
     </tbody>
 </table>

</asp:Content>
