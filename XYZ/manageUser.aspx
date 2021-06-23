<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="manageUser.aspx.cs" Inherits="XYZ.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
			.my-custom-scrollbar
				{
					position: relative;
					height: 455px;
					width: 100%;
					overflow: auto;
				}
			.table-wrapper-scroll-y 
				{
					display: block;
				}
			
		</style>

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
                            <h2 class="pageheader-title">Manage User</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">User Accounts</a></li>
                                        <li class="breadcrumb-item active">Manage User</li>
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
                        <form method="get" runat="server">
                       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                         <div class="row">
                             <div class="col-sm-6">
                                    <div class="card">
                                        <h5 class="card-header">User Details</h5>
                                        <div class="card-body">
                                                         <div class="form-group">
                                                            <b><asp:Label ID="Label1" runat="server" Text="User ID - "></asp:Label></b>
                                                             <b><asp:Label ID="lbl_uId" runat="server" Text=""></asp:Label></b>
                                                        </div>

                                                        <div class="form-group">
                                                            <b><asp:Label ID="Label2" runat="server" Text="User Type - "></asp:Label></b>
                                                             <b><asp:Label ID="lbl_uType" runat="server" Text=""></asp:Label></b>
                                                        </div>

                                                        <div class="form-group">
                                                            <asp:TextBox ID="txt_uName" runat="server" type="text" class="form-control" placeholder="Username"></asp:TextBox>
                                                        </div>
                                             
                                                        <div class="form-group">
                                                            <asp:TextBox ID="txt_eMail" runat="server" type="text" class="form-control" placeholder="E-Mail"></asp:TextBox>
                                                        </div>
                                            
                                                        <div class="form-group">
                                                            <asp:TextBox ID="txt_nic" runat="server" type="text" class="form-control" placeholder="NIC"></asp:TextBox>
                                                        </div>
                                            
                                                        <div class="form-group">
                                                            <asp:TextBox ID="txt_adress" runat="server" type="text" class="form-control" placeholder="Adress"></asp:TextBox>
                                                        </div>
                                            
                                                        <div class="form-group">
                                                            <asp:TextBox ID="txt_contact" runat="server" type="text" class="form-control" placeholder="Contact"></asp:TextBox>
                                                        </div>
                                            
                                                        <div class="form-group">
                                                            <asp:TextBox ID="txt_password" runat="server" type="password" class="form-control" placeholder="New Password"></asp:TextBox>
                                                        </div>

                                                        <div class="form-group">
                                                            <asp:TextBox ID="txt_rePassword" runat="server" type="password" class="form-control" placeholder="Re-Enter Password"></asp:TextBox>
                                                        </div>
                                            
                        
                                                <br>

                                                    <p class="text-right">
                                                        <asp:Button runat="server"  ID="btn_update" Text="Update"  type="submit" class="btn btn-space btn-primary" OnClick="btn_update_Click" />
                                                        <asp:Button runat="server" ID="btn_delete" Text="Delete"  class="btn btn-space btn-secondary" OnClick="btn_delete_Click" />
                                                    </p>
                                           
                                        </div>
                                    
                                     </div>
                             </div>

                             <div class="col-sm-6">
                                    <div class="card">
                                        <h5 class="card-header">User Table</h5>
                                        <div class="card-body">
                                        <div class="table-wrapper-scroll-y my-custom-scrollbar">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:BoundField DataField="id" HeaderText="User ID" />
                                                    <asp:BoundField DataField="u_name" HeaderText="User Name" />
                                                    <asp:BoundField DataField="user_type" HeaderText="User Type" />
                                                    <asp:BoundField DataField="reg_date" HeaderText="Date" />
                                                    <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Select" />
                                                </Columns>
                                                <EditRowStyle BackColor="#999999" />
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                            </asp:GridView>
                                        </div>
                                        </div>
                                    
                                     </div>
                                    
                             </div>
                         </div>
                            </form>
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
