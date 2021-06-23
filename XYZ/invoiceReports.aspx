﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoiceReports.aspx.cs" Inherits="XYZ.invoiceReports" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <script type="text/javascript" src="crystalreportviewers13/js/crviewer/crv.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            <CR:CrystalReportSource runat="server" ID="CrystalReportSource1" Visible="true"/>
        </div>
    </form>
</body>
</html>
