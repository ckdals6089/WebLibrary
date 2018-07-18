<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchPage.aspx.cs" Inherits="Setuppage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" Runat="Server">
    <div>
        <h1>Search Page</h1>
        <h3>Search Book</h3>

        <asp:Label ID="labelGerne" runat="server" Text="Gerne :"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>ALL</asp:ListItem>
                <asp:ListItem>Non-fiction</asp:ListItem>
                <asp:ListItem>Fiction</asp:ListItem>
                <asp:ListItem>Science</asp:ListItem>
                <asp:ListItem>Satire</asp:ListItem>
                <asp:ListItem>Drama</asp:ListItem>
                <asp:ListItem>Action</asp:ListItem>
                <asp:ListItem>Adventure</asp:ListItem>
                <asp:ListItem>Romance</asp:ListItem>
                <asp:ListItem>Mystery</asp:ListItem>
                <asp:ListItem>Horror</asp:ListItem>
                <asp:ListItem>Self help</asp:ListItem>
                <asp:ListItem>Guide</asp:ListItem>
                <asp:ListItem>Travel</asp:ListItem>
                <asp:ListItem>Children's</asp:ListItem>
                <asp:ListItem>Religion</asp:ListItem>
                <asp:ListItem>History</asp:ListItem>
                <asp:ListItem>Math</asp:ListItem>
                <asp:ListItem>Anthology</asp:ListItem>
                <asp:ListItem>Poetry</asp:ListItem>
                <asp:ListItem>Encyclopedias</asp:ListItem>
                <asp:ListItem>Dictionaries</asp:ListItem>
                <asp:ListItem>Comics</asp:ListItem>
                <asp:ListItem>Art</asp:ListItem>
                <asp:ListItem>Cookbooks</asp:ListItem>
                <asp:ListItem>Diaries</asp:ListItem>
                <asp:ListItem>Journals</asp:ListItem>
        </asp:DropDownList><br />


        <asp:Label ID="labelLent" runat="server" Text="Name of a friend that the book is landed (1= true , 0 = false)  :   "></asp:Label><asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            
            <asp:ListItem>ALL</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>0</asp:ListItem>
        </asp:DropDownList>        &nbsp;<br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click1" />


    </div>
</asp:Content>

