<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>My LPG.com</title>
    <link rel="icon" href="images/l.jpg"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-capable" content="yes">
  
  <script src="bower_components/webcomponentsjs/webcomponents-lite.min.js"></script>
  <script src="bower_components/webcomponentsjs/webcomponents-lite.js"></script>
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
    
    <script type="text/javascript">
     window.history.forward(-1);
 
        //function displayname()
        //{
        //    var ajreq = new XMLHttpRequest();
        //    var tb = document.getElementById('TextBox3').value;
        //    ajreq.onreadystatechange = function ()
        //    {
        //        if (ajreq.readyState == 4)
        //        {
        //            var dlist = document.getElementById('dl');
        //            dlist.innerHTML = ajreq.responseText;
        //        }
        //    }
        //    ajreq.open("get", "auto.aspx?name=" + tb, true);
        //    ajreq.send(null);
        //}
    </script>
  <link rel="stylesheet" href="styles.css">
  <style is="custom-style">
    paper-toolbar + paper-toolbar {
      margin-top: 20px;
    }
    paper-toolbar.red {
      --paper-toolbar-background: #0099FF;
    }
    .spacer {
      @apply(--layout-flex);
    }
      .avatar {
      height: 150px;
      width: 150px;
      border-radius: 75px;
      box-sizing: border-box;
      background-color: #DDD;
    }
      .avatar1 {
      height: 40px;
      width: 40px;
      border-radius: 75px;
      box-sizing: border-box;
      background-color: #DDD;
    }

      .iron-selected {
          width: 736px;
          height: 257px;
      }

      .auto-style3 {
          width: 93%;
          background-color: #99FFCC;
      }

      .auto-style4 {
          width: 100%;
      }

      .auto-style5 {
          width: 472px;
      }

  </style>
</head>
<body>
    <form id="form1" runat="server">

  <paper-toolbar id="title"  class="red">
    
    <span class="title"><asp:Label ID="Label1" runat="server" Text="My LPG.com" Font-Size="XX-Large"></asp:Label>
  <a href=""><img src="images/gas.png" id="img_size"></a></span>
      <paper-input label="Search" id="TextBox3" list="dl" type="text" ></paper-input>
      
             <paper-icon-button icon="search"></paper-icon-button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
          
     <asp:Image ID="Image2" CssClass="avatar1" ImageUrl='<%# Eval("image") %>' runat="server"></asp:Image>
      <paper-icon-button icon="question-answer"></paper-icon-button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <paper-icon-button icon="settings"></paper-icon-button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/ic_power_settings_new_black_36dp.png" Height="28px" Width="29px" OnClick="ImageButton3_Click" />
  </paper-toolbar>
  <paper-card id="profile" elevation="5">
      <div>
<asp:Image ID="Image3" ImageUrl="images/ma.jpg" ImageAlign="Middle" Height="150px" Width="250px" runat="server"></asp:Image>
      </div>
<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
        <img class="avatar" id="pic" src="<%# Eval("image") %>" alt="No Image" >
       
    </ItemTemplate>

</asp:Repeater>
      <div style="text-align: center;"><asp:FileUpload ID="FileUpload1"  runat="server"></asp:FileUpload>
          <asp:ImageButton ID="ImageButton2" runat="server" Height="31px" ImageUrl="~/images/ic_party_mode_black_48dp.png" OnClick="ImageButton2_Click" Width="33px" />
        </div>
      <br />
      <br />
      <br />

      <div style="font-size: medium; font-family: Arial, Helvetica, sans-serif; text-align: center; left: auto; margin-left:30px; width: 71%; height: auto; top: auto; right: auto; bottom: auto;">
          <table align="left" class="auto-style3" style="background-color: #FFFFFF">
              <tr>
                  <td style="text-align: center"><asp:Label ID="Label10" runat="server" Text=""></asp:Label></td>
              </tr>
              <tr>
                  <td style="text-align: center"><asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
              </tr>
              <tr>
                  <td style="text-align: center"><asp:Label ID="Label12" runat="server" Text=""></asp:Label></td>
              </tr>
              <tr>
                  <td style="text-align: center"><asp:Label ID="Label13" runat="server" Text=""></asp:Label></td>
              </tr>
              <tr>
                  <td style="text-align: center"><asp:Label ID="Label14" runat="server" Text=""></asp:Label></td>
              </tr>
          </table>
      
  </div>
      <div style="position:absolute; margin-top:85%;">
           <paper-fab icon="account-circle" id="float_ico" elevation=5></paper-fab>
