<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="XYZ.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Customer Sign up</title>
  <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="Customer/layout/styles/register.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>

  <div id="login-box">
    <form runat="server">
  <div class="left">
    <h1><b>Sign up</b></h1>
    <img src="assets/images/logox.png" style="height:100px; width:100px; margin-left:60px;"/>
    <asp:TextBox ID="txt_userName" runat="server" type="text" class="form-control" placeholder="Username"></asp:TextBox>
    <asp:TextBox ID="txt_email" runat="server" type="text" class="form-control" placeholder="E-mail"></asp:TextBox>
    <asp:TextBox ID="txt_password" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
    <asp:TextBox ID="txt_rePassword" runat="server" type="password" class="form-control" placeholder="Retype password"></asp:TextBox>

    <div class="form-group checkbox">
        <input type="checkbox" id="terms_agree" required="required" checked=""/>
        <label for="terms_agree">I Agree with <a href="#">Terms and Conditions</a></label>
    </div>

    <asp:Button runat="server" ID="btn_sign" Text="Sign up" OnClick="btn_sign_Click"/>
  </div>

  </form>
  <div class="right">
   
  </div>
</div>

</body>
</html>
