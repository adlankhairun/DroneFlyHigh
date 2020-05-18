<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="DroneFlyHigh.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="h1" runat="server">
    CONTACT
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="pagecontent" runat="server">

   <p>

We are at:
</p>
<p>
Bandar Seri Begawan <br />
Meragang Street 23<br / >
New Zone<br>
BU 2324 
</p>

<h2>Contact Us Form</h2>
    <asp:panel runat="server" ID="pnlCompose">
        <asp:validationsummary runat="server" CssClass="errorMessages">
        </asp:validationsummary>
        <div>
            <asp:label id="lblEmail" runat="server" text="Email Address" associatedcontrolid="txtEmail">
            </asp:label>
            <asp:textbox id="txtEmail" runat="server">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Please enter your email address" 
                ControlToValidate="txtEmail" CssClass="error">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ErrorMessage="Please check you entered your email address correctly" 
                ControlToValidate="txtEmail" CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:label id="lblConfirmEmail" runat="server" text="Confirm Email" associatedcontrolid="txtConfirmEmail">
            </asp:label>
            <asp:textbox id="txtConfirmEmail" runat="server">
            </asp:textbox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Please check your confirmed email address" 
                ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" CssClass="error">*</asp:CompareValidator>
        </div>
        <div>
            <asp:label id="lblSubject" runat="server" text="Subject" associatedcontrolid="txtSubject">
            </asp:label>
            <asp:textbox id="txtSubject" runat="server">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ErrorMessage="Please type a subject for the message" 
                ControlToValidate="txtSubject" CssClass="error">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:label id="lblBody" runat="server" text="Your Message" associatedcontrolid="txtBody">
            </asp:label>
            <asp:textbox id="txtBody" runat="server" textmode="MultiLine">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" 
                ErrorMessage="Please type your message" ControlToValidate="txtBody" CssClass="error">*</asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:button id="btnContact" runat="server" text="Send" OnClick="btnContact_Click" />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </div>
    </asp:panel>

    <div id='printoutPanel'></div>
        
        <div id='myMap' style='width: 100vw; height: 100vh;'></div>
        <script type='text/javascript'>
            function loadMapScenario() {
                var map = new Microsoft.Maps.Map(document.getElementById('myMap'), {});
                
            }
        </script>
        <script type='text/javascript' src='https://www.bing.com/api/maps/mapcontrol?key=As6BgKQ2MXjtHys5-PERtp5rFDxq2d1BabZW2LyquOa0VK5MiZOZKAuo2Fwb8g1j&callback=loadMapScenario' async defer></script>

</asp:Content>
