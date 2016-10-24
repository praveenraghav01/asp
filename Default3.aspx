<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>My LPG.com</title>
    <link rel="icon" href="images/l.jpg"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-capable" content="yes">

  <script src="bower_components/webcomponentsjs/webcomponents-lite.min.js"></script>
  <script src="../../webcomponentsjs/webcomponents-lite.js"></script>
  <link rel="import" href="bower_components/iron-icons/iron-icons.html">
  <link rel="import" href="bower_components/paper-toolbar/paper-toolbar.html">
  <link rel="import" href="bower_components/font-roboto/roboto.html"> 
  <link rel="import" href="bower_components/paper-button/paper-button.html">
  <link rel="import" href="bower_components/paper-checkbox/paper-checkbox.html">
  <link rel="import" href="bower_components/paper-icon-button/paper-icon-button.html">
  <link rel="import" href="bower_components/paper-fab/paper-fab.html">
  <link rel="import" href="bower_components/paper-tabs/paper-tabs.html">
  <link rel="import" href="bower_components/paper-toast/paper-toast.html">
  <link rel="import" href="bower_components/paper-shadow/paper-shadow.html">
  <link rel="import" href="bower_components/paper-styles/color.html">
  <link rel="import" href="bower_components/paper-input/paper-input.html">
  <link rel="import" href="bower_components/paper-card/paper-card.html">
  <link rel="import" href="bower_components/paper-toggle-button/paper-toggle-button.html">
  <link rel="import" href="bower_components/paper-header-panel/paper-header-panel.html">
  <link rel="import" href="bower_components/paper-ripple/paper-ripple.html">
  <link rel="import" href="bower_components/paper-menu-button/paper-menu-button.html">
  <link rel="import" href="bower_components/paper-menu/paper-menu.html">
  <link rel="import" href="bower_components/paper-item/paper-item.html">
  <link rel="import" href="bower_components/paper-dropdown-menu/paper-dropdown-menu.html">
  <link rel="import" href="bower_components/paper-progress/paper-progress.html">
  <link rel="import" href="bower_components/paper-listbox/paper-listbox.html">
  <link rel="import" href="bower_components/iron-form/iron-form.html">
   <link rel="import" href="bower_components/paper-radio-button/paper-radio-button.html">
  <link rel="import" href="simple-element.html">
  <link rel="stylesheet" href="styles.css">
     <style type="text/css">
         .auto-style1 {
             width: 75%;
             background-color: #F0F0F0;
         }
         .auto-style2 {
             width: 291px;
         }
         .auto-style3 {
             width: 291px;
             height: 87px;
         }
         .auto-style4 {
             height: 87px;
         }
         .auto-style7 {
             width: 291px;
             height: 52px;
         }
         .auto-style8 {
             height: 52px;
         }
         .auto-style9 {
             width: 291px;
             height: 53px;
         }
         .auto-style10 {
             height: 53px;
         }
         .auto-style11 {
             width: 291px;
             height: 59px;
         }
         .auto-style12 {
             height: 59px;
         }
         .auto-style13 {
             width: 291px;
             height: 51px;
         }
         .auto-style14 {
             height: 51px;
         }
         .auto-style15 {
             width: 291px;
             height: 45px;
         }
         .auto-style16 {
             height: 45px;
         }
         .auto-style17 {
             width: 291px;
             height: 49px;
         }
         .auto-style18 {
             height: 49px;
         }
         .auto-style19 {
             width: 291px;
             height: 54px;
         }
         .auto-style20 {
             height: 54px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
     <!--Header Image-->
 <div id="img_header_location"><asp:Label ID="Label1" runat="server" Text="My LPG.com" Font-Size="XX-Large"></asp:Label>
  <a href=""><img src="images/gas.png" id="img_size"></a>
   </div>
   <!------------------------------------------------------------------------->


<paper-tabs selected="1">
  <paper-tab link>
    <a href="default.aspx" class="horizontal center-center layout">Home</a>
  </paper-tab>
  <paper-tab link>
    <a href="#" class="horizontal center-center layout">Sign Up</a>
  </paper-tab>
  <paper-tab link>
    <a href="#" class="horizontal center-center layout">Contact Us</a>
  </paper-tab>
  <paper-tab link>
    <a href="#" class="horizontal center-center layout">About Us</a>
  </paper-tab>
   
</paper-tabs>
        <paper-material id="header"  elevation=5>
   
   

 
   
 </paper-material>

<paper-material elevation=5>
  
    <div style="background-color: #F0F0F0">
  <paper-fab icon="account-circle" id="float_icon" elevation=5></paper-fab>
  <div class="card-content">
       
      <table align="center" class="auto-style1" style="text-align: center; border-spacing: 10px;">
          <tr>
              <td class="auto-style15"><asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>&nbsp;</td>
              <td class="auto-style16">
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Username" ForeColor="Red">*</asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style13"><asp:Label ID="Label4" runat="server" Text="E Mail Id"></asp:Label>&nbsp;</td>
              <td class="auto-style14">
                  <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Email " ForeColor="Red">*</asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style9"><asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>&nbsp;</td>
              <td class="auto-style10">
                  <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Password" ForeColor="Red">*</asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style7"><asp:Label ID="Label6" runat="server" Text="Conform Password"></asp:Label>&nbsp;</td>
              <td class="auto-style8">
                  <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Password Not Matched" ForeColor="Red">*</asp:CompareValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style11"><asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label>&nbsp;</td>
              <td class="auto-style12">&nbsp;<asp:TextBox ID="TextBox6" runat="server" TextMode="Date" Width="148px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid date" ForeColor="Red">*</asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style17"><asp:Label ID="Label8" runat="server" Text="state"></asp:Label>&nbsp;</td>
              <td class="auto-style18">
                  <asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem>Select State</asp:ListItem>
                      <asp:ListItem>Haryana</asp:ListItem>
                      <asp:ListItem>Punjab</asp:ListItem>
                      <asp:ListItem>UP</asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                      <asp:ListItem></asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Invalid State" ForeColor="Red">*</asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style19"><asp:Label ID="Label9" runat="server" Text="Gender"></asp:Label>&nbsp;</td>
              <td class="auto-style20">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="180px">
                      <asp:ListItem>Male</asp:ListItem>
                      <asp:ListItem>Female</asp:ListItem>
                  </asp:RadioButtonList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Invalid Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style7"><asp:Label ID="Label10" runat="server" Text="Profile Image"></asp:Label>&nbsp;</td>
              <td class="auto-style8">
                  <asp:FileUpload ID="FileUpload1" runat="server" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Invalid Image" ForeColor="Red">*</asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style3"><asp:Label ID="Label11" runat="server" Text="Adhar Number"></asp:Label>&nbsp;</td>
              <td class="auto-style4">
                  <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid Adhar Number" ForeColor="Red">*</asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style2">&nbsp;</td>
              <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button>&nbsp;<br /><br />
                  <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" ShowMessageBox="True" />
              </td>
          </tr>
      </table>

   

  </div> 
         </div>
</paper-material>

     <paper-material  elevation=5>
     <div id="footer">
         <div style="position: relative; text-align: center; top: 26px; left: 540px; height: 52px; width: 273px;">
             <asp:Label ID="Label2" runat="server" Text="My LPG.com" Font-Size="X-Large"></asp:Label> 

             <asp:Image ID="Image1" runat="server" Height="45px" ImageUrl="~/images/gas.png" Width="50px" />

         </div>
        <p style="text-align: center" >&copy; 2016 Created By Praveen Kumar </p>
     </div>
     </paper-material>

    </form>
</body>
</html>
