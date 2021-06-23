

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="XYZ.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css"/>
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet"/>
    <link rel="stylesheet" href="assets/libs/css/style.css"/>
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css"/>
    <style>
    html,
    body 
    {
        height: 100%;
    }

    body 
    {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>
<body>
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><a href="index.html"><img class="logo-img" src="assets/images/logox.png" alt="logo"/></a><span class="splash-description">Please enter your user information.</span></div>
            <div class="card-body">
                <form runat="server">
                    <div class="form-group">
                        <asp:TextBox ID="txt_userName" class="form-control form-control-lg" runat="server" type="text" placeholder="Use ID"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_password" class="form-control form-control-lg" runat="server" type="password" placeholder="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="custom-control custom-checkbox">
                            <input class="custom-control-input" type="checkbox"/><span class="custom-control-label">Remember Me</span>
                        </label>
                    </div>
                    <asp:Button ID="btn_login" class="btn btn-primary btn-lg btn-block" runat="server" Text="Login" OnClick="btn_login_Click" />
                </form>
            </div>
            <div class="card-footer bg-white p-0  ">
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="signUp.aspx" class="footer-link">Create An Account</a></div>
                <div class="card-footer-item card-footer-item-bordered">
                    <a href="#" class="footer-link">Forgot Password</a>
                </div>
            </div>
        </div>
    </div>
  
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>
</html>
