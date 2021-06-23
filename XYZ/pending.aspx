<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="pending.aspx.cs" Inherits="XYZ.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                            <h2 class="pageheader-title">Orders</h2>
                            
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Reports</a></li>
                                        <li class="breadcrumb-item active">Pending Orders</li>
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
                             <div class="col-sm-12">
                                    <div class="card">
                                        <h5 class="card-header">Order Details</h5>
                                        <div class="card-body">
                                                         <div class="form-group">
                                                            <b><asp:Label ID="Label1" runat="server" Text="From Date - "></asp:Label>
                                                             <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/assets/images/unnamed (1).png" OnClick="ImageButton1_Click"  />
                                                             </b>
                                                             <asp:Calendar ID="cal_fromDate" runat="server"  ReadOnly="true" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="cal_fromDate_SelectionChanged">
                                                                 <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                                 <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                                 <OtherMonthDayStyle ForeColor="#999999" />
                                                                 <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                                 <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                                 <TodayDayStyle BackColor="#CCCCCC" />
                                                             </asp:Calendar>
                                                             <asp:TextBox ID="txt_fromDate" runat="server" class="form-control" ></asp:TextBox>
                                                        </div>

                                                        <div class="form-group">
                                                            <b><asp:Label ID="Label2" runat="server" Text="To Date - "></asp:Label>
                                                             <asp:ImageButton ID="ImageButton2" runat="server" Height="16px" ImageUrl="~/assets/images/unnamed (1).png" OnClick="ImageButton2_Click"  />
                                                             </b>
                                                            <asp:Calendar ID="cal_toDate" runat="server"  BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="cal_toDate_SelectionChanged">
                                                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                                <TodayDayStyle BackColor="#CCCCCC" />
                                                            </asp:Calendar>
                                                            <asp:TextBox ID="txt_toDate" runat="server" class="form-control" ></asp:TextBox>
                                                        </div>
              
                                                <br>

                                                    <p class="text-right">
                                                        <asp:Button runat="server"  ID="btn_view" Text="View"  type="submit" class="btn btn-space btn-primary" OnClick="btn_view_Click" />
                                                    </p>
                                           
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