<asp:Image ID="Image4"  runat="server" ImageUrl="~/images/on.jpg" Width="250px" Height="52px"></asp:Image>
      </div>
      </paper-card>
        <paper-card id="details" elevation="5">
       
                        
                        
          <table class="auto-style4" style="border-collapse: separate; border-spacing: 4px">
            <tr>
                <td colspan="2"  style="text-align: center; font-size: large; font-style: normal; font-family: 'times New Roman', Times, serif; background-color: #66CCFF;"><asp:Label ID="Label3" runat="server" Text="Account Details" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
            </tr>
             
            <tr>
                <td class="auto-style5"><asp:Label ID="Label15" runat="server" Text="Number of Cylinder Remaining"></asp:Label></td>
                <td><asp:Label ID="Label4" runat="server" Text="NA"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style5"><asp:Label ID="Label16" runat="server" Text="Last Date Of Booking"></asp:Label></td>
                <td><asp:Label ID="Label5" runat="server" Text="NA"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style5"><asp:Label ID="Label17" runat="server" Text="Subsidy Status"></asp:Label></td>
                <td><asp:Label ID="Label6" runat="server" Text="NA"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style5"><asp:Label ID="Label18" runat="server" Text="Booking Status"></asp:Label></td>
                <td><asp:Label ID="Label7" runat="server" Text="NA"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style5"><asp:Label ID="Label19" runat="server" Text="Subsidy Amount"></asp:Label></td>
                <td><asp:Label ID="Label20" runat="server" Text="NA"></asp:Label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book Cylinder" />
                </td>
            </tr>
        </table>
              <br />
            <br />
            <br />
        <div style="text-align: center">
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table class="auto-style4" style="font-size: large; border-collapse: separate; border-spacing: 10px">
                <tr>
                    <td colspan="2"  style="text-align: center; font-size: large; font-style: normal; font-family: 'times New Roman', Times, serif; background-color: #66CCFF;"><asp:Label ID="Label26" runat="server" Text="Personal Details" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
           </tr>
                <tr>
                    <td><asp:Label ID="Label21" runat="server" Text="Name"></asp:Label></td>
                    <td><asp:Label ID="Label8" runat="server" Text=""></asp:Label><br /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label9" runat="server" Text="Address"></asp:Label></td>
                    <td> <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox><br /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label22" runat="server" Text="Adhar Number"></asp:Label></td>
                    <td><asp:Label ID="Label25" runat="server" Text=""></asp:Label><br /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label23" runat="server" Text="Number Of cyclender"></asp:Label></td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem>1</asp:ListItem>
                 <asp:ListItem>2</asp:ListItem>
                 <asp:ListItem>3</asp:ListItem>
             </asp:DropDownList><br /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label24" runat="server" Text="Mobile Number"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
             
             
             
             
             
             
            </asp:Panel>
        </div>
            
     </paper-card>
        <paper-card id="promo" elevation="5">
            <br />
            for advertisment     
            
     </paper-card>
        
        <br />
        <br />
        <br />

 <paper-material id="footer" elevation=5>
     
     <div id="footer">
         
          <div style="position: relative; text-align: center; top: 26px; left: 540px; height: 52px; width: 273px;">
            <asp:Label ID="Label2" runat="server" Text="My LPG.com" Font-Size="X-Large"></asp:Label> 

           <asp:Image ID="Image1" runat="server" Height="45px" ImageUrl="~/images/gas.png" Width="50px" />

         </div>
        <p style="text-align: center" >&copy; 2016 Created By Praveen Kumar </p>
     </div>
         </div>
     </paper-material>
    
    

    
  
   <script src="main.js"></script>



    </form>
</body>
</html>
