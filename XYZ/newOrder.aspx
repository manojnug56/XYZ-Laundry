<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="newOrder.aspx.cs" Inherits="XYZ.newServices" %>
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
                            <h2 class="pageheader-title">New Order</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Orders</a></li>
                                        <li class="breadcrumb-item active">New Order</li>
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
                                    <h5 class="card-header">Order Details</h5>
                                     <form method="get" runat="server">
                       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                    <div class="card-body">
                                        
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">Items Quantity</label>
                                                        <asp:TextBox ID="txt_items" runat="server" type="text" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                        
                                            </div> 
                                            
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">User ID</label>
                                                         <asp:DropDownList ID="drp_userId" runat="server" class="form-control" DataTextField="name">
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                        
                                            </div>

                                             <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">Weight (Kg)</label>
                                                        <asp:TextBox ID="txt_weight" runat="server" type="text" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
            
                                            </div>
                                             <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="inputText3" class="col-form-label">Service</label>
                                                        <asp:DropDownList ID="drp_serviceType" runat="server" class="form-control" DataTextField="name">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_xyzConnectionString %>" SelectCommand="SELECT [name] FROM [tbl_services]"></asp:SqlDataSource>
                                                    </div>
                                                </div>
                                            
                                            </div>

                                            <br>

                                            <div class="col-sm-4 pl-0">
                                                <p class="text-right">
                                                    <asp:Button runat="server"  ID="btn_submit" Text="Submit" OnClick="btn_submit_Click"  type="submit" class="btn btn-space btn-primary"/>
                                                    <asp:Button runat="server" ID="btn_cancel" Text="Cancel" OnClick="btn_cancel_Click"  class="btn btn-space btn-secondary"/>
                                                </p>
                                            </div>
                                
                                       
                                    </div>
                                    </form>
                                    
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


