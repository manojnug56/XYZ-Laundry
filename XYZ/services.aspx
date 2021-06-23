<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="XYZ.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">

                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Add Service</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item active">Services</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                        <!-- basic form  -->
                        <!-- ============================================================== -->
                        
                                <div class="card">
                                    <h5 class="card-header">Service Details</h5>
                                    <div class="card-body">
                                        <form method="get" runat="server">
                                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">Name</label>
                                                        <asp:TextBox ID="txt_name" runat="server" type="text" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                        
                                            </div>

                                             <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">Price</label>
                                                        <asp:TextBox ID="txt_price" runat="server" type="text" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
            
                                            </div>
                                         

                                            <br>

                                            <div class="col-sm-4 pl-0">
                                                <p class="text-right">
                                                    <asp:Button runat="server"  ID="btn_submit" Text="Submit"   type="submit" class="btn btn-space btn-primary" OnClick="btn_submit_Click"/>
                                                    <asp:Button runat="server" ID="btn_cancel" Text="Cancel"   class="btn btn-space btn-secondary" OnClick="btn_cancel_Click"/>
                                                </p>
                                            </div>
                                
                                        </form>
                                    </div>
                                    
                                </div>
                        <!-- ============================================================== -->
                        <!-- end basic form  -->
                        <!-- ============================================================== -->
            </div>
          
        </div>
    </div>

    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
</asp:Content>
