<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DroneFlyHigh._default" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Drone Fly High
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="h1" runat="server">
    Drone Fly High
     
   
                    <a href="~/default.aspx" runat="server">Home</a>
                    <a href="~/about.aspx" runat="server">About</a>
                    <a href="~/contact.aspx" runat="server">Contact Us</a>
                    <a href="~/Products.aspx" runat="server">Products</a>
                    <a href="~/Register.aspx" runat="server">Register</a>
                    <a href="~/Login.aspx" runat="server">Login</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    Drone Products
</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="pagecontent" runat="server">

    

    <asp:Repeater ID="rptrDrone" runat="server" DataSourceID="SqlDataSource">
    <HeaderTemplate><ul></HeaderTemplate>
    <ItemTemplate>
        <li>
            <a href="<%# Eval("Id", "Products.aspx?Id={0}") %>">
            <%#Eval("Name") %>
            </a>
           
       

        </li>
    </ItemTemplate>
    <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>

    

    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblPhoneDir]"></asp:SqlDataSource>

    

    <br />

    

</asp:Content>
