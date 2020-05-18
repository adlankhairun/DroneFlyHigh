<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DroneFlyHigh.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Registeration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="h1" runat="server">
    Registeration Page
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    Please fill up all the details, below
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="pagecontent" runat="server">

    <p>
        Username :<asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        Password :<asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
    </p>
    <p>
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </p>

</asp:Content>
