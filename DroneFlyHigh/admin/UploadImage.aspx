<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="DroneFlyHigh.admin.UploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="imageFileUploadControl" runat="server" />
            <br /><br />
            <asp:Label ID="label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="btnUpload" runat="server" Text="Upload Image" OnClick="btnUpload_Click" />
        </div>
    </form>
</body>
</html>
