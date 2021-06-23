<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="XYZ.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
			.my-custom-scrollbar
				{
					position: relative;
					height: 460px;
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
                            <h2 class="pageheader-title">Payments</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item active">Payments</li>
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
                                        <h5 class="card-header">Payment Details</h5>
                                        <div class="card-body">
                                                         <div class="form-group">
                                                            <b><asp:Label ID="Label1" runat="server" Text="Customer ID - "></asp:Label></b>
                                                             <b><asp:Label ID="lbl_cusId" runat="server" Text=""></asp:Label></b>
                                                        </div> 
                                            
                                                        <div class="form-group">
                                                            <b><asp:Label ID="Label2" runat="server" Text="Oder Number - "></asp:Label></b>
                                                             <b><asp:Label ID="lbl_odrId" runat="server" Text=""></asp:Label></b>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="txt_qnant" class="col-form-label">Items Quantity</label>
                                                            <asp:TextBox ID="txt_qaunt" runat="server" type="text" class="form-control"></asp:TextBox>
                                                        </div>
                                            
                                                        <div class="form-group">
                                                            <label for="txt_qnant" class="col-form-label">Cost Per Item</label>
                                                            <asp:TextBox ID="txt_cost" runat="server" type="text" class="form-control" ></asp:TextBox>
                                                        </div>
                                             
                                                        <div class="form-group">
                                                            <label for="inputText3" class="col-form-label">Service</label>
                                                            <asp:TextBox ID="txt_service" runat="server" type="text" class="form-control"></asp:TextBox>
                                                        </div> 

                                                        <div class="form-group">
                                                            <label for="inputText3" class="col-form-label">Amount</label>
                                                            <asp:TextBox ID="txt_amount" runat="server" type="text" class="form-control" ></asp:TextBox>
                                                        </div>                                     
                                                <br>

                                                    <p class="text-right">
                                                        <asp:Button runat="server"  ID="btn_cancel" Text="Cancel"  type="submit" class="btn btn-space btn-primary" />
                                                        <asp:Button runat="server" ID="btn_cal" Text="Calculate"  class="btn btn-space btn-dark" OnClick="btn_cal_Click" />
                                                        <asp:Button runat="server" ID="btn_pay" Text="Pay"  class="btn btn-space btn-success" OnClick="btn_pay_Click"/>
                                                    </p>
                                           
                                        </div>
                                    
                                     </div>
                             </div>

                             <div class="col-sm-6">
                                    <div class="card">
                                        <h5 class="card-header">Order Table</h5>
                                        <div class="card-body">
                                         <div class="table-wrapper-scroll-y my-custom-scrollbar">

                                             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                                                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                 <Columns>
                                                     <asp:BoundField DataField="id" HeaderText="Order Number" />
                                                     <asp:BoundField DataField="user_id" HeaderText="Customer Id" />
                                                     <asp:BoundField DataField="i_quant" HeaderText="Quantity" />
                                                     <asp:BoundField DataField="price" HeaderText="Price" />
                                                     <asp:BoundField DataField="name" HeaderText="Service" />
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
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
</asp:Content>
