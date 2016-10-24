<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <title>My LPG.com</title>
    <link rel="icon" href="images/l.jpg"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-capable" content="yes">

  <script src="bower_components/webcomponentsjs/webcomponents-lite.min.js"></script>

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
  
  <link rel="import" href="bower_components/paper-input/paper-input.html">
  <link rel="import" href="bower_components/paper-card/paper-card.html">
  <link rel="import" href="bower_components/paper-toggle-button/paper-toggle-button.html">
  
  <link rel="import" href="bower_components/paper-ripple/paper-ripple.html">
  <link rel="import" href="bower_components/paper-menu-button/paper-menu-button.html">
  <link rel="import" href="bower_components/paper-menu/paper-menu.html">
  <link rel="import" href="bower_components/paper-item/paper-item.html">
  <link rel="import" href="bower_components/paper-dropdown-menu/paper-dropdown-menu.html">
    <link rel="import" href="bower_components/paper-listbox/paper-listbox.html">
  <link rel="stylesheet" href="styles.css">
</head>

<body unresolved>
 <form id="form1" runat="server">
 <!--Header Image-->
 <div id="img_header_location"><asp:Label ID="Label1" runat="server" Text="My LPG.com" Font-Size="XX-Large"></asp:Label>
  <a href=""><img src="images/gas.png" id="img_size"></a>
   </div>
   <!------------------------------------------------------------------------->


<paper-tabs selected="0">
  <paper-tab link>
    <a href="default.aspx" class="horizontal center-center layout">Home</a>
  </paper-tab>
  <paper-tab link>
    <a href="default3.aspx" class="horizontal center-center layout">Sign Up</a>
  </paper-tab>
  <paper-tab link>
    <a href="#" class="horizontal center-center layout">Contact Us</a>
  </paper-tab>
  <paper-tab link>
    <a href="#" class="horizontal center-center layout">About Us</a>
  </paper-tab>
   
</paper-tabs>
<!--------------------------------------------------------------------------->
 <br />
 <!--Header Image Part-->
 <paper-material id="header"  elevation=5>
   
   
</div>
 
   
 </paper-material>
 
 <!------------------------------------------------------------------------>
 <!--Content-->
 <paper-material id="content" elevation=5>
   
<!--Login Card Panel-->
<paper-card  id="login_card" image="images/asd.png" elevation=5>
  <paper-fab icon="account-circle" id="float_add_icon" elevation=5></paper-fab><br /><br />
  <div class="card-content"><asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>&nbsp;&nbsp;
      <asp:TextBox ID="username" runat="server" TextMode="Email"></asp:TextBox><br /><br />
      <br />
      <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox><br /><br />
    <asp:Label ID="Label5" runat="server" Text="Forget Password"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/ic_help_outline_black_36dp.png" Height="29px" OnClick="ImageButton1_Click" Width="31px"></asp:ImageButton>
     <br />
     <br />
  <center><asp:Label ID="error" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label></center>
  </div>
  <div class="card-actions"><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Reset"></asp:Button>
      <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" Visible="False" />
      <br />
      <br />
  </div>
</paper-card>
<!-------------------------------------------------------------------------->


<!--Megha Menu-->
<div id="cont" elevation=5 style="background-color: #FFFFFF">
 <div style="margin-left:5%;">
  <p style="font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 24px; font-weight: normal; font-variant: normal">
<center><asp:Label ID="Label6" runat="server" Text="Convenience on a click……" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" ForeColor="Red"></asp:Label><br />
</center><br />
Transparency Portal is now rebranded as ‘My LPG.com’ and brings you much more than just information.<br />
Come experience the convenience<br />
      <asp:BulletedList ID="BulletedList1" runat="server">
          <asp:ListItem>Book Your cylinder online</asp:ListItem>
          <asp:ListItem>Register for new connection</asp:ListItem>
          <asp:ListItem>Track your cylinder booking & delivery dates</asp:ListItem>
          <asp:ListItem>Choose your Distributor for portability</asp:ListItem>
          <asp:ListItem>Check Aadhaar linking status</asp:ListItem>
          <asp:ListItem>Monitor the subsidy transferred to your bank account</asp:ListItem>
          <asp:ListItem>Give your valubale feedback</asp:ListItem>
          <asp:ListItem>Surrender your LPG connection </asp:ListItem>
     </asp:BulletedList>

</p></div>
<asp:Panel ID="Panel1" runat="server" Width="330px">
<asp:Image ID="Image6" runat="server" Height="241px" ImageUrl="~/images/12.jpg" Width="326px" /></asp:Panel>

    <div style="text-align: center; float: none; clip: rect(); position: relative; left: 0px;">

        <asp:Image ID="Image2" runat="server" Height="162px" ImageUrl="~/images/AburiComposites_Icon_Non-Permeable_DG.png" Width="174px" />
        <asp:Image ID="Image3" runat="server" Height="162px" ImageUrl="~/images/AburiComposites_Icon_ORing_DG.png" Width="174px" />
        <asp:Image ID="Image4" runat="server" Height="162px" ImageUrl="~/images/a.png" Width="174px" />
        <asp:Image ID="Image5" runat="server" />

    </div>
 </div>
  

 </paper-material>
 <paper-material elevation=5>
     <div id="footer">
         <div style="position: relative; text-align: center; top: 26px; left: 540px; height: 52px; width: 273px;">
             <asp:Label ID="Label2" runat="server" Text="My LPG.com" Font-Size="X-Large"></asp:Label> 

             <asp:Image ID="Image1" runat="server" Height="45px" ImageUrl="~/images/gas.png" Width="50px" />

         </div>
        <p style="text-align: center" >&copy; 2016 Created By Praveen Kumar </p>
     </div>
     </paper-material>

 

  <script src="main.js"></script>
     </form>
</body>
</html>

