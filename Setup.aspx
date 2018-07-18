<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Setup.aspx.cs" Inherits="Setup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" Runat="Server">
    <asp:Button ID="btnOriginal" runat="server" Text="To Original" OnClick="btnOriginal_Click" />  <asp:Button ID="btndark" runat="server" Text="To Dark" OnClick="btndark_Click" />

</asp:Content>

