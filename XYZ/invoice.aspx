<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="invoice.aspx.cs" Inherits="XYZ.WebForm8" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Customer Sign up</title>
  <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<link href="Customer/layout/styles/register.css" rel="stylesheet" type="text/css" media="all"/>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 

    <div id="login-box" style="margin-right:230px; margin-top:110px;">
    <form runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  <div class="left">
     <img src="assets/images/logox.png" style="height:100px; width:100px; margin-left:60px;"/> <br/><br/><br/><br/>
    <asp:TextBox ID="txt_userId" runat="server" type="text" class="form-control" placeholder="User Id"></asp:TextBox>
   
    <asp:Button runat="server" ID="btn_sign" Text="View" OnClick="btn_sign_Click"/>
  </div>

  </form>
        <div class="right">
   
  </div>
 
</div>

</asp:Content>

