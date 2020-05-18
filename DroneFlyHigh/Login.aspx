<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DroneFlyHigh.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblLoginEmail" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblLoginPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <br />
            <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
