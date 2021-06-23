<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="traceOrder.aspx.cs" Inherits="XYZ.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
			.my-custom-scrollbar
				{
					position: relative;
					height: 313px;
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

    <div class="dashboard-main-wrapper">
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">

                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Trace</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item active">Trace Order</li>
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
                                        <h5 class="card-header">Order Status</h5>
                                        <div class="card-body">
                                                       
                                                        <div class="form-group">
                                                            <label for="txt_oNum" class="col-form-label">Order Number</label>
                                                            <asp:TextBox ID="txt_oNum" runat="server" type="text" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                            
                                                        <div class="form-group">
                                                            <label for="txt_userId" class="col-form-label">User ID</label>
                                                            <asp:TextBox ID="txt_userId" runat="server" type="text" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                             
                                                        <div class="form-group">
                                                            <label for="txt_status" class="col-form-label">Status</label>
                                                            <asp:TextBox ID="txt_status" runat="server" type="text" class="form-control" ReadOnly="true"></asp:TextBox>
                                                        </div> 

                                                <br>

                                                    <p class="text-right">
                                                        <asp:Button runat="server"  ID="btn_status" Text="Mark As Finished"  type="submit" class="btn btn-space btn-primary" OnClick="btn_status_Click" />
                                                    </p>
                                           
                                        </div>
                                    
                                     </div>
                             </div>

                             <div class="col-sm-6">
                                    <div class="card">
                                        <h5 class="card-header">Order Details</h5>
                                        <div class="card-body">
                                         <div class="table-wrapper-scroll-y my-custom-scrollbar">

                                             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                                                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                 <Columns>
                                                     <asp:BoundField DataField="id" HeaderText="Order Number" />
                                                     <asp:BoundField DataField="user_id" HeaderText="Customer Id" />
                                                     <asp:BoundField DataField="status" HeaderText="Status" />
                                                     <asp:BoundField DataField="order_date" HeaderText="Date" />
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

</asp:Content>
