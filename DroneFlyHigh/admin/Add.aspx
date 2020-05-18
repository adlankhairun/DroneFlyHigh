<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="DroneFlyHigh.admin.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource" DefaultMode="Insert" Height="129px">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Number:
                    <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
                    <br />
                    ExDirectory:
                    <asp:CheckBox ID="ExDirectoryCheckBox" runat="server" Checked='<%# Bind("ExDirectory") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Number:
                    <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
                    <br />
                    ExDirectory:
                    <asp:CheckBox ID="ExDirectoryCheckBox" runat="server" Checked='<%# Bind("ExDirectory") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Number:
                    <asp:Label ID="NumberLabel" runat="server" Text='<%# Bind("Number") %>' />
                    <br />
                    ExDirectory:
                    <asp:CheckBox ID="ExDirectoryCheckBox" runat="server" Checked='<%# Bind("ExDirectory") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblPhoneDir] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblPhoneDir] ([Name], [Number], [ExDirectory]) VALUES (@Name, @Number, @ExDirectory)" SelectCommand="SELECT * FROM [tblPhoneDir]" UpdateCommand="UPDATE [tblPhoneDir] SET [Name] = @Name, [Number] = @Number, [ExDirectory] = @ExDirectory WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Number" Type="String" />
                    <asp:Parameter Name="ExDirectory" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Number" Type="String" />
                    <asp:Parameter Name="ExDirectory" Type="Boolean" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
