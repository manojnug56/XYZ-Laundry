<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="userAccount.aspx.cs" Inherits="XYZ.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Customer Sign up</title>
  <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="Customer/layout/styles/register.css" rel="stylesheet" type="text/css" media="all"/>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form method="get" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="login-box" style="margin-right:240px; margin-top:110px;">

  <div class="left">
    <h1><b>Sign up</b></h1><br/>
    <asp:Label ID="Label1" runat="server" Text="User Type"></asp:Label>
    <asp:DropDownList ID="drp_uType" runat="server"  >
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>Customer</asp:ListItem>
      </asp:DropDownList><br><br>
    <asp:TextBox ID="txt_userName" runat="server" type="text" class="form-control" placeholder="Username"></asp:TextBox>
    <asp:TextBox ID="txt_email" runat="server" type="text" class="form-control" placeholder="E-mail"></asp:TextBox>
    <asp:TextBox ID="txt_password" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
    <asp:TextBox ID="txt_rePassword" runat="server" type="password" class="form-control" placeholder="Retype password"></asp:TextBox>

    <asp:Button runat="server" ID="btn_sign" Text="Sign up" OnClick="btn_sign_Click"/>
  </div>

  
  <div class="right">
   
  </div>
</div>
         </form>

</asp:Content>
