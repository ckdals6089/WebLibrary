<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentbody" runat="Server">
    <div>
        <h2>This is Add book page</h2>
        <h3>Add a Book
                

        </h3>
        <p>
            Name of Book :
            <asp:TextBox ID="txtnameofBook" runat="server" Width="69px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name of book is required" ControlToValidate="txtnameofBook" ForeColor="Red"></asp:RequiredFieldValidator><br />
            Author Name :
            <asp:TextBox ID="txtAuthor" runat="server" Width="65px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is required" ControlToValidate="txtAuthor" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            ISBN Number 10:
            <asp:TextBox ID="txtIsbn" runat="server" Width="69px" TextMode="Singleline"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="ISBN is required" ControlToValidate="txtISBN" ForeColor="Red"></asp:RequiredFieldValidator><br />
            Genre:
            <asp:DropDownList ID="dropGenre" runat="server" Height="16px" Width="200px">
                <asp:ListItem>Select</asp:ListItem>
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

            Comments :
            <textarea id="txtComment" cols="20" rows="2" runat="server"></textarea><br />
            Number of Pages :
            <asp:TextBox ID="txtPages" runat="server" Width="60px" TextMode="Number"></asp:TextBox><br />
            Lent to a friend :
            <asp:DropDownList ID="dropState" runat="server">
                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                <asp:ListItem>True</asp:ListItem>
                <asp:ListItem>False</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="reqState" runat="server" InitialValue="" ControlToValidate="dropState" ErrorMessage="Please Select one of list" ForeColor="Red">
            </asp:RequiredFieldValidator><br />
            Name of a friend that the book is lent to :
            <asp:TextBox ID="txtLentFd" Width="80px" runat="server"></asp:TextBox><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
        </p>

    </div>
</asp:Content>

