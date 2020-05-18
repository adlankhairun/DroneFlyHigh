<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DroneFlyHigh._default" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Drone Fly High
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="h1" runat="server">
    <a href="~/default.aspx" runat="server">Home</a>
                    <a href="~/about.aspx" runat="server">About</a>
                    <a href="~/contact.aspx" runat="server">Contact Us</a>
                    <a href="~/Products.aspx" runat="server">Products</a>
                    <a href="~/Register.aspx" runat="server">Register</a>
                    <a href="~/Login.aspx" runat="server">Login</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
    Drone Products Drone Fly High
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

    

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
    </asp:GridView>

    

    <br />

    

</asp:Content>
